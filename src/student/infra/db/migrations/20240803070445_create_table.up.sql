CREATE TYPE student_gender_enum AS ENUM ('MALE', 'FEMALE');
CREATE TYPE student_religion_enum AS ENUM ('ISLAM', 'PROTESTAN', 'KRISTEN', 'HINDU', 'BUDDHA', 'KONGHUCU');
CREATE TYPE student_parents_status AS ENUM ('AYAH_KANDUNG', 'IBU_KANDUNG', 'WALI');


CREATE TABLE IF NOT EXISTS student (
    id uuid primary key NOT null default gen_random_uuid(),
    alternative_id VARCHAR(36) NOT NULL,
    name STRING NOT NULL,
    gender student_gender_enum,
    religion student_religion_enum,
    child_number INT,
    dob DATE NOT NULL,
    pob TEXT NOT NULL,
    profile_picture TEXT,
    created_at TIMESTAMPTZ,
    created_by VARCHAR(36),
    updated_at TIMESTAMPTZ,
    updated_by VARCHAR(36),
    deleted_at TIMESTAMPTZ,
    deleted_by VARCHAR(36)
);

CREATE TABLE IF NOT EXISTS student_parents (
    id uuid primary key NOT null default gen_random_uuid(),
    student_id uuid REFERENCES student (id),
    name STRING NOT NULL,
    gender student_gender_enum,
    occupancy TEXT,
    status student_parents_status,
    address TEXT,
    phone_number TEXT,
    created_at TIMESTAMPTZ,
    created_by VARCHAR(36),
    updated_at TIMESTAMPTZ,
    updated_by VARCHAR(36),
    deleted_at TIMESTAMPTZ,
    deleted_by VARCHAR(36)
);