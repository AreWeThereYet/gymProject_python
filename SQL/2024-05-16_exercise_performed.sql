--
-- PostgreSQL database dump
--

-- Dumped from database version 10.21
-- Dumped by pg_dump version 16.1

-- Started on 2024-05-16 23:10:58 EDT

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

DROP DATABASE IF EXISTS dbqiycouugxg3r;
--
-- TOC entry 3031 (class 1262 OID 41132)
-- Name: dbqiycouugxg3r; Type: DATABASE; Schema: -; Owner: sihncfgfc20ot
--

CREATE DATABASE dbqiycouugxg3r WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';


ALTER DATABASE dbqiycouugxg3r OWNER TO sihncfgfc20ot;

\connect dbqiycouugxg3r

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
-- TOC entry 3033 (class 0 OID 0)
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
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (82, 20240514, 1715723498, 47, '{"session": 20240514, "exerciseId": "47", "utcInSeconds": 1715723498, "cardioDetails": "Level 6 hard", "cardioMinutes": "10", "cardioSeconds": "0", "cardioMilesMajor": "2", "cardioMilesMinor": "3"}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (83, 20240514, 1715723565, 42, '{"session": 20240514, "exerciseId": "42", "weightsReps": "10", "utcInSeconds": 1715723565, "weightsWeight": "35", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (84, 20240514, 1715723590, 42, '{"session": 20240514, "exerciseId": "42", "weightsReps": "10", "utcInSeconds": 1715723590, "weightsWeight": "45", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (85, 20240514, 1715723610, 42, '{"session": 20240514, "exerciseId": "42", "weightsReps": "8", "utcInSeconds": 1715723610, "weightsWeight": "55", "weightsDetails": "Hard"}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (86, 20240514, 1715723643, 40, '{"session": 20240514, "exerciseId": "40", "weightsReps": "10", "utcInSeconds": 1715723643, "weightsWeight": "25", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (87, 20240514, 1715723659, 40, '{"session": 20240514, "exerciseId": "40", "weightsReps": "10", "utcInSeconds": 1715723659, "weightsWeight": "35", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (88, 20240514, 1715723710, 41, '{"session": 20240514, "exerciseId": "41", "weightsReps": "10", "utcInSeconds": 1715723710, "weightsWeight": "25", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (89, 20240514, 1715723720, 41, '{"session": 20240514, "exerciseId": "41", "weightsReps": "10", "utcInSeconds": 1715723720, "weightsWeight": "35", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (90, 20240514, 1715723792, 37, '{"session": 20240514, "exerciseId": "37", "weightsReps": "10", "utcInSeconds": 1715723792, "weightsWeight": "27", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (91, 20240514, 1715723804, 37, '{"session": 20240514, "exerciseId": "37", "weightsReps": "10", "utcInSeconds": 1715723804, "weightsWeight": "27", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (92, 20240514, 1715723815, 37, '{"session": 20240514, "exerciseId": "37", "weightsReps": "10", "utcInSeconds": 1715723815, "weightsWeight": "27", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (93, 20240516, 1715890323, 1, '{"oneLine": "215", "session": 20240516, "exerciseId": "1", "utcInSeconds": 1715890323}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (94, 20240516, 1715891173, 47, '{"session": 20240516, "exerciseId": "47", "utcInSeconds": 1715891173, "cardioDetails": "Level six all the way. Still hard", "cardioMinutes": "10", "cardioSeconds": "0", "cardioMilesMajor": "2", "cardioMilesMinor": "3"}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (95, 20240516, 1715891450, 42, '{"session": 20240516, "exerciseId": "42", "weightsReps": "10", "utcInSeconds": 1715891450, "weightsWeight": "25", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (96, 20240516, 1715891518, 41, '{"session": 20240516, "exerciseId": "41", "weightsReps": "10", "utcInSeconds": 1715891518, "weightsWeight": "25", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (97, 20240516, 1715891572, 40, '{"session": 20240516, "exerciseId": "40", "weightsReps": "10", "utcInSeconds": 1715891572, "weightsWeight": "25", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (98, 20240516, 1715891637, 42, '{"session": 20240516, "exerciseId": "42", "weightsReps": "10", "utcInSeconds": 1715891637, "weightsWeight": "25", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (99, 20240516, 1715891727, 41, '{"session": 20240516, "exerciseId": "41", "weightsReps": "10", "utcInSeconds": 1715891727, "weightsWeight": "25", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (100, 20240516, 1715891797, 40, '{"session": 20240516, "exerciseId": "40", "weightsReps": "10", "utcInSeconds": 1715891797, "weightsWeight": "25", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (101, 20240516, 1715891886, 42, '{"session": 20240516, "exerciseId": "42", "weightsReps": "10", "utcInSeconds": 1715891886, "weightsWeight": "45", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (102, 20240516, 1715891971, 41, '{"session": 20240516, "exerciseId": "41", "weightsReps": "10", "utcInSeconds": 1715891971, "weightsWeight": "25", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (103, 20240516, 1715892056, 40, '{"session": 20240516, "exerciseId": "40", "weightsReps": "10", "utcInSeconds": 1715892056, "weightsWeight": "25", "weightsDetails": ""}');
INSERT INTO public.exercise_performed (id, session_id, utc_seconds, exercise_id, exercise_details) VALUES (104, 20240516, 1715893204, 43, '{"session": 20240516, "exerciseId": "43", "utcInSeconds": 1715893204, "stairMasterLevel": "10", "stairMasterFloors": "4", "stairMasterDetails": "Hurts to start again", "stairMasterMinutes": "1", "stairMasterSeconds": "9"}');


--
-- TOC entry 3034 (class 0 OID 0)
-- Dependencies: 196
-- Name: exercise_performed_id_seq; Type: SEQUENCE SET; Schema: public; Owner: updqeo4pn0axa
--

SELECT pg_catalog.setval('public.exercise_performed_id_seq', 115, true);


--
-- TOC entry 2902 (class 2606 OID 57608)
-- Name: exercise_performed exercise_performed_pkey; Type: CONSTRAINT; Schema: public; Owner: updqeo4pn0axa
--

ALTER TABLE ONLY public.exercise_performed
    ADD CONSTRAINT exercise_performed_pkey PRIMARY KEY (id);


--
-- TOC entry 3032 (class 0 OID 0)
-- Dependencies: 3031
-- Name: DATABASE dbqiycouugxg3r; Type: ACL; Schema: -; Owner: sihncfgfc20ot
--

REVOKE CONNECT,TEMPORARY ON DATABASE dbqiycouugxg3r FROM PUBLIC;
GRANT ALL ON DATABASE dbqiycouugxg3r TO updqeo4pn0axa;


-- Completed on 2024-05-16 23:11:00 EDT

--
-- PostgreSQL database dump complete
--

