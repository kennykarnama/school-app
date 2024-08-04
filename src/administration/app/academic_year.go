package app

import (
	"context"
	"time"

	"github.com/google/uuid"
	"github.com/kennykarnama/school-app/src/administration/domain"
)

type AcademicYearManager struct {
	repo domain.AcademicYearRepository
}

func NewAcademicYearManager(repo domain.AcademicYearRepository) *AcademicYearManager {
	return &AcademicYearManager{
		repo: repo,
	}
}

type CreateReq struct {
	Label string
}

type CreateResp struct {
	AcademicYear domain.AcademicYear
}

func (a *AcademicYearManager) Create(ctx context.Context, req CreateReq) (*CreateResp, error) {
	ay := &domain.AcademicYear{
		ID:        uuid.New().String(),
		Label:     req.Label,
		CreatedAt: time.Now().UTC(),
	}

	err := a.repo.Create(ctx, ay)
	if err != nil {
		return nil, err
	}

	return &CreateResp{
		AcademicYear: *ay,
	}, nil
}

type ListReq struct{}

type ListResp struct {
	AcademicYears []domain.AcademicYear
}

func (a *AcademicYearManager) List(ctx context.Context, req ListReq) (*ListResp, error) {
	items, err := a.repo.List(ctx)
	if err != nil {
		return nil, err
	}

	return &ListResp{
		AcademicYears: items,
	}, nil
}
