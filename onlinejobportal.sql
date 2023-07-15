-- Create the users table
CREATE TABLE users (
  ids NUMBER PRIMARY KEY,
  user_type_name VARCHAR2(20)
);
--drop table users;
--drop table user_account ;
--
--drop table seeker_profile;
--
--drop table  education_detail;
--
--drop table experience_detail;
--drop table skill_set;
--drop table seeker_skill ;
--drop table business_stream;
--drop table company ;
--drop table job_type;
--drop table job_application_status;
--drop table job_post ;
--drop table job_post_activity ;
--drop table job_post_skill_set;


INSERT INTO users (ids, user_type_name)
VALUES(1, 'seeker');
  INSERT INTO users (ids, user_type_name)
VALUES(2, 'employer');
    

-- Create the user_account table
CREATE TABLE user_account (
  ids NUMBER PRIMARY KEY,
  user_type_id NUMBER,
  email VARCHAR2(255),
  passwords VARCHAR2(100),
  date_of_birth DATE,
  gender CHAR(1),
  contact_number NUMBER(10),
  FOREIGN KEY (user_type_id) REFERENCES users(ids)
);

INSERT INTO user_account (ids, user_type_id, email, passwords, date_of_birth, gender, contact_number)
VALUES
  (1, 1, 'email1@example.com', 'password1', TO_DATE('1990-01-01', 'YYYY-MM-DD'), 'M', 1234567890);
  INSERT INTO user_account (ids, user_type_id, email, passwords, date_of_birth, gender, contact_number)
VALUES(2, 2, 'email2@example.com', 'password2', TO_DATE('1991-02-02', 'YYYY-MM-DD'), 'F', 2345678901);
  INSERT INTO user_account (ids, user_type_id, email, passwords, date_of_birth, gender, contact_number)
VALUES(3, 1, 'email3@example.com', 'password3', TO_DATE('1992-03-03', 'YYYY-MM-DD'), 'M', 3456789012);
  INSERT INTO user_account (ids, user_type_id, email, passwords, date_of_birth, gender, contact_number)
VALUES(4, 2, 'email4@example.com', 'password4', TO_DATE('1993-04-04', 'YYYY-MM-DD'), 'F', 4567890123);
  INSERT INTO user_account (ids, user_type_id, email, passwords, date_of_birth, gender, contact_number)
VALUES(5, 1, 'email5@example.com', 'password5', TO_DATE('1994-05-05', 'YYYY-MM-DD'), 'M', 5678901234);
  INSERT INTO user_account (ids, user_type_id, email, passwords, date_of_birth, gender, contact_number)
VALUES(6, 2, 'email6@example.com', 'password6', TO_DATE('1995-06-06', 'YYYY-MM-DD'), 'F', 6789012345);
  INSERT INTO user_account (ids, user_type_id, email, passwords, date_of_birth, gender, contact_number)
VALUES(7, 1, 'email7@example.com', 'password7', TO_DATE('1996-07-07', 'YYYY-MM-DD'), 'M', 7890123456);
  INSERT INTO user_account (ids, user_type_id, email, passwords, date_of_birth, gender, contact_number)
VALUES(8, 2, 'email8@example.com', 'password8', TO_DATE('1997-08-08', 'YYYY-MM-DD'), 'F', 8901234567);
  INSERT INTO user_account (ids, user_type_id, email, passwords, date_of_birth, gender, contact_number)
VALUES(9, 1, 'email9@example.com', 'password9', TO_DATE('1998-09-09', 'YYYY-MM-DD'), 'M', 9012345678);
  INSERT INTO user_account (ids, user_type_id, email, passwords, date_of_birth, gender, contact_number)
VALUES(10, 2, 'email10@example.com', 'password10', TO_DATE('1999-10-10', 'YYYY-MM-DD'), 'F', 1234567890);
  
-- Create the seeker_profile table
CREATE TABLE seeker_profile (
  user_account_id NUMBER PRIMARY KEY,
  first_name VARCHAR2(50),
  last_name VARCHAR2(50),
  salary NUMBER
);

