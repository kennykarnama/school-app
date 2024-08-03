package domain

import (
	"context"

	"github.com/kennykarnama/school-app/src/pkg/auditable"
	"github.com/kennykarnama/school-app/src/pkg/enums"
)

type Teacher struct {
	Id            string
	AlternativeId string
	Name          string
	Gender        enums.Gender
	Password      string
	auditable.MinimalAuditFields
}

type TeacherRepository interface {
	Create(ctx context.Context, t *Teacher) error
	FindByAltID(ctx context.Context, altID string) (*Teacher, error)
}
