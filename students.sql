--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE students;
--
-- Name: students; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE students WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE students OWNER TO freecodecamp;

\connect students

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.courses (
    course_id integer NOT NULL,
    course character varying(100) NOT NULL
);


ALTER TABLE public.courses OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.courses_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_course_id_seq OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.courses_course_id_seq OWNED BY public.courses.course_id;


--
-- Name: majors; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors (
    major_id integer NOT NULL,
    major character varying(50) NOT NULL
);


ALTER TABLE public.majors OWNER TO freecodecamp;

--
-- Name: majors_courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors_courses (
    major_id integer NOT NULL,
    course_id integer NOT NULL
);


ALTER TABLE public.majors_courses OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.majors_major_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.majors_major_id_seq OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.majors_major_id_seq OWNED BY public.majors.major_id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.students (
    student_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    major_id integer,
    gpa numeric(2,1)
);


ALTER TABLE public.students OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_student_id_seq OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;


--
-- Name: courses course_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses ALTER COLUMN course_id SET DEFAULT nextval('public.courses_course_id_seq'::regclass);


--
-- Name: majors major_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors ALTER COLUMN major_id SET DEFAULT nextval('public.majors_major_id_seq'::regclass);


--
-- Name: students student_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.courses VALUES (63, 'Data Structures and Algorithms');
INSERT INTO public.courses VALUES (64, 'Web Programming');
INSERT INTO public.courses VALUES (65, 'Database Systems');
INSERT INTO public.courses VALUES (66, 'Computer Networks');
INSERT INTO public.courses VALUES (67, 'SQL');
INSERT INTO public.courses VALUES (68, 'Machine Learning');
INSERT INTO public.courses VALUES (69, 'Computer Systems');
INSERT INTO public.courses VALUES (70, 'Web Applications');
INSERT INTO public.courses VALUES (71, 'Artificial Intelligence');
INSERT INTO public.courses VALUES (72, 'Python');
INSERT INTO public.courses VALUES (73, 'Object-Oriented Programming');
INSERT INTO public.courses VALUES (74, 'Calculus');
INSERT INTO public.courses VALUES (75, 'Game Architecture');
INSERT INTO public.courses VALUES (76, 'Algorithms');
INSERT INTO public.courses VALUES (77, 'UNIX');
INSERT INTO public.courses VALUES (78, 'Server Administration');
INSERT INTO public.courses VALUES (79, 'Network Security');


--
-- Data for Name: majors; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors VALUES (56, 'Database Administration');
INSERT INTO public.majors VALUES (57, 'Web Development');
INSERT INTO public.majors VALUES (58, 'Data Science');
INSERT INTO public.majors VALUES (59, 'Network Engineering');
INSERT INTO public.majors VALUES (60, 'Computer Programming');
INSERT INTO public.majors VALUES (61, 'Game Design');
INSERT INTO public.majors VALUES (62, 'System Administration');


