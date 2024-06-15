CREATE TABLE exercise_type (
    id SERIAL PRIMARY KEY,
    exercise_type_name VARCHAR(50) NOT NULL,
    report_fields JSONB NOT NULL
);