INSERT INTO seeker_profile (user_account_id, first_name, last_name, salary)
VALUES
  (1, 'John', 'Doe', 50000);
  INSERT INTO seeker_profile (user_account_id, first_name, last_name, salary)
VALUES(2, 'Jane', 'Smith', 60000);
  INSERT INTO seeker_profile (user_account_id, first_name, last_name, salary)
VALUES(3, 'Michael', 'Johnson', 70000);
  INSERT INTO seeker_profile (user_account_id, first_name, last_name, salary)
VALUES(4, 'Emily', 'Brown', 55000);
  INSERT INTO seeker_profile (user_account_id, first_name, last_name, salary)
VALUES(5, 'William', 'Davis', 65000);
  INSERT INTO seeker_profile (user_account_id, first_name, last_name, salary)
VALUES(6, 'Olivia', 'Miller', 75000);
  INSERT INTO seeker_profile (user_account_id, first_name, last_name, salary)
VALUES(7, 'James', 'Wilson', 52000);
  INSERT INTO seeker_profile (user_account_id, first_name, last_name, salary)
VALUES(8, 'Sophia', 'Jones', 62000);
  INSERT INTO seeker_profile (user_account_id, first_name, last_name, salary)
VALUES(9, 'Benjamin', 'Taylor', 72000);
  INSERT INTO seeker_profile (user_account_id, first_name, last_name, salary)
VALUES(10, 'Isabella', 'Anderson', 54000);
  
-- Create the education_detail table
CREATE TABLE education_detail (
  user_account_id NUMBER,
  degree_name VARCHAR2(50),
  university_name VARCHAR2(50),
  starting_date DATE,
  completion_date DATE,
  percentage NUMBER,
  cgpa NUMBER,
  PRIMARY KEY (user_account_id, degree_name),
  FOREIGN KEY (user_account_id) REFERENCES user_account(ids)
);

INSERT INTO education_detail (user_account_id, degree_name, university_name, starting_date, completion_date, percentage, cgpa)
VALUES
  (1, 'Bachelor of Science', 'ABC University', TO_DATE('2010-09-01', 'YYYY-MM-DD'), TO_DATE('2014-05-31', 'YYYY-MM-DD'), 80.5, 3.6);
  INSERT INTO education_detail (user_account_id, degree_name, university_name, starting_date, completion_date, percentage, cgpa)
VALUES(2, 'Bachelor of Arts', 'XYZ University', TO_DATE('2011-08-01', 'YYYY-MM-DD'), TO_DATE('2015-06-30', 'YYYY-MM-DD'), 85.2, 3.8);
  INSERT INTO education_detail (user_account_id, degree_name, university_name, starting_date, completion_date, percentage, cgpa)
VALUES(3, 'Bachelor of Engineering', 'DEF University', TO_DATE('2012-07-01', 'YYYY-MM-DD'), TO_DATE('2016-07-15', 'YYYY-MM-DD'), 75.0, 3.4);
  INSERT INTO education_detail (user_account_id, degree_name, university_name, starting_date, completion_date, percentage, cgpa)
VALUES(4, 'Bachelor of Commerce', 'PQR University', TO_DATE('2013-09-01', 'YYYY-MM-DD'), TO_DATE('2017-04-30', 'YYYY-MM-DD'), 78.9, 3.5);
  INSERT INTO education_detail (user_account_id, degree_name, university_name, starting_date, completion_date, percentage, cgpa)
VALUES(5, 'Bachelor of Technology', 'MNO University', TO_DATE('2014-07-01', 'YYYY-MM-DD'), TO_DATE('2018-05-31', 'YYYY-MM-DD'), 82.3, 3.7);
  INSERT INTO education_detail (user_account_id, degree_name, university_name, starting_date, completion_date, percentage, cgpa)
VALUES(6, 'Bachelor of Science', 'ABC University', TO_DATE('2015-08-01', 'YYYY-MM-DD'), TO_DATE('2019-06-30', 'YYYY-MM-DD'), 87.6, 3.9);
  INSERT INTO education_detail (user_account_id, degree_name, university_name, starting_date, completion_date, percentage, cgpa)
