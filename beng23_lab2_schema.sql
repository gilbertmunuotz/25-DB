-- COURSE
CREATE TABLE course (
  code VARCHAR2(10) PRIMARY KEY,
  title VARCHAR2(100) NOT NULL,
  tuition_fee NUMBER(12,2) CHECK (tuition_fee > 0)
);

-- STUDENT
CREATE TABLE student (
  sid VARCHAR2(10) PRIMARY KEY,
  sname VARCHAR2(100) NOT NULL,
  dob DATE NOT NULL,
  course VARCHAR2(10),
  CONSTRAINT fk_student_course
    FOREIGN KEY (course)
    REFERENCES course(code)
    ON DELETE SET NULL
);

-- MODULE
CREATE TABLE module (
  code VARCHAR2(10) PRIMARY KEY,
  title VARCHAR2(100) NOT NULL,
  credit NUMBER CHECK (credit > 0)
);

-- ENROLMENT
CREATE TABLE enrolment (
  student VARCHAR2(10),
  module VARCHAR2(10),
  mark NUMBER CHECK (mark BETWEEN 0 AND 100),
  grade VARCHAR2(3) CHECK (grade IN ('A','B+','B','C','D','F')),
  CONSTRAINT pk_enrolment PRIMARY KEY (student, module),
  CONSTRAINT fk_enrolment_student
    FOREIGN KEY (student)
    REFERENCES student(sid)
    ON DELETE CASCADE,
  CONSTRAINT fk_enrolment_module
    FOREIGN KEY (module)
    REFERENCES module(code)
    ON DELETE CASCADE
);