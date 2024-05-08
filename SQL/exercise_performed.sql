--
-- PostgreSQL database dump
--

-- Dumped from database version 10.21
-- Dumped by pg_dump version 16.1

-- Started on 2024-05-07 21:30:39 EDT

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
-- TOC entry 197 (class 1259 OID 57600)
-- Name: exercise_performed; Type: TABLE; Schema: public; Owner: updqeo4pn0axa
--

CREATE TABLE public.exercise_performed (
    id integer NOT NULL,
    session_id integer NOT NULL,
    utc_seconds bigint NOT NULL,
    exercise_id bigint NOT NULL,
    exercise_details jsonb NOT NULL
);


ALTER TABLE public.exercise_performed OWNER TO updqeo4pn0axa;

--
-- TOC entry 196 (class 1259 OID 57598)
-- Name: exercise_performed_id_seq; Type: SEQUENCE; Schema: public; Owner: updqeo4pn0axa
--

CREATE SEQUENCE public.exercise_performed_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.exercise_performed_id_seq OWNER TO updqeo4pn0axa;

--
-- TOC entry 3031 (class 0 OID 0)
-- Dependencies: 196
-- Name: exercise_performed_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: updqeo4pn0axa
--

ALTER SEQUENCE public.exercise_performed_id_seq OWNED BY public.exercise_performed.id;


--
-- TOC entry 2900 (class 2604 OID 57603)
-- Name: exercise_performed id; Type: DEFAULT; Schema: public; Owner: updqeo4pn0axa
--

ALTER TABLE ONLY public.exercise_performed ALTER COLUMN id SET DEFAULT nextval('public.exercise_performed_id_seq'::regclass);


--
-- TOC entry 3025 (class 0 OID 57600)
-- Dependencies: 197
-- Data for Name: exercise_performed; Type: TABLE DATA; Schema: public; Owner: updqeo4pn0axa
--

INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (9, 20240114, 1714099222, 47, '{"session": 20240425, "exerciseId": "47", "utcInSeconds": 1714099222, "cardioDetails": "", "cardioMinutes": "10", "cardioSeconds": "0", "cardioMilesMajor": "2", "cardioMilesMinor": "6"}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (10, 20240114, 1714099342, 40, '{"session": 20240425, "exerciseId": "40", "weightsReps": "10", "utcInSeconds": 1714099342, "weightsWeight": "10", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (11, 20240116, 1714101820, 47, '{"session": 20240425, "exerciseId": "47", "utcInSeconds": 1714101820, "cardioDetails": "", "cardioMinutes": "10", "cardioSeconds": "0", "cardioMilesMajor": "0", "cardioMilesMinor": "0"}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (12, 20240116, 1714101875, 36, '{"session": 20240425, "exerciseId": "36", "utcInSeconds": 1714101875, "cardioDetails": "5.5 mph", "cardioMinutes": "", "cardioSeconds": "", "cardioMilesMajor": "0", "cardioMilesMinor": "2"}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (13, 20240116, 1714101956, 42, '{"session": 20240425, "exerciseId": "42", "weightsReps": "10", "utcInSeconds": 1714101956, "weightsWeight": "25", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (14, 20240116, 1714101987, 42, '{"session": 20240425, "exerciseId": "42", "weightsReps": "10", "utcInSeconds": 1714101987, "weightsWeight": "35", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (15, 20240116, 1714102011, 42, '{"session": 20240425, "exerciseId": "42", "weightsReps": "10", "utcInSeconds": 1714102011, "weightsWeight": "45", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (16, 20240116, 1714102053, 38, '{"session": 20240425, "exerciseId": "38", "utcInSeconds": 1714102053, "simpleRepsReps": "10", "simpleRepsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (17, 20240116, 1714102180, 45, '{"session": 20240425, "exerciseId": "45", "utcInSeconds": 1714102180, "resistanceReps": "5", "resistanceWeight": "0", "resistanceDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (18, 20240116, 1714102295, 49, '{"session": 20240425, "exerciseId": "49", "weightsReps": "10", "utcInSeconds": 1714102295, "weightsWeight": "50", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (19, 20240116, 1714102331, 49, '{"session": 20240425, "exerciseId": "49", "weightsReps": "10", "utcInSeconds": 1714102331, "weightsWeight": "60", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (20, 20240116, 1714102361, 49, '{"session": 20240425, "exerciseId": "49", "weightsReps": "10", "utcInSeconds": 1714102361, "weightsWeight": "70", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (21, 20240116, 1714102404, 37, '{"session": 20240425, "exerciseId": "37", "weightsReps": "10", "utcInSeconds": 1714102404, "weightsWeight": "25", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (22, 20240116, 1714102516, 37, '{"session": 20240425, "exerciseId": "37", "weightsReps": "10", "utcInSeconds": 1714102516, "weightsWeight": "28", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (26, 20240123, 1714179375, 47, '{"session": 20240426, "exerciseId": "47", "utcInSeconds": 1714179375, "cardioDetails": "Recumbent bike half level 6 hills 10 minutes. six was too hard so changed to level five after halfway.", "cardioMinutes": "10", "cardioSeconds": "0", "cardioMilesMajor": "0", "cardioMilesMinor": "0"}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (27, 20240123, 1714179440, 37, '{"session": 20240426, "exerciseId": "37", "weightsReps": "10", "utcInSeconds": 1714179440, "weightsWeight": "25", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (28, 20240123, 1714179477, 39, '{"session": 20240426, "exerciseId": "39", "weightsReps": "10", "utcInSeconds": 1714179477, "weightsWeight": "25", "weightsDetails": "Five per arm "}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (29, 20240123, 1714179534, 42, '{"session": 20240426, "exerciseId": "42", "weightsReps": "10", "utcInSeconds": 1714179534, "weightsWeight": "25", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (30, 20240123, 1714179575, 48, '{"session": 20240426, "exerciseId": "48", "weightsReps": "20", "utcInSeconds": 1714179575, "weightsWeight": "40", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (31, 20240123, 1714179646, 48, '{"session": 20240426, "exerciseId": "48", "weightsReps": "10", "utcInSeconds": 1714179646, "weightsWeight": "50", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (32, 20240123, 1714179703, 42, '{"session": 20240426, "exerciseId": "42", "weightsReps": "10", "utcInSeconds": 1714179703, "weightsWeight": "35", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (35, 20240430, 1714502414, 47, '{"session": 20240430, "exerciseId": "47", "utcInSeconds": 1714502414, "cardioDetails": "Hills level 5", "cardioMinutes": "10", "cardioSeconds": "0", "cardioMilesMajor": "2", "cardioMilesMinor": "4"}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (36, 20240430, 1714502708, 42, '{"session": 20240430, "exerciseId": "42", "weightsReps": "10", "utcInSeconds": 1714502708, "weightsWeight": "25", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (37, 20240430, 1714502794, 37, '{"session": 20240430, "exerciseId": "37", "weightsReps": "10", "utcInSeconds": 1714502794, "weightsWeight": "25", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (38, 20240430, 1714502939, 40, '{"session": 20240430, "exerciseId": "40", "weightsReps": "10", "utcInSeconds": 1714502939, "weightsWeight": "25", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (39, 20240430, 1714503021, 42, '{"session": 20240430, "exerciseId": "42", "weightsReps": "10", "utcInSeconds": 1714503021, "weightsWeight": "35", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (40, 20240430, 1714503124, 37, '{"session": 20240430, "exerciseId": "37", "weightsReps": "10", "utcInSeconds": 1714503124, "weightsWeight": "27", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (41, 20240430, 1714503268, 40, '{"session": 20240430, "exerciseId": "40", "weightsReps": "10", "utcInSeconds": 1714503268, "weightsWeight": "35", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (42, 20240430, 1714503330, 38, '{"session": 20240430, "exerciseId": "38", "utcInSeconds": 1714503330, "simpleRepsReps": "10", "simpleRepsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (43, 20240430, 1714503434, 42, '{"session": 20240430, "exerciseId": "42", "weightsReps": "10", "utcInSeconds": 1714503434, "weightsWeight": "45", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (44, 20240430, 1714503558, 40, '{"session": 20240430, "exerciseId": "40", "weightsReps": "10", "utcInSeconds": 1714503558, "weightsWeight": "35", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (45, 20240430, 1714503620, 38, '{"session": 20240430, "exerciseId": "38", "utcInSeconds": 1714503620, "simpleRepsReps": "10", "simpleRepsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (46, 20240430, 1714503750, 37, '{"session": 20240430, "exerciseId": "37", "weightsReps": "10", "utcInSeconds": 1714503750, "weightsWeight": "27", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (47, 20240430, 1714503811, 38, '{"session": 20240430, "exerciseId": "38", "utcInSeconds": 1714503811, "simpleRepsReps": "10", "simpleRepsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (61, 20240506, 1715024141, 47, '{"session": 20240506, "exerciseId": "47", "utcInSeconds": 1715024141, "cardioDetails": "Did Hills for level five until last hill. I did level six.  96 cal", "cardioMinutes": "10", "cardioSeconds": "0", "cardioMilesMajor": "2", "cardioMilesMinor": "6"}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (62, 20240506, 1715024520, 48, '{"session": 20240506, "exerciseId": "48", "weightsReps": "10", "utcInSeconds": 1715024520, "weightsWeight": "60", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (63, 20240506, 1715024578, 48, '{"session": 20240506, "exerciseId": "48", "weightsReps": "10", "utcInSeconds": 1715024578, "weightsWeight": "60", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (64, 20240506, 1715024730, 48, '{"session": 20240506, "exerciseId": "48", "weightsReps": "10", "utcInSeconds": 1715024730, "weightsWeight": "70", "weightsDetails": "Getting hard"}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (65, 20240506, 1715025160, 46, '{"session": 20240506, "exerciseId": "46", "weightsReps": "10", "utcInSeconds": 1715025160, "weightsWeight": "60", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (66, 20240506, 1715026076, 46, '{"session": 20240506, "exerciseId": "46", "weightsReps": "10", "utcInSeconds": 1715026076, "weightsWeight": "70", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (67, 20240506, 1715026082, 46, '{"session": 20240506, "exerciseId": "46", "weightsReps": "10", "utcInSeconds": 1715026082, "weightsWeight": "80", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (68, 20240506, 1715026344, 42, '{"session": 20240506, "exerciseId": "42", "weightsReps": "10", "utcInSeconds": 1715026344, "weightsWeight": "35", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (69, 20240506, 1715026467, 38, '{"session": 20240506, "exerciseId": "38", "utcInSeconds": 1715026467, "simpleRepsReps": "10", "simpleRepsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (70, 20240506, 1715026606, 42, '{"session": 20240506, "exerciseId": "42", "weightsReps": "10", "utcInSeconds": 1715026606, "weightsWeight": "35", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (71, 20240506, 1715026678, 38, '{"session": 20240506, "exerciseId": "38", "utcInSeconds": 1715026678, "simpleRepsReps": "10", "simpleRepsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (72, 20240506, 1715026948, 42, '{"session": 20240506, "exerciseId": "42", "weightsReps": "10", "utcInSeconds": 1715026948, "weightsWeight": "35", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (79, 20240506, 1715051861, 40, '{"session": 20240506, "exerciseId": "40", "weightsReps": "10", "utcInSeconds": 1715051861, "weightsWeight": "25", "weightsDetails": ""}');


--
-- TOC entry 3032 (class 0 OID 0)
-- Dependencies: 196
-- Name: exercise_performed_id_seq; Type: SEQUENCE SET; Schema: public; Owner: updqeo4pn0axa
--

SELECT pg_catalog.setval('public.exercise_performed_id_seq', 79, true);


--
-- TOC entry 2902 (class 2606 OID 57608)
-- Name: exercise_performed exercise_performed_pkey; Type: CONSTRAINT; Schema: public; Owner: updqeo4pn0axa
--

ALTER TABLE ONLY public.exercise_performed
    ADD CONSTRAINT exercise_performed_pkey PRIMARY KEY (id);


-- Completed on 2024-05-07 21:30:41 EDT

--
-- PostgreSQL database dump complete
--