VALUES(7, 'Bachelor of Arts', 'XYZ University', TO_DATE('2016-09-01', 'YYYY-MM-DD'), TO_DATE('2020-05-31', 'YYYY-MM-DD'), 79.8, 3.6);
  INSERT INTO education_detail (user_account_id, degree_name, university_name, starting_date, completion_date, percentage, cgpa)
VALUES(8, 'Bachelor of Engineering', 'DEF University', TO_DATE('2017-08-01', 'YYYY-MM-DD'), TO_DATE('2021-06-30', 'YYYY-MM-DD'), 83.2, 3.8);
  INSERT INTO education_detail (user_account_id, degree_name, university_name, starting_date, completion_date, percentage, cgpa)
VALUES(9, 'Bachelor of Commerce', 'PQR University', TO_DATE('2018-07-01', 'YYYY-MM-DD'), TO_DATE('2022-07-15', 'YYYY-MM-DD'), 76.5, 3.3);
  INSERT INTO education_detail (user_account_id, degree_name, university_name, starting_date, completion_date, percentage, cgpa)
VALUES(10, 'Bachelor of Technology', 'MNO University', TO_DATE('2019-09-01', 'YYYY-MM-DD'), TO_DATE('2023-04-30', 'YYYY-MM-DD'), 81.7, 3.6);


-- Create the experience_detail table
CREATE TABLE experience_detail (
  user_account_id NUMBER,
  current_job CHAR(1),
  start_date DATE,
  end_date DATE,
  job_title VARCHAR2(50),
  company VARCHAR2(100),
  job_location VARCHAR2(50),
  descriptions VARCHAR2(4000),
  PRIMARY KEY (user_account_id, start_date, end_date),
  FOREIGN KEY (user_account_id) REFERENCES user_account(ids)
);

INSERT INTO experience_detail (user_account_id, current_job, start_date, end_date, job_title, company, job_location, descriptions)
VALUES
  (1, 'Y', TO_DATE('2014-06-01', 'YYYY-MM-DD'), TO_DATE('2023-05-13', 'YYYY-MM-DD'), 'Software Engineer', 'ABC Company', 'City A', 'Responsible for developing and maintaining software applications.');
  INSERT INTO experience_detail (user_account_id, current_job, start_date, end_date, job_title, company, job_location, descriptions)
VALUES(2, 'N', TO_DATE('2015-07-01', 'YYYY-MM-DD'), TO_DATE('2022-12-31', 'YYYY-MM-DD'), 'Marketing Manager', 'XYZ Corporation', 'City B', 'Led marketing campaigns and managed a team of marketing professionals.');
  INSERT INTO experience_detail (user_account_id, current_job, start_date, end_date, job_title, company, job_location, descriptions)
VALUES(3, 'N', TO_DATE('2016-08-01', 'YYYY-MM-DD'), TO_DATE('2023-05-13', 'YYYY-MM-DD'), 'Electrical Engineer', 'DEF Industries', 'City C', 'Designed electrical systems and performed troubleshooting and maintenance tasks.');
  INSERT INTO experience_detail (user_account_id, current_job, start_date, end_date, job_title, company, job_location, descriptions)
VALUES(4, 'Y', TO_DATE('2017-09-01', 'YYYY-MM-DD'), TO_DATE('2023-05-13', 'YYYY-MM-DD'), 'Financial Analyst', 'PQR Bank', 'City D', 'Conducted financial analysis and prepared reports for decision-making.');
  INSERT INTO experience_detail (user_account_id, current_job, start_date, end_date, job_title, company, job_location, descriptions)
VALUES(5, 'N', TO_DATE('2018-10-01', 'YYYY-MM-DD'), TO_DATE('2022-06-30', 'YYYY-MM-DD'), 'Product Manager', 'MNO Tech', 'City E', 'Managed product lifecycle and collaborated with cross-functional teams.');
  INSERT INTO experience_detail (user_account_id, current_job, start_date, end_date, job_title, company, job_location, descriptions)
