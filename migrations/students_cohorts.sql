-- COHORT
-- id: A unique identifier
-- name: The name of the cohort
-- start_date: The cohorts' start date
-- end_date: The cohorts' end date

-- STUDENT
-- id: A unique identifier
-- name: The full name of the student
-- email: The students' email address
-- phone: The students' phone number
-- github: The students' github profile url
-- start_date: The students' start date of the Bootcamp
-- end_date: The students' end date of the Bootcamp
-- cohort_id: The id of the cohort that the student is enrolled in

CREATE TABLE cohorts
(
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(255) NOT NULL,
    start_date DATE,
    end_date DATE
);

CREATE TABLE students
(
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    phone VARCHAR(32),
    github VARCHAR(255),
    start_date DATE,
    end_date DATE,
    cohort_id INTEGER REFERENCES cohorts(id) ON DELETE CASCADE
);

-- CREATE TABLE teachers
-- (
--     id SERIAL PRIMARY KEY NOT NULL,
--     name VARCHAR(255) NOT NULL,
--     is_active BOOLEAN DEFAULT TRUE,
--     start_date DATE,
--     end_date DATE
-- );

-- CREATE TABLE assistance_requests
-- (
--     id SERIAL PRIMARY KEY NOT NULL,
--     student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
--     teacher_id INTEGER REFERENCES teachers(id) ON DELETE CASCADE,
--     assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE,
--     created_at TIMESTAMP,
--     started_at TIMESTAMP,
--     completed_at TIMESTAMP,
--     student_feedback TEXT,
--     teacher_feedback TEXT
-- );