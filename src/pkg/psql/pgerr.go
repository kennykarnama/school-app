package psql

import (
	"errors"

	"github.com/jackc/pgerrcode"
	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgconn"
)

func PgErr(err error) (*pgconn.PgError, bool) {
	var pgErr *pgconn.PgError
	if errors.As(err, &pgErr) {
		return pgErr, true
	}

	return nil, false
}

func IsUniqueViolationErr(err error) bool {
	pgerr, ok := PgErr(err)
	if !ok {
		return false
	}

	return pgerr.Code == pgerrcode.UniqueViolation
}

func NoRowsErr(err error) bool {
	return err == pgx.ErrNoRows
}
