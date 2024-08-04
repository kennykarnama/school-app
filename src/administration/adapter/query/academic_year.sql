-- name: CreateAcademicYear :one
INSERT INTO academic_year(label, created_at) VALUES($1, $2) RETURNING id;

-- name: ListAcademicYear :many
SELECT * FROM academic_year ORDER BY created_at desc;