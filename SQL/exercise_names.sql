--
-- PostgreSQL database dump
--

-- Dumped from database version 10.21
-- Dumped by pg_dump version 16.1

-- Started on 2024-05-07 20:44:02 EDT

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

--
-- TOC entry 199 (class 1259 OID 57639)
-- Name: exercise_name; Type: TABLE; Schema: public; Owner: updqeo4pn0axa
--

CREATE TABLE public.exercise_name (
    id integer NOT NULL,
    name character varying(255)
);


ALTER TABLE public.exercise_name OWNER TO updqeo4pn0axa;

--
-- TOC entry 198 (class 1259 OID 57637)
-- Name: exercise_name_id_seq; Type: SEQUENCE; Schema: public; Owner: updqeo4pn0axa
--

CREATE SEQUENCE public.exercise_name_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.exercise_name_id_seq OWNER TO updqeo4pn0axa;

--
-- TOC entry 3031 (class 0 OID 0)
-- Dependencies: 198
-- Name: exercise_name_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: updqeo4pn0axa
--

ALTER SEQUENCE public.exercise_name_id_seq OWNED BY public.exercise_name.id;


--
-- TOC entry 2900 (class 2604 OID 57642)
-- Name: exercise_name id; Type: DEFAULT; Schema: public; Owner: updqeo4pn0axa
--

ALTER TABLE ONLY public.exercise_name ALTER COLUMN id SET DEFAULT nextval('public.exercise_name_id_seq'::regclass);


--
-- TOC entry 3025 (class 0 OID 57639)
-- Dependencies: 199
-- Data for Name: exercise_name; Type: TABLE DATA; Schema: public; Owner: updqeo4pn0axa
--

INSERT INTO public.exercise_name (id, name) VALUES (36, 'Treadmill');
INSERT INTO public.exercise_name (id, name) VALUES (37, 'Lying Bench Dumbbell');
INSERT INTO public.exercise_name (id, name) VALUES (38, 'Lying Bench Leg Raises');
INSERT INTO public.exercise_name (id, name) VALUES (39, 'Standing Dumbbell Cross Body Rise');
INSERT INTO public.exercise_name (id, name) VALUES (40, 'Standing Barbell Overhead Press');
INSERT INTO public.exercise_name (id, name) VALUES (41, 'Standing Barbell Scissor');
INSERT INTO public.exercise_name (id, name) VALUES (42, 'Standing Barbell Curl ');
INSERT INTO public.exercise_name (id, name) VALUES (43, 'Stairs (Climb Artis)');
INSERT INTO public.exercise_name (id, name) VALUES (44, 'Technogym Assisted Pull Up');
INSERT INTO public.exercise_name (id, name) VALUES (45, 'Technogym Assisted Tricep Dip');
INSERT INTO public.exercise_name (id, name) VALUES (47, 'Bike');
INSERT INTO public.exercise_name (id, name) VALUES (48, 'Technogym Chest Press');
INSERT INTO public.exercise_name (id, name) VALUES (49, 'Technogym Lat Cable Station Bar Pull Down');
INSERT INTO public.exercise_name (id, name) VALUES (46, 'Technogym Lat machine');
INSERT INTO public.exercise_name (id, name) VALUES (100, 'Locker Number');


--
-- TOC entry 3032 (class 0 OID 0)
-- Dependencies: 198
-- Name: exercise_name_id_seq; Type: SEQUENCE SET; Schema: public; Owner: updqeo4pn0axa
--

SELECT pg_catalog.setval('public.exercise_name_id_seq', 1, false);


--
-- TOC entry 2902 (class 2606 OID 57644)
-- Name: exercise_name exercise_name_pkey; Type: CONSTRAINT; Schema: public; Owner: updqeo4pn0axa
--

ALTER TABLE ONLY public.exercise_name
    ADD CONSTRAINT exercise_name_pkey PRIMARY KEY (id);


-- Completed on 2024-05-07 20:44:05 EDT

--
-- PostgreSQL database dump complete
--