VALUES(6, 'Y', TO_DATE('2019-11-01', 'YYYY-MM-DD'), TO_DATE('2023-05-13', 'YYYY-MM-DD'), 'Research Scientist', 'ABC Labs', 'City A', 'Conducted research experiments and analyzed data for scientific discoveries.');
  INSERT INTO experience_detail (user_account_id, current_job, start_date, end_date, job_title, company, job_location, descriptions)
VALUES(7, 'N', TO_DATE('2020-12-01', 'YYYY-MM-DD'), TO_DATE('2021-12-31', 'YYYY-MM-DD'), 'Graphic Designer', 'XYZ Agency', 'City B', 'Created visually appealing designs for various marketing materials.');
  INSERT INTO experience_detail (user_account_id, current_job, start_date, end_date, job_title, company, job_location, descriptions)
VALUES(8, 'N', TO_DATE('2021-01-01', 'YYYY-MM-DD'), TO_DATE('2023-05-13', 'YYYY-MM-DD'), 'Mechanical Engineer', 'DEF Manufacturing', 'City C', 'Developed mechanical designs and oversaw manufacturing processes.');
  INSERT INTO experience_detail (user_account_id, current_job, start_date, end_date, job_title, company, job_location, descriptions)
VALUES(9, 'Y', TO_DATE('2022-02-01', 'YYYY-MM-DD'), TO_DATE('2023-05-13', 'YYYY-MM-DD'), 'Accountant', 'PQR Company', 'City D', 'Managed financial records and performed tax-related tasks.');
  INSERT INTO experience_detail (user_account_id, current_job, start_date, end_date, job_title, company, job_location, descriptions)
VALUES(10, 'N', TO_DATE('2023-03-01', 'YYYY-MM-DD'), TO_DATE('2023-05-13', 'YYYY-MM-DD'), 'Software Developer', 'MNO Tech', 'City E', 'Implemented software solutions and participated in code reviews.');

-- Create the skill_set table
CREATE TABLE skill_set (
  ids NUMBER PRIMARY KEY,
  skill_set_name VARCHAR2(50)
);

INSERT INTO skill_set (ids, skill_set_name)
VALUES
  (1, 'Java');
  INSERT INTO skill_set (ids, skill_set_name)
VALUES(2, 'Python');
  INSERT INTO skill_set (ids, skill_set_name)
VALUES(3, 'C++');
  INSERT INTO skill_set (ids, skill_set_name)
VALUES(4, 'JavaScript');
  INSERT INTO skill_set (ids, skill_set_name)
VALUES(5, 'HTML');
  INSERT INTO skill_set (ids, skill_set_name)
VALUES(6, 'CSS');
  INSERT INTO skill_set (ids, skill_set_name)
VALUES(7, 'Database Management');
  INSERT INTO skill_set (ids, skill_set_name)
VALUES(8, 'Project Management');
  INSERT INTO skill_set (ids, skill_set_name)
VALUES(9, 'Data Analysis');
  INSERT INTO skill_set (ids, skill_set_name)
VALUES(10, 'Communication Skills');

-- Create the seeker_skill table
CREATE TABLE seeker_skill (
  user_account_id NUMBER,
  skill_set_id NUMBER,
  skill_level NUMBER,
  PRIMARY KEY (user_account_id, skill_set_id),
  FOREIGN KEY (user_account_id) REFERENCES user_account(ids),
  FOREIGN KEY (skill_set_id) REFERENCES skill_set(ids)
);

INSERT INTO seeker_skill (user_account_id, skill_set_id, skill_level)
VALUES
  (1, 1, 8);
  INSERT INTO seeker_skill (user_account_id, skill_set_id, skill_level)
VALUES(1, 2, 7);
  INSERT INTO seeker_skill (user_account_id, skill_set_id, skill_level)
VALUES(2, 3, 6);
  INSERT INTO seeker_skill (user_account_id, skill_set_id, skill_level)
VALUES(2, 4, 9);
  INSERT INTO seeker_skill (user_account_id, skill_set_id, skill_level)
VALUES(3, 5, 7);
  INSERT INTO seeker_skill (user_account_id, skill_set_id, skill_level)
