CREATE TYPE teacher_gender_enum AS ENUM ('MALE', 'FEMALE');

CREATE TABLE IF NOT EXISTS teacher (
    id uuid primary key NOT null default gen_random_uuid(),
    alternative_id VARCHAR(36) NOT NULL,
    name STRING NOT NULL,
    gender teacher_gender_enum,
    password STRING NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    created_by VARCHAR(36),
    updated_at TIMESTAMPTZ NOT NULL,
    updated_by VARCHAR(36),
    deleted_at TIMESTAMPTZ,
    deleted_by VARCHAR(36)
);