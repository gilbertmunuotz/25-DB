-- COURSE DATA
INSERT ALL
  INTO course VALUES ('BCS', 'BSc Computer Science', 3500000)
  INTO course VALUES ('BIT', 'BSc Information Technology', 3300000)
  INTO course VALUES ('BSE', 'BSc Software Engineering', 3700000)
SELECT * FROM dual;

-- STUDENT DATA
INSERT INTO student VALUES ('S001','Asha Mohamed',TO_DATE('2001-03-14','YYYY-MM-DD'),'BCS');
INSERT INTO student VALUES ('S002','John Mwakalinga',TO_DATE('2000-11-02','YYYY-MM-DD'),'BIT');
INSERT INTO student VALUES ('S003','Neema Joseph',TO_DATE('2002-01-25','YYYY-MM-DD'),'BCS');
INSERT INTO student VALUES ('S004','Hassan Ali',TO_DATE('1999-07-18','YYYY-MM-DD'),'BSE');
INSERT INTO student VALUES ('S005','Grace Paulo',TO_DATE('2001-09-09','YYYY-MM-DD'),'BIT');

-- MODULE DATA
INSERT INTO module VALUES ('DBS101','Database Systems',10);
INSERT INTO module VALUES ('PRG102','Programming II',10);
INSERT INTO module VALUES ('AI201','Artificial Intelligence',15);
INSERT INTO module VALUES ('NET103','Computer Networks',10);

-- ENROLMENT DATA
INSERT INTO enrolment VALUES ('S001','DBS101',78,'A');
INSERT INTO enrolment VALUES ('S001','PRG102',65,'B+');
INSERT INTO enrolment VALUES ('S002','DBS101',55,'C');
INSERT INTO enrolment VALUES ('S002','NET103',72,'A');
INSERT INTO enrolment VALUES ('S003','AI201',81,'A');
INSERT INTO enrolment VALUES ('S004','AI201',68,'B');
INSERT INTO enrolment VALUES ('S004','PRG102',60,'C');
INSERT INTO enrolment VALUES ('S005','NET103',75,'A');

COMMIT;