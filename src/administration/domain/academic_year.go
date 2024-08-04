package domain

import (
	"context"
	"time"
)

type AcademicYear struct {
	ID        string
	Label     string
	CreatedAt time.Time
}

type AcademicYearRepository interface {
	Create(ctx context.Context, ay *AcademicYear) error
	List(ctx context.Context) ([]AcademicYear, error)
}
