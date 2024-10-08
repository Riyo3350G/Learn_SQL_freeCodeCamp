PGDMP                         |            students "   12.17 (Ubuntu 12.17-1.pgdg22.04+1) "   12.17 (Ubuntu 12.17-1.pgdg22.04+1)     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16385    students    DATABASE     r   CREATE DATABASE students WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';
    DROP DATABASE students;
                freecodecamp    false            �            1259    16392    courses    TABLE     l   CREATE TABLE public.courses (
    course_id integer NOT NULL,
    course character varying(100) NOT NULL
);
    DROP TABLE public.courses;
       public         heap    freecodecamp    false            �            1259    16421    courses_course_id_seq    SEQUENCE     �   CREATE SEQUENCE public.courses_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.courses_course_id_seq;
       public          freecodecamp    false    204            �           0    0    courses_course_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.courses_course_id_seq OWNED BY public.courses.course_id;
          public          freecodecamp    false    208            �            1259    16389    majors    TABLE     h   CREATE TABLE public.majors (
    major_id integer NOT NULL,
    major character varying(50) NOT NULL
);
    DROP TABLE public.majors;
       public         heap    freecodecamp    false            �            1259    16395    majors_courses    TABLE     f   CREATE TABLE public.majors_courses (
    major_id integer NOT NULL,
    course_id integer NOT NULL
);
 "   DROP TABLE public.majors_courses;
       public         heap    freecodecamp    false            �            1259    16407    majors_major_id_seq    SEQUENCE     �   CREATE SEQUENCE public.majors_major_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.majors_major_id_seq;
       public          freecodecamp    false    203            �           0    0    majors_major_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.majors_major_id_seq OWNED BY public.majors.major_id;
          public          freecodecamp    false    207            �            1259    16386    students    TABLE     �   CREATE TABLE public.students (
    student_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    major_id integer,
    gpa numeric(2,1)
);
    DROP TABLE public.students;
       public         heap    freecodecamp    false            �            1259    16398    students_student_id_seq    SEQUENCE     �   CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.students_student_id_seq;
       public          freecodecamp    false    202            �           0    0    students_student_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;
          public          freecodecamp    false    206            !           2604    16423    courses course_id    DEFAULT     v   ALTER TABLE ONLY public.courses ALTER COLUMN course_id SET DEFAULT nextval('public.courses_course_id_seq'::regclass);
 @   ALTER TABLE public.courses ALTER COLUMN course_id DROP DEFAULT;
       public          freecodecamp    false    208    204                        2604    16409    majors major_id    DEFAULT     r   ALTER TABLE ONLY public.majors ALTER COLUMN major_id SET DEFAULT nextval('public.majors_major_id_seq'::regclass);
 >   ALTER TABLE public.majors ALTER COLUMN major_id DROP DEFAULT;
       public          freecodecamp    false    207    203                       2604    16400    students student_id    DEFAULT     z   ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);
 B   ALTER TABLE public.students ALTER COLUMN student_id DROP DEFAULT;
       public          freecodecamp    false    206    202            �          0    16392    courses 
   TABLE DATA           4   COPY public.courses (course_id, course) FROM stdin;
    public          freecodecamp    false    204   �"       �          0    16389    majors 
   TABLE DATA           1   COPY public.majors (major_id, major) FROM stdin;
    public          freecodecamp    false    203   
#       �          0    16395    majors_courses 
   TABLE DATA           =   COPY public.majors_courses (major_id, course_id) FROM stdin;
    public          freecodecamp    false    205   A#       �          0    16386    students 
   TABLE DATA           T   COPY public.students (student_id, first_name, last_name, major_id, gpa) FROM stdin;
    public          freecodecamp    false    202   b#       �           0    0    courses_course_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.courses_course_id_seq', 1, true);
          public          freecodecamp    false    208            �           0    0    majors_major_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.majors_major_id_seq', 1, true);
          public          freecodecamp    false    207            �           0    0    students_student_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.students_student_id_seq', 1, true);
          public          freecodecamp    false    206            '           2606    16425    courses courses_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);
 >   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_pkey;
       public            freecodecamp    false    204            )           2606    16441 "   majors_courses majors_courses_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_pkey PRIMARY KEY (major_id, course_id);
 L   ALTER TABLE ONLY public.majors_courses DROP CONSTRAINT majors_courses_pkey;
       public            freecodecamp    false    205    205            %           2606    16411    majors majors_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.majors
    ADD CONSTRAINT majors_pkey PRIMARY KEY (major_id);
 <   ALTER TABLE ONLY public.majors DROP CONSTRAINT majors_pkey;
       public            freecodecamp    false    203            #           2606    16402    students students_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);
 @   ALTER TABLE ONLY public.students DROP CONSTRAINT students_pkey;
       public            freecodecamp    false    202            ,           2606    16435 ,   majors_courses majors_courses_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);
 V   ALTER TABLE ONLY public.majors_courses DROP CONSTRAINT majors_courses_course_id_fkey;
       public          freecodecamp    false    205    2855    204            +           2606    16430 +   majors_courses majors_courses_major_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);
 U   ALTER TABLE ONLY public.majors_courses DROP CONSTRAINT majors_courses_major_id_fkey;
       public          freecodecamp    false    2853    203    205            *           2606    16416    students students_major_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);
 I   ALTER TABLE ONLY public.students DROP CONSTRAINT students_major_id_fkey;
       public          freecodecamp    false    2853    202    203            �   .   x�3�tI,IT.)*M.)-J-VH�KQp�I�/�,��-����� ��X      �   '   x�3�tI,ILJ,NUpL����,.)J,�������� �Y	�      �      x�3�4����� ]      �   "   x�3��HM��N��I�-�4�4�3����� _%     