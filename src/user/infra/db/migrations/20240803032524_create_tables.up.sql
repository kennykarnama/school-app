CREATE TABLE user_detail (
    id UUID primary key NOT null default gen_random_uuid(),
    username VARCHAR(512) NOT NULL,
    email VARCHAR(1024),
    password TEXT NOT NULL,
    created_at TIMESTAMPTZ,
    updated_at TIMESTAMPTZ,
    deleted_at TIMESTAMPTZ,
    created_by VARCHAR(36),
    updated_by VARCHAR(36),
    deleted_by VARCHAR(36)
);

CREATE TABLE user_session (
    id UUID primary key NOT null default gen_random_uuid(),
    user_id uuid NOT NULL,
    token STRING NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    expired_at TIMESTAMPTZ
);
