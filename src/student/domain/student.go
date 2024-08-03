package domain

import "github.com/kennykarnama/school-app/src/pkg/auditable"

type Gender string

const (
	MaleGender   Gender = "MALE"
	FemaleGender Gender = "FEMALE"
)

type Student struct {
	ID            string
	Name          string
	AlternativeID string
	DOB           string
	Gender        Gender
	Graduated     bool
	auditable.MinimalAuditFields
}
