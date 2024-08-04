package adapter

import (
	"context"
	"errors"
	"fmt"
	"log/slog"
	"os"

	"github.com/exaring/otelpgx"
	"github.com/google/uuid"
	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgxpool"
	"github.com/jackc/pgx/v5/tracelog"
	"github.com/kennykarnama/school-app/src/administration/adapter/db"
	"github.com/kennykarnama/school-app/src/administration/domain"
	"github.com/kennykarnama/school-app/src/pkg/psql"
)

type AcademicYearRepo struct {
	pool *pgxpool.Pool
	q    *db.Queries
}

func NewAcademicYearRepo(ctx context.Context, dsn string) (*AcademicYearRepo, error) {
	// Create new pool with default config
	// * max number of connections: max(4,number of CPUs)
	// * idle timeout of 30 minutes.
	connConfig, err := pgxpool.ParseConfig(dsn)
	if err != nil {
		return nil, fmt.Errorf("failed to parse dsn config: %w", err)
	}

	slogger := slog.New(slog.NewJSONHandler(os.Stdout, nil))

	// FYI: NewLoggerAdapter: https://github.com/mcosta74/pgx-slog
	adapterLogger := psql.NewLogger(slogger)

	ms := psql.MultiQueryTracer{
		Tracers: []pgx.QueryTracer{
			// tracer: https://github.com/exaring/otelpgx
			otelpgx.NewTracer(),

			// logger
			&tracelog.TraceLog{
				Logger:   adapterLogger,
				LogLevel: tracelog.LogLevelTrace,
			},
		},
	}

	connConfig.ConnConfig.Tracer = &ms

	pool, err := pgxpool.NewWithConfig(ctx, connConfig)
	if err != nil {
		return nil, fmt.Errorf("failed to connect to database: %w", err)
	}

	queries := db.New(pool)

	return &AcademicYearRepo{
		pool: pool,
		q:    queries,
	}, nil
}

func (a *AcademicYearRepo) Create(ctx context.Context, ay *domain.AcademicYear) error {
	tx, err := a.pool.Begin(ctx)
	if err != nil {
		return fmt.Errorf("academicYear.save failed to begin transaction: %w", err)
	}

	defer func() {
		if err := tx.Rollback(ctx); err != nil && !errors.Is(err, pgx.ErrTxClosed) {
			slog.Error("academicYear.save", slog.String("err", err.Error()))
		}
	}()

	uv := uuid.MustParse(ay.ID)
	ptx := a.q.WithTx(tx)
	err = ptx.CreateAcademicYear(ctx, db.CreateAcademicYearParams{
		ID:        uv,
		Label:     ay.Label,
		CreatedAt: psql.TimeToPGTimestampz(ay.CreatedAt),
	})
	if err != nil {
		return fmt.Errorf("academicYear.save err: %w", err)
	}

	err = tx.Commit(ctx)
	if err != nil {
		return fmt.Errorf("academicYear.save err: %w", err)
	}

	return nil
}

func (a *AcademicYearRepo) List(ctx context.Context) ([]domain.AcademicYear, error) {
	tx, err := a.pool.Begin(ctx)
	if err != nil {
		return nil, fmt.Errorf("academicYear.list failed to begin transaction: %w", err)
	}

	defer func() {
		if err := tx.Rollback(ctx); err != nil && !errors.Is(err, pgx.ErrTxClosed) {
			slog.Error("academicYear.list", slog.String("err", err.Error()))
		}
	}()

	ptx := a.q.WithTx(tx)

	dbItems, err := ptx.ListAcademicYear(ctx)
	if err != nil {
		return nil, fmt.Errorf("academicYear.list err: %w", err)
	}

	academicYears := []domain.AcademicYear{}

	for _, item := range dbItems {

		academicYears = append(academicYears, domain.AcademicYear{
			ID:        item.ID.String(),
			Label:     item.Label,
			CreatedAt: psql.PGTimestampzToTimestamp(item.CreatedAt),
		})
	}

	return academicYears, nil
}
