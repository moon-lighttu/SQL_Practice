CREATE TABLE job_applied(
    job_id INT, 
    application_sent_date DATE, 
    cutomer_resume BOOLEAN, 
    resume_file_name VARCHAR(255), 
    cover_letter_sent BOOLEAN, 
    cover_letter_file_name VARCHAR(255), 
    status VARCHAR(50)
);

INSERT INTO job_applied(
    job_id, 
    application_sent_date, 
    cutomer_resume, 
    resume_file_name, 
    cover_letter_sent, 
    cover_letter_file_name, 
    status
)
VALUES ( 1, 
    '2023-01-01', 
    TRUE, 
    'resume.pdf', 
    TRUE, 
    'cover_letter.pdf', 
    'submitted'
), (
    2, 
    '2023-01-02', 
    FALSE, 
    'resume.pdf', 
    TRUE, 
    'cover_letter.pdf', 
    'submitted'
), (
    3, 
    '2023-01-03', 
    TRUE, 
    'resume.pdf', 
    FALSE, 
    'cover_letter.pdf', 
    'submitted'
), (
    4, 
    '2023-01-04', 
    TRUE, 
    'resume.pdf', 
    TRUE, 
    'cover_letter.pdf', 
    'submitted'
), (
    5, 
    '2023-01-05', 
    TRUE, 
    'resume.pdf', 
    FALSE, 
    'cover_letter.pdf', 
    'rejected'
), (
    6, 
    '2023-01-06', 
    FALSE, 
    'resume.pdf', 
    TRUE, 
    'cover_letter.pdf', 
    'rejected'
), (
    7, 
    '2023-01-07', 
    TRUE, 
    NULL, 
    TRUE, 
    'cover_letter.pdf', 
    'submitted'
), (
    8, 
    '2023-01-08', 
    TRUE, 
    'resume.pdf', 
    TRUE, 
    NULL, 
    'submitted'
), (
    9, 
    '2023-01-09', 
    TRUE, 
    'resume.pdf', 
    FALSE, 
    'cover_letter.pdf', 
    'rejected'
), (
    10, 
    '2023-01-10', 
    TRUE, 
    NULL, 
    TRUE, 
    'cover_letter.pdf', 
    'submitted'
); 

SELECT * FROM job_applied 

CREATE TABLE job_applied(
    job_id INT, 
    application_sent_date DATE, 
    cutomer_resume BOOLEAN, 
    resume_file_name VARCHAR(255), 
    cover_letter_sent BOOLEAN, 
    cover_letter_file_name VARCHAR(255), 
    status VARCHAR(50)
);

INSERT INTO job_applied (
    job_id, 
    application_sent_date, 
    cutomer_resume, 
    resume_file_name, 
    cover_letter_sent, 
    cover_letter_file_name, 
    status

)
VALUES(
    1, 
'2023-01-11', 
TRUE, 
'resume_01.pdf', 
TRUE, 
'cover_letter_01.pdf', 
'submitted' 
), (
    2, 
    '2023-01-12', 
    FALSE, 
    'resume_02.pdf', 
    FALSE, 
    NULL, 
    'interview scheduled' 
), (
    3, 
    '2023-01-13', 
    TRUE, 
    'resume_03.pdf', 
    TRUE, 
    'cover_letter_03.pdf', 
    'ghosted' 
), (
    4, 
    '2023-01-14', 
    TRUE, 
    'resume_04.pdf', 
    FALSE, 
    NULL, 
    'submitted' 
), (
    5, 
    '2023-01-15', 
    FALSE, 
    'resume_05.pdf', 
    TRUE, 
    'cover_letter_05.pdf', 
    'rejected'
);

SELECT * FROM job_applied;

ALTER TABLE job_applied 
ADD contact VARCHAR(50);

UPDATE job_applied
SET contact = 'Erlich Bachman' 
WHERE job_id = 1;

UPDATE job_applied
SET contact = 'Dinesh Chugtai' 
WHERE job_id = 2;

UPDATE job_applied
SET contact = 'Bertram Gilfoyle' 
WHERE job_id = 3;

UPDATE job_applied
SET contact = 'Jian Yang' 
WHERE job_id = 4;

UPDATE job_applied
SET contact = 'Big Head' 
WHERE job_id = 5; 

SELECT * FROM job_applied

ALTER TABLE job_applied 
RENAME COLUMN contact TO contact_name;

SELECT * FROM job_applied; 

ALTER TABLE job_applied 
ALTER COLUMN contact_name TYPE TEXT;

ALTER TABLE job_applied
DROP COLUMN contact_name; 

DROP TABLE job_applied;