VALUES(3, 6, 8);
  INSERT INTO seeker_skill (user_account_id, skill_set_id, skill_level)
VALUES(4, 7, 9);
  INSERT INTO seeker_skill (user_account_id, skill_set_id, skill_level)
VALUES(4, 8, 6);
  INSERT INTO seeker_skill (user_account_id, skill_set_id, skill_level)
VALUES(5, 9, 7);
  INSERT INTO seeker_skill (user_account_id, skill_set_id, skill_level)
VALUES(5, 10, 9);
  
-- Create the business_stream table
CREATE TABLE business_stream (
  ids NUMBER PRIMARY KEY,
  business_stream_name VARCHAR2(100)
);

INSERT INTO business_stream (ids, business_stream_name)
VALUES
  (1, 'Technology');
  INSERT INTO business_stream (ids, business_stream_name)
VALUES(2, 'Finance');
  INSERT INTO business_stream (ids, business_stream_name)
VALUES(3, 'Healthcare');
  INSERT INTO business_stream (ids, business_stream_name)
VALUES(4, 'Marketing');
  INSERT INTO business_stream (ids, business_stream_name)
VALUES(5, 'Education');
  INSERT INTO business_stream (ids, business_stream_name)
VALUES(6, 'Hospitality');
  INSERT INTO business_stream (ids, business_stream_name)
VALUES(7, 'Retail');
  INSERT INTO business_stream (ids, business_stream_name)
VALUES(8, 'Manufacturing');
  INSERT INTO business_stream (ids, business_stream_name)
VALUES(9, 'Consulting');
  INSERT INTO business_stream (ids, business_stream_name)
VALUES(10, 'Transportation');

-- Create the company table
CREATE TABLE company (
  ids NUMBER PRIMARY KEY,
  company_name VARCHAR2(100),
  profile_description VARCHAR2(1000),
  business_stream_id NUMBER,
  company_website_url VARCHAR2(500),
  FOREIGN KEY (business_stream_id) REFERENCES business_stream(ids)
);

INSERT INTO company (ids, company_name, profile_description, business_stream_id, company_website_url)
VALUES
  (1, 'ABC Tech', 'Leading technology solutions provider.', 1, 'http://www.abctech.com');
  INSERT INTO company (ids, company_name, profile_description, business_stream_id, company_website_url)
VALUES(2, 'XYZ Financial', 'Offering comprehensive financial services.', 2, 'http://www.xyzfinancial.com');
  INSERT INTO company (ids, company_name, profile_description, business_stream_id, company_website_url)
VALUES(3, 'DEF Healthcare', 'Providing healthcare solutions for better living.', 3, 'http://www.defhealthcare.com');
  INSERT INTO company (ids, company_name, profile_description, business_stream_id, company_website_url)
VALUES(4, 'PQR Marketing', 'Delivering innovative marketing strategies.', 4, 'http://www.pqrmarketing.com');
  INSERT INTO company (ids, company_name, profile_description, business_stream_id, company_website_url)
VALUES(5, 'MNO Education', 'Empowering minds through quality education.', 5, 'http://www.mnoeducation.com');
  INSERT INTO company (ids, company_name, profile_description, business_stream_id, company_website_url)
VALUES(6, 'GHI Hotels', 'Creating memorable hospitality experiences.', 6, 'http://www.ghihotels.com');
  INSERT INTO company (ids, company_name, profile_description, business_stream_id, company_website_url)
VALUES(7, 'UVW Retail', 'Offering a wide range of retail products.', 7, 'http://www.uvwretail.com');
  INSERT INTO company (ids, company_name, profile_description, business_stream_id, company_website_url)
VALUES(8, 'JKL Manufacturing', 'Providing high-quality manufacturing solutions.', 8, 'http://www.jklmanufacturing.com');
  INSERT INTO company (ids, company_name, profile_description, business_stream_id, company_website_url)
VALUES(9, 'RST Consulting', 'Offering expert consulting services.', 9, 'http://www.rstconsulting.com');
  INSERT INTO company (ids, company_name, profile_description, business_stream_id, company_website_url)
