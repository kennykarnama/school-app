CREATE TABLE academic_year (
    id UUID primary key NOT null default gen_random_uuid(),
    label STRING NOT NULL,
    created_at TIMESTAMPTZ
);

CREATE TABLE student_class (
    id UUID primary key NOT null default gen_random_uuid(),
    student_id UUID NOT NULL,
    class_label STRING NOT NULL,
    academic_year_id UUID NOT NULL REFERENCES academic_year (id),
    deactivate_reason STRING,
    owner_id STRING NOT NULL,
    created_at TIMESTAMPTZ,
    deleted_at TIMESTAMPTZ
);

CREATE TABLE attendance_type (
    id UUID primary key NOT null default gen_random_uuid(),
    label STRING NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    deleted_at TIMESTAMPTZ
);

CREATE TABLE student_attendance (
    id UUID primary key NOT null default gen_random_uuid(),
    student_class_id UUID NOT NULL,
    attend BOOL DEFAULT FALSE,
    attendance_date DATE,
    attendance_type_id UUID REFERENCES attendance_type(id),
    created_at TIMESTAMPTZ,
    updated_at TIMESTAMPTZ,
    created_by VARCHAR(36),
    updated_by VARCHAR(36),
    UNIQUE (student_class_id, attendance_date)
);
