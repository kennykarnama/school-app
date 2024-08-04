-- name: CreateAcademicYear :exec
INSERT INTO academic_year(id, label, created_at) VALUES($1, $2, $3);

-- name: ListAcademicYear :many
SELECT * FROM academic_year ORDER BY created_at desc;