package psql

import (
	"fmt"
	"time"

	"github.com/jackc/pgx/v5/pgtype"
)

// ToPGText converts a pointer of string
// into pgtype.Text
// if text is nil pointer then it will return
// invalid pgtype.Text
func PtrStrToPGText(text *string) pgtype.Text {
	if text == nil {
		return pgtype.Text{}
	}

	return pgtype.Text{String: *text, Valid: true}
}

// StrToPGText converts string
// to PGType.Text
func StrToPGText(text string) pgtype.Text {
	if text == "" {
		return pgtype.Text{}
	}

	return pgtype.Text{String: text, Valid: true}
}

func ToPGTime(t *time.Time) pgtype.Timestamptz {
	if t == nil {
		return pgtype.Timestamptz{}
	}

	return pgtype.Timestamptz{Time: *t, Valid: true}
}

func TimeToPGTimestampz(date time.Time) pgtype.Timestamptz {
	return pgtype.Timestamptz{Time: date, Valid: true}
}

func PGTextToStringPtr(ps pgtype.Text) *string {
	if !ps.Valid {
		return nil
	}

	return &ps.String
}

func PGTextToString(ps pgtype.Text) string {
	if !ps.Valid {
		return ""
	}

	return ps.String
}

func PGTsToTimePtr(ts pgtype.Timestamptz) *time.Time {
	if !ts.Valid {
		return nil
	}

	return &ts.Time
}

func PGTimestampzToTimestamp(t pgtype.Timestamptz) time.Time {
	return t.Time
}

func ToPGDate(format string, text string) pgtype.Date {
	normalised, err := time.Parse(format, text)
	if err == nil {
		return pgtype.Date{Time: normalised, Valid: true}
	}

	return pgtype.Date{}
}

func F64ToPGFloat8(f float64) pgtype.Float8 {
	return pgtype.Float8{
		Float64: f,
		Valid:   true,
	}
}

func F32ToPGFloat4(f float32) pgtype.Float4 {
	return pgtype.Float4{
		Float32: f,
		Valid:   true,
	}
}

func PGUUIDToStr(v pgtype.UUID, err ...error) (string, error) {
	if len(err) > 0 {
		if err[0] != nil {
			return "", fmt.Errorf("pguuidToStr err: %w", err[0])
		}
	}

	if !v.Valid {
		return "", fmt.Errorf("pguuidToStr err: invalid uuid format")
	}

	return string(v.Bytes[:]), nil
}