VALUES(10, 'EFG Transportation', 'Delivering efficient transportation solutions.', 10, 'http://www.efgtransportation.com');


-- Create the job_type table
CREATE TABLE job_type (
  ids NUMBER PRIMARY KEY,
  job_type VARCHAR2(20)
);

INSERT INTO job_type (ids, job_type)
VALUES
  (1, 'Full-time');
  INSERT INTO job_type (ids, job_type)
VALUES(2, 'Part-time');
  INSERT INTO job_type (ids, job_type)
VALUES(3, 'Contract');
  INSERT INTO job_type (ids, job_type)
VALUES(4, 'Freelance');
  INSERT INTO job_type (ids, job_type)
VALUES(5, 'Temporary');
  INSERT INTO job_type (ids, job_type)
VALUES(6, 'Internship');
  INSERT INTO job_type (ids, job_type)
VALUES(7, 'Remote');
  INSERT INTO job_type (ids, job_type)
VALUES(8, 'Volunteer');
  INSERT INTO job_type (ids, job_type)
VALUES(9, 'Commission');
  INSERT INTO job_type (ids, job_type)
VALUES(10, 'Seasonal');
  
-- Create the job_application_status table
CREATE TABLE job_application_status (
  ids NUMBER PRIMARY KEY,
  status_desc VARCHAR2(20)
);

INSERT INTO job_application_status (ids, status_desc)
VALUES
  (1, 'Pending');
  INSERT INTO job_application_status (ids, status_desc)
VALUES(2, 'Reviewed');
  INSERT INTO job_application_status (ids, status_desc)
VALUES(3, 'Shortlisted');
  INSERT INTO job_application_status (ids, status_desc)
VALUES(4, 'Interview Scheduled');
  INSERT INTO job_application_status (ids, status_desc)
VALUES(5, 'Offer Extended');
  INSERT INTO job_application_status (ids, status_desc)
VALUES(6, 'Offer Accepted');
  INSERT INTO job_application_status (ids, status_desc)
VALUES(7, 'Offer Declined');
  INSERT INTO job_application_status (ids, status_desc)
VALUES(8, 'Hired');
  INSERT INTO job_application_status (ids, status_desc)
VALUES(9, 'Not Selected');
  INSERT INTO job_application_status (ids, status_desc)
VALUES(10, 'Withdrawn');
  
  
-- Create the job_post table
CREATE TABLE job_post (
  ids NUMBER PRIMARY KEY,
  post_activity_id NUMBER,
  job_type_id NUMBER,
  company_id NUMBER,
  created_date DATE,
  job_description VARCHAR2(500),
  is_active CHAR(1),
  FOREIGN KEY (job_type_id) REFERENCES job_type(ids),
  FOREIGN KEY (company_id) REFERENCES company(ids)
);

select *
 from users;
select *
 from user_account ;
select *
 from seeker_profile;
select *
 from education_detail;--
select *
 from experience_detail;
select *
 from  skill_set ;
select *
 from  seeker_skill ;
select *
 from   business_stream;
select *
from job_type;
select *
 from job_application_status;
 select * from company ;
 select * from job_post_activity ;

INSERT INTO job_post (ids, post_activity_id, job_type_id, company_id, created_date, job_description, is_active)
VALUES
  (1, 1, 1, 1, TO_DATE('2023-05-13', 'YYYY-MM-DD'), 'Seeking a Java Developer with 3+ years of experience.', 'Y');
  INSERT INTO job_post (ids, post_activity_id, job_type_id, company_id, created_date, job_description, is_active)
VALUES(2, 2, 3, 2, TO_DATE('2023-05-13', 'YYYY-MM-DD'), 'Looking for a Contract Data Analyst proficient in Python.', 'Y');
  INSERT INTO job_post (ids, post_activity_id, job_type_id, company_id, created_date, job_description, is_active)
VALUES(3, 3, 2, 3, TO_DATE('2023-05-13', 'YYYY-MM-DD'), 'Hiring a Full-time Financial Analyst with expertise in Excel.', 'Y');
  INSERT INTO job_post (ids, post_activity_id, job_type_id, company_id, created_date, job_description, is_active)
