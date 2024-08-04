// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.26.0

package db

import (
	"github.com/google/uuid"
	"github.com/jackc/pgx/v5/pgtype"
)

type AcademicYear struct {
	ID        uuid.UUID
	Label     string
	CreatedAt pgtype.Timestamptz
}

type AttendanceType struct {
	ID        uuid.UUID
	Label     string
	CreatedAt pgtype.Timestamptz
	DeletedAt pgtype.Timestamptz
}

type StudentAttendance struct {
	ID               uuid.UUID
	StudentClassID   uuid.UUID
	Attend           pgtype.Bool
	AttendanceDate   pgtype.Date
	AttendanceTypeID pgtype.UUID
	CreatedAt        pgtype.Timestamptz
	UpdatedAt        pgtype.Timestamptz
	CreatedBy        pgtype.Text
	UpdatedBy        pgtype.Text
}

type StudentClass struct {
	ID               uuid.UUID
	StudentID        uuid.UUID
	ClassLabel       string
	AcademicYearID   uuid.UUID
	DeactivateReason pgtype.Text
	OwnerID          string
	CreatedAt        pgtype.Timestamptz
	DeletedAt        pgtype.Timestamptz
}
