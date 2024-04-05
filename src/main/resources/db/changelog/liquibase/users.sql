-- liquibase formatted sql

-- changeset: Created_table_users
CREATE TABLE users
(
    id         SERIAL                NOT NULL,
    email      CHARACTER VARYING(32) NOT NULL
        CONSTRAINT max_min_email_lenght CHECK (char_length(email) >= 4 and char_length(email) <= 32),
    first_name CHARACTER VARYING(16)
        CONSTRAINT max_min_first_name_lenght CHECK (char_length(first_name) >= 2 and char_length(first_name) <= 16),
    last_name  CHARACTER VARYING(16)
        CONSTRAINT max_min_last_name_lenght CHECK (char_length(last_name) >= 2 and char_length(last_name) <= 16),
    role       VARCHAR(255)          NOT NULL,
    CONSTRAINT user_pkey PRIMARY KEY (id)
);