VALUES(4, 1, 4, 4, TO_DATE('2023-05-13', 'YYYY-MM-DD'), 'Freelance Graphic Designer needed for creative projects.', 'Y');
  INSERT INTO job_post (ids, post_activity_id, job_type_id, company_id, created_date, job_description, is_active)
VALUES(5, 2, 1, 5, TO_DATE('2023-05-13', 'YYYY-MM-DD'), 'Seeking a Part-time Java Developer for a flexible schedule.', 'Y');
  INSERT INTO job_post (ids, post_activity_id, job_type_id, company_id, created_date, job_description, is_active)
VALUES(6, 3, 6, 6, TO_DATE('2023-05-13', 'YYYY-MM-DD'), 'Internship opportunity for a Software Engineering student.', 'Y');
  INSERT INTO job_post (ids, post_activity_id, job_type_id, company_id, created_date, job_description, is_active)
VALUES(7, 1, 1, 7, TO_DATE('2023-05-13', 'YYYY-MM-DD'), 'Remote Full-time Front-end Developer position available.', 'Y');
  INSERT INTO job_post (ids, post_activity_id, job_type_id, company_id, created_date, job_description, is_active)
VALUES(8, 2, 8, 8, TO_DATE('2023-05-13', 'YYYY-MM-DD'), 'Volunteer opportunity for a Project Manager in the non-profit sector.', 'Y');
  INSERT INTO job_post (ids, post_activity_id, job_type_id, company_id, created_date, job_description, is_active)
VALUES(9, 3, 5, 9, TO_DATE('2023-05-13', 'YYYY-MM-DD'), 'Temporary Teaching Assistant position for the upcoming semester.', 'Y');
  INSERT INTO job_post (ids, post_activity_id, job_type_id, company_id, created_date, job_description, is_active)
VALUES(10, 1, 2, 10, TO_DATE('2023-05-13', 'YYYY-MM-DD'), 'Seasonal Delivery Driver needed for busy holiday season.', 'Y');


-- Create the job_post_activity table
CREATE TABLE job_post_activity (
  ids NUMBER PRIMARY KEY,
  user_account_id NUMBER,
  job_post_id NUMBER,
  apply_date DATE,
  job_application_status_id NUMBER,
  FOREIGN KEY (user_account_id) REFERENCES user_account(ids),
  FOREIGN KEY (job_post_id) REFERENCES job_post(ids),
  FOREIGN KEY (job_application_status_id) REFERENCES job_application_status(ids)
);

INSERT INTO job_post_activity (ids, user_account_id, job_post_id, apply_date, job_application_status_id)
VALUES
  (1, 1, 1, TO_DATE('2023-05-13', 'YYYY-MM-DD'), 1);
  INSERT INTO job_post_activity (ids, user_account_id, job_post_id, apply_date, job_application_status_id)
VALUES(2, 2, 2, TO_DATE('2023-05-13', 'YYYY-MM-DD'), 3);
  INSERT INTO job_post_activity (ids, user_account_id, job_post_id, apply_date, job_application_status_id)
VALUES(3, 3, 3, TO_DATE('2023-05-13', 'YYYY-MM-DD'), 2);
  INSERT INTO job_post_activity (ids, user_account_id, job_post_id, apply_date, job_application_status_id)
VALUES(4, 4, 4, TO_DATE('2023-05-13', 'YYYY-MM-DD'), 1);
  INSERT INTO job_post_activity (ids, user_account_id, job_post_id, apply_date, job_application_status_id)
VALUES(5, 5, 5, TO_DATE('2023-05-13', 'YYYY-MM-DD'), 4);
  INSERT INTO job_post_activity (ids, user_account_id, job_post_id, apply_date, job_application_status_id)
VALUES(6, 1, 6, TO_DATE('2023-05-13', 'YYYY-MM-DD'), 2);
  INSERT INTO job_post_activity (ids, user_account_id, job_post_id, apply_date, job_application_status_id)