--
-- Data for Name: majors_courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors_courses VALUES (56, 63);
INSERT INTO public.majors_courses VALUES (57, 64);
INSERT INTO public.majors_courses VALUES (56, 65);
INSERT INTO public.majors_courses VALUES (58, 63);
INSERT INTO public.majors_courses VALUES (59, 66);
INSERT INTO public.majors_courses VALUES (56, 67);
INSERT INTO public.majors_courses VALUES (58, 68);
INSERT INTO public.majors_courses VALUES (59, 69);
INSERT INTO public.majors_courses VALUES (60, 66);
INSERT INTO public.majors_courses VALUES (56, 70);
INSERT INTO public.majors_courses VALUES (61, 71);
INSERT INTO public.majors_courses VALUES (58, 72);
INSERT INTO public.majors_courses VALUES (60, 73);
INSERT INTO public.majors_courses VALUES (62, 69);
INSERT INTO public.majors_courses VALUES (61, 74);
INSERT INTO public.majors_courses VALUES (57, 63);
INSERT INTO public.majors_courses VALUES (58, 74);
INSERT INTO public.majors_courses VALUES (57, 73);
INSERT INTO public.majors_courses VALUES (61, 75);
INSERT INTO public.majors_courses VALUES (62, 66);
INSERT INTO public.majors_courses VALUES (61, 76);
INSERT INTO public.majors_courses VALUES (62, 77);
INSERT INTO public.majors_courses VALUES (62, 78);
INSERT INTO public.majors_courses VALUES (60, 69);
INSERT INTO public.majors_courses VALUES (60, 72);
INSERT INTO public.majors_courses VALUES (59, 79);
INSERT INTO public.majors_courses VALUES (57, 70);
INSERT INTO public.majors_courses VALUES (59, 76);


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.students VALUES (10, 'Rhea', 'Kellems', 56, 2.5);
INSERT INTO public.students VALUES (11, 'Emma', 'Gilbert', NULL, NULL);
INSERT INTO public.students VALUES (12, 'Kimberly', 'Whitley', 57, 3.8);
INSERT INTO public.students VALUES (13, 'Jimmy', 'Felipe', 56, 3.7);
INSERT INTO public.students VALUES (14, 'Kyle', 'Stimson', NULL, 2.8);
INSERT INTO public.students VALUES (15, 'Casares', 'Hijo', 61, 4.0);
INSERT INTO public.students VALUES (16, 'Noe', 'Savage', NULL, 3.6);
INSERT INTO public.students VALUES (17, 'Sterling', 'Boss', 61, 3.9);
INSERT INTO public.students VALUES (18, 'Brian', 'Davis', NULL, 2.3);
INSERT INTO public.students VALUES (19, 'Kaija', 'Uronen', 61, 3.7);
INSERT INTO public.students VALUES (20, 'Faye', 'Conn', 61, 2.1);
INSERT INTO public.students VALUES (21, 'Efren', 'Reilly', 57, 3.9);
INSERT INTO public.students VALUES (22, 'Danh', 'Nhung', NULL, 2.4);
INSERT INTO public.students VALUES (23, 'Maxine', 'Hagenes', 56, 2.9);
INSERT INTO public.students VALUES (24, 'Larry', 'Saunders', 58, 2.2);
INSERT INTO public.students VALUES (25, 'Karl', 'Kuhar', 57, NULL);
INSERT INTO public.students VALUES (26, 'Lieke', 'Hazenveld', 61, 3.5);
INSERT INTO public.students VALUES (27, 'Obie', 'Hilpert', 57, NULL);
INSERT INTO public.students VALUES (28, 'Peter', 'Booysen', NULL, 2.9);
INSERT INTO public.students VALUES (29, 'Nathan', 'Turner', 56, 3.3);
INSERT INTO public.students VALUES (30, 'Gerald', 'Osiki', 58, 2.2);
INSERT INTO public.students VALUES (31, 'Vanya', 'Hassanah', 61, 4.0);
INSERT INTO public.students VALUES (32, 'Roxelana', 'Florescu', 56, 3.2);
INSERT INTO public.students VALUES (33, 'Helene', 'Parker', 58, 3.4);
INSERT INTO public.students VALUES (34, 'Mariana', 'Russel', 57, 1.8);
INSERT INTO public.students VALUES (35, 'Ajit', 'Dhungel', NULL, 3.0);
INSERT INTO public.students VALUES (36, 'Mehdi', 'Vandenberghe', 56, 1.9);
INSERT INTO public.students VALUES (37, 'Dejon', 'Howell', 57, 4.0);
INSERT INTO public.students VALUES (38, 'Aliya', 'Gulgowski', 62, 2.6);
INSERT INTO public.students VALUES (39, 'Ana', 'Tupajic', 58, 3.1);
INSERT INTO public.students VALUES (40, 'Hugo', 'Duran', NULL, 3.8);


--
-- Name: courses_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.courses_course_id_seq', 79, true);


--
-- Name: majors_major_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.majors_major_id_seq', 62, true);


--
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.students_student_id_seq', 40, true);


--
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);


--
-- Name: majors_courses majors_courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_pkey PRIMARY KEY (major_id, course_id);


--
-- Name: majors majors_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors
    ADD CONSTRAINT majors_pkey PRIMARY KEY (major_id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- Name: majors_courses majors_courses_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);


--
-- Name: majors_courses majors_courses_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- Name: students students_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- PostgreSQL database dump complete
--