VALUES(7, 2, 7, TO_DATE('2023-05-13', 'YYYY-MM-DD'), 3);
  INSERT INTO job_post_activity (ids, user_account_id, job_post_id, apply_date, job_application_status_id)
VALUES(8, 3, 8, TO_DATE('2023-05-13', 'YYYY-MM-DD'), 5);
  INSERT INTO job_post_activity (ids, user_account_id, job_post_id, apply_date, job_application_status_id)
VALUES(9, 4, 9, TO_DATE('2023-05-13', 'YYYY-MM-DD'), 4);
  INSERT INTO job_post_activity (ids, user_account_id, job_post_id, apply_date, job_application_status_id)
VALUES(10, 5, 10, TO_DATE('2023-05-13', 'YYYY-MM-DD'), 1);


-- Create
CREATE TABLE job_post_skill_set (
  skill_level number,
  job_post_id number ,
  skill_set_id number ,
  FOREIGN KEY (job_post_id) REFERENCES job_post(ids),
  FOREIGN KEY (skill_set_id) REFERENCES skill_set(ids),
  PRIMARY KEY (job_post_id, skill_set_id)
);
select ids
from job_post;
INSERT INTO job_post_skill_set (skill_level, job_post_id, skill_set_id)
VALUES
  (3, 1, 1);
  INSERT INTO job_post_skill_set (skill_level, job_post_id, skill_set_id)
VALUES(4, 1, 5);
  INSERT INTO job_post_skill_set (skill_level, job_post_id, skill_set_id)
VALUES(2, 2, 2);
  INSERT INTO job_post_skill_set (skill_level, job_post_id, skill_set_id)
VALUES(3, 2, 9);
  INSERT INTO job_post_skill_set (skill_level, job_post_id, skill_set_id)
VALUES(4, 3, 8);
  INSERT INTO job_post_skill_set (skill_level, job_post_id, skill_set_id)
VALUES(2, 3, 7);
  INSERT INTO job_post_skill_set (skill_level, job_post_id, skill_set_id)
VALUES(3, 4, 6);
  INSERT INTO job_post_skill_set (skill_level, job_post_id, skill_set_id)
VALUES(4, 5, 1);
  INSERT INTO job_post_skill_set (skill_level, job_post_id, skill_set_id)
VALUES(2, 5, 4);
  INSERT INTO job_post_skill_set (skill_level, job_post_id, skill_set_id)
VALUES(3, 6, 1);


----------------------------------
SELECT sp.first_name, sp.last_name, sp.salary
FROM seeker_profile sp;


SELECT ed.degree_name, ed.university_name, ed.completion_date
FROM education_detail ed
WHERE ed.user_account_id = 1; 


SELECT ed.job_title, ed.company, ed.job_location
FROM experience_detail ed
WHERE ed.current_job = 'Y';


SELECT ss.skill_set_name
FROM skill_set ss
INNER JOIN seeker_skill ssk ON ss.ids = ssk.skill_set_id
WHERE ssk.user_account_id = 3; 

SELECT sp.first_name, sp.last_name, ed.degree_name, ex.job_title
FROM seeker_profile sp
JOIN education_detail ed ON sp.user_account_id = ed.user_account_id
JOIN experience_detail ex ON sp.user_account_id = ex.user_account_id;


SELECT sp.first_name, sp.last_name
FROM seeker_profile sp
INNER JOIN user_account ua ON sp.user_account_id = ua.ids
INNER JOIN users u ON ua.user_type_id = u.ids
WHERE u.user_type_name = 'seeker';

SELECT u.user_type_name, COUNT(ua.ids) AS user_count
FROM users u
LEFT JOIN user_account ua ON u.ids = ua.user_type_id
GROUP BY u.user_type_name;


SELECT c.company_name
FROM company c
INNER JOIN business_stream bs ON c.business_stream_id = bs.ids
WHERE bs.business_stream_name = 'Technology';


SELECT ss.skill_set_id, ss.skill_level
FROM seeker_skill ss
WHERE ss.user_account_id = 1;

SELECT sp.first_name, sp.last_name, sp.salary
FROM seeker_profile sp
WHERE sp.salary > 60000;
