--
-- PostgreSQL database dump
--

-- Dumped from database version 10.23 (Ubuntu 10.23-1.pgdg20.04+1)
-- Dumped by pg_dump version 16.0

-- Started on 2024-02-21 12:31:03

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
-- TOC entry 230 (class 1259 OID 50538593)
-- Name: tickets; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tickets (
    id integer NOT NULL,
    departure character varying NOT NULL,
    arrival character varying NOT NULL,
    date_without_time_zone timestamp without time zone NOT NULL,
    price integer NOT NULL,
    date timestamp with time zone
);


--
-- TOC entry 231 (class 1259 OID 50538599)
-- Name: tickets_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tickets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4256 (class 0 OID 0)
-- Dependencies: 231
-- Name: tickets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tickets_id_seq OWNED BY public.tickets.id;


--
-- TOC entry 4124 (class 2604 OID 50538601)
-- Name: tickets id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tickets ALTER COLUMN id SET DEFAULT nextval('public.tickets_id_seq'::regclass);


--
-- TOC entry 4249 (class 0 OID 50538593)
-- Dependencies: 230
-- Data for Name: tickets; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.tickets VALUES (1, 'Bruxelles', 'Marseille', '2023-03-09 09:58:37.268', 126, '2023-03-09 09:58:37.268+00');
INSERT INTO public.tickets VALUES (2, 'Lyon', 'Paris', '2023-02-04 07:58:12.944', 62, '2023-02-04 07:58:12.944+00');
INSERT INTO public.tickets VALUES (3, 'Marseille', 'Lyon', '2023-02-07 13:37:19.741', 88, '2023-02-07 13:37:19.741+00');
INSERT INTO public.tickets VALUES (4, 'Paris', 'Marseille', '2023-02-12 20:59:45.474', 106, '2023-02-12 20:59:45.474+00');
INSERT INTO public.tickets VALUES (5, 'Paris', 'Lyon', '2023-01-27 01:06:51.944', 72, '2023-01-27 01:06:51.944+00');
INSERT INTO public.tickets VALUES (6, 'Bruxelles', 'Paris', '2023-01-18 09:15:23.749', 99, '2023-01-18 09:15:23.749+00');
INSERT INTO public.tickets VALUES (7, 'Paris', 'Lyon', '2023-01-14 19:37:14.409', 131, '2023-01-14 19:37:14.409+00');
INSERT INTO public.tickets VALUES (8, 'Paris', 'Lyon', '2023-02-20 05:33:38.922', 106, '2023-02-20 05:33:38.922+00');
INSERT INTO public.tickets VALUES (9, 'Marseille', 'Lyon', '2023-01-05 14:39:10.816', 103, '2023-01-05 14:39:10.816+00');
INSERT INTO public.tickets VALUES (10, 'Paris', 'Lyon', '2023-02-10 03:08:04.473', 44, '2023-02-10 03:08:04.473+00');
INSERT INTO public.tickets VALUES (11, 'Marseille', 'Lyon', '2023-02-24 12:47:04.969', 131, '2023-02-24 12:47:04.969+00');
INSERT INTO public.tickets VALUES (12, 'Bruxelles', 'Paris', '2023-02-22 06:05:09.837', 64, '2023-02-22 06:05:09.837+00');
INSERT INTO public.tickets VALUES (13, 'Bruxelles', 'Marseille', '2023-02-09 10:36:18.406', 25, '2023-02-09 10:36:18.406+00');
INSERT INTO public.tickets VALUES (14, 'Bruxelles', 'Lyon', '2023-02-27 13:52:46.748', 67, '2023-02-27 13:52:46.748+00');
INSERT INTO public.tickets VALUES (15, 'Paris', 'Lyon', '2023-03-05 21:51:00.33', 99, '2023-03-05 21:51:00.33+00');
INSERT INTO public.tickets VALUES (16, 'Paris', 'Lyon', '2023-02-01 02:48:33.439', 31, '2023-02-01 02:48:33.439+00');
INSERT INTO public.tickets VALUES (17, 'Bruxelles', 'Lyon', '2023-01-19 03:15:24.988', 67, '2023-01-19 03:15:24.988+00');
INSERT INTO public.tickets VALUES (18, 'Bruxelles', 'Marseille', '2023-03-01 23:53:15.025', 31, '2023-03-01 23:53:15.025+00');
INSERT INTO public.tickets VALUES (19, 'Lyon', 'Bruxelles', '2023-02-14 05:01:41.875', 50, '2023-02-14 05:01:41.875+00');
INSERT INTO public.tickets VALUES (20, 'Bruxelles', 'Marseille', '2023-03-10 02:40:18.905', 73, '2023-03-10 02:40:18.905+00');
INSERT INTO public.tickets VALUES (21, 'Paris', 'Lyon', '2023-02-03 13:43:13.699', 60, '2023-02-03 13:43:13.699+00');
INSERT INTO public.tickets VALUES (22, 'Lyon', 'Bruxelles', '2023-02-02 09:46:56.449', 104, '2023-02-02 09:46:56.449+00');
INSERT INTO public.tickets VALUES (23, 'Paris', 'Lyon', '2023-02-17 07:44:05.627', 109, '2023-02-17 07:44:05.627+00');
INSERT INTO public.tickets VALUES (24, 'Bruxelles', 'Marseille', '2023-01-25 22:47:46.247', 40, '2023-01-25 22:47:46.247+00');
INSERT INTO public.tickets VALUES (25, 'Bruxelles', 'Marseille', '2023-02-10 15:16:33.834', 41, '2023-02-10 15:16:33.834+00');
INSERT INTO public.tickets VALUES (26, 'Marseille', 'Paris', '2023-02-23 20:25:56.294', 123, '2023-02-23 20:25:56.294+00');
INSERT INTO public.tickets VALUES (27, 'Bruxelles', 'Paris', '2023-03-12 17:41:08.472', 123, '2023-03-12 17:41:08.472+00');
INSERT INTO public.tickets VALUES (28, 'Paris', 'Bruxelles', '2023-03-12 20:46:30.209', 51, '2023-03-12 20:46:30.209+00');
INSERT INTO public.tickets VALUES (29, 'Bruxelles', 'Marseille', '2023-02-23 05:15:44.234', 42, '2023-02-23 05:15:44.234+00');
INSERT INTO public.tickets VALUES (30, 'Marseille', 'Lyon', '2023-02-03 08:13:58.655', 43, '2023-02-03 08:13:58.655+00');
INSERT INTO public.tickets VALUES (31, 'Bruxelles', 'Paris', '2023-02-02 12:58:11.755', 142, '2023-02-02 12:58:11.755+00');
INSERT INTO public.tickets VALUES (32, 'Marseille', 'Bruxelles', '2023-01-29 01:01:20.881', 92, '2023-01-29 01:01:20.881+00');
INSERT INTO public.tickets VALUES (33, 'Lyon', 'Bruxelles', '2023-03-03 12:44:20.035', 70, '2023-03-03 12:44:20.035+00');
INSERT INTO public.tickets VALUES (34, 'Paris', 'Lyon', '2023-03-12 06:33:31.809', 142, '2023-03-12 06:33:31.809+00');
INSERT INTO public.tickets VALUES (35, 'Bruxelles', 'Paris', '2023-02-26 01:24:01.103', 63, '2023-02-26 01:24:01.103+00');
INSERT INTO public.tickets VALUES (36, 'Marseille', 'Lyon', '2023-03-09 00:43:37.46', 148, '2023-03-09 00:43:37.46+00');
INSERT INTO public.tickets VALUES (37, 'Marseille', 'Lyon', '2023-02-12 06:44:40.653', 145, '2023-02-12 06:44:40.653+00');
INSERT INTO public.tickets VALUES (38, 'Marseille', 'Lyon', '2023-02-25 03:05:25.251', 138, '2023-02-25 03:05:25.251+00');
INSERT INTO public.tickets VALUES (39, 'Bruxelles', 'Marseille', '2023-03-07 00:59:40.882', 95, '2023-03-07 00:59:40.882+00');
INSERT INTO public.tickets VALUES (40, 'Paris', 'Bruxelles', '2023-01-24 12:42:29.865', 44, '2023-01-24 12:42:29.865+00');
INSERT INTO public.tickets VALUES (41, 'Paris', 'Lyon', '2023-01-15 21:36:53.243', 29, '2023-01-15 21:36:53.243+00');
INSERT INTO public.tickets VALUES (42, 'Lyon', 'Marseille', '2023-03-10 05:05:39.554', 125, '2023-03-10 05:05:39.554+00');
INSERT INTO public.tickets VALUES (43, 'Paris', 'Lyon', '2023-01-06 23:20:21.055', 119, '2023-01-06 23:20:21.055+00');
INSERT INTO public.tickets VALUES (44, 'Lyon', 'Bruxelles', '2023-03-04 00:46:21.809', 90, '2023-03-04 00:46:21.809+00');
INSERT INTO public.tickets VALUES (45, 'Paris', 'Bruxelles', '2023-02-26 04:05:58.825', 99, '2023-02-26 04:05:58.825+00');
INSERT INTO public.tickets VALUES (46, 'Bruxelles', 'Marseille', '2023-02-12 03:37:03.962', 120, '2023-02-12 03:37:03.962+00');
INSERT INTO public.tickets VALUES (47, 'Paris', 'Lyon', '2023-01-01 18:33:19.855', 80, '2023-01-01 18:33:19.855+00');
INSERT INTO public.tickets VALUES (48, 'Bruxelles', 'Paris', '2023-03-08 23:40:30.583', 36, '2023-03-08 23:40:30.583+00');
INSERT INTO public.tickets VALUES (49, 'Marseille', 'Paris', '2023-03-03 19:11:13.341', 27, '2023-03-03 19:11:13.341+00');
INSERT INTO public.tickets VALUES (50, 'Marseille', 'Paris', '2023-01-13 21:21:30.415', 119, '2023-01-13 21:21:30.415+00');
INSERT INTO public.tickets VALUES (51, 'Bruxelles', 'Marseille', '2023-02-15 21:50:02.702', 102, '2023-02-15 21:50:02.702+00');
INSERT INTO public.tickets VALUES (52, 'Marseille', 'Lyon', '2023-01-02 21:50:06.105', 47, '2023-01-02 21:50:06.105+00');
INSERT INTO public.tickets VALUES (53, 'Bruxelles', 'Marseille', '2023-03-08 23:06:23.869', 69, '2023-03-08 23:06:23.869+00');
INSERT INTO public.tickets VALUES (54, 'Bruxelles', 'Marseille', '2023-01-07 02:09:19.108', 90, '2023-01-07 02:09:19.108+00');
INSERT INTO public.tickets VALUES (55, 'Bruxelles', 'Marseille', '2023-03-08 13:52:14.584', 70, '2023-03-08 13:52:14.584+00');
INSERT INTO public.tickets VALUES (56, 'Lyon', 'Bruxelles', '2023-01-10 20:09:54.468', 72, '2023-01-10 20:09:54.468+00');
INSERT INTO public.tickets VALUES (57, 'Bruxelles', 'Paris', '2023-02-04 17:08:23.235', 123, '2023-02-04 17:08:23.235+00');
INSERT INTO public.tickets VALUES (58, 'Paris', 'Marseille', '2023-02-06 21:01:23.088', 106, '2023-02-06 21:01:23.088+00');
INSERT INTO public.tickets VALUES (59, 'Paris', 'Bruxelles', '2023-02-16 18:55:14.312', 80, '2023-02-16 18:55:14.312+00');
INSERT INTO public.tickets VALUES (60, 'Marseille', 'Lyon', '2023-01-31 23:17:29.669', 35, '2023-01-31 23:17:29.669+00');
INSERT INTO public.tickets VALUES (61, 'Bruxelles', 'Paris', '2023-02-15 09:51:43.566', 136, '2023-02-15 09:51:43.566+00');
INSERT INTO public.tickets VALUES (62, 'Lyon', 'Paris', '2023-02-08 18:51:05.642', 86, '2023-02-08 18:51:05.642+00');
INSERT INTO public.tickets VALUES (63, 'Lyon', 'Paris', '2023-02-19 17:30:06.713', 146, '2023-02-19 17:30:06.713+00');
INSERT INTO public.tickets VALUES (64, 'Bruxelles', 'Paris', '2023-01-11 03:17:16.706', 47, '2023-01-11 03:17:16.706+00');
INSERT INTO public.tickets VALUES (65, 'Paris', 'Bruxelles', '2023-01-30 09:56:42.148', 54, '2023-01-30 09:56:42.148+00');
INSERT INTO public.tickets VALUES (66, 'Paris', 'Bruxelles', '2023-03-08 08:33:17.026', 100, '2023-03-08 08:33:17.026+00');
INSERT INTO public.tickets VALUES (67, 'Paris', 'Lyon', '2023-02-23 22:16:21.868', 80, '2023-02-23 22:16:21.868+00');
INSERT INTO public.tickets VALUES (68, 'Paris', 'Lyon', '2023-01-03 06:13:24.882', 77, '2023-01-03 06:13:24.882+00');
INSERT INTO public.tickets VALUES (69, 'Paris', 'Lyon', '2023-01-11 04:20:37.261', 79, '2023-01-11 04:20:37.261+00');
INSERT INTO public.tickets VALUES (70, 'Marseille', 'Lyon', '2023-03-06 15:52:03.202', 75, '2023-03-06 15:52:03.202+00');
INSERT INTO public.tickets VALUES (71, 'Marseille', 'Bruxelles', '2023-03-07 14:18:47.683', 102, '2023-03-07 14:18:47.683+00');
INSERT INTO public.tickets VALUES (72, 'Paris', 'Lyon', '2023-01-22 09:06:08.316', 87, '2023-01-22 09:06:08.316+00');
INSERT INTO public.tickets VALUES (73, 'Marseille', 'Lyon', '2023-02-25 13:05:35.852', 55, '2023-02-25 13:05:35.852+00');
INSERT INTO public.tickets VALUES (74, 'Lyon', 'Paris', '2023-01-12 14:36:48.387', 28, '2023-01-12 14:36:48.387+00');
INSERT INTO public.tickets VALUES (75, 'Paris', 'Lyon', '2023-01-14 06:00:08.141', 62, '2023-01-14 06:00:08.141+00');
INSERT INTO public.tickets VALUES (76, 'Paris', 'Lyon', '2023-01-27 17:27:06.465', 53, '2023-01-27 17:27:06.465+00');
INSERT INTO public.tickets VALUES (77, 'Bruxelles', 'Paris', '2023-01-26 22:14:22.717', 60, '2023-01-26 22:14:22.717+00');
INSERT INTO public.tickets VALUES (78, 'Bruxelles', 'Marseille', '2023-01-04 03:43:41.077', 106, '2023-01-04 03:43:41.077+00');
INSERT INTO public.tickets VALUES (79, 'Bruxelles', 'Paris', '2023-02-13 06:12:42.125', 31, '2023-02-13 06:12:42.125+00');
INSERT INTO public.tickets VALUES (80, 'Bruxelles', 'Marseille', '2023-02-23 13:23:47.809', 141, '2023-02-23 13:23:47.809+00');
INSERT INTO public.tickets VALUES (81, 'Lyon', 'Bruxelles', '2023-01-10 23:12:14.176', 31, '2023-01-10 23:12:14.176+00');
INSERT INTO public.tickets VALUES (82, 'Bruxelles', 'Marseille', '2023-02-21 13:58:19.066', 116, '2023-02-21 13:58:19.066+00');
INSERT INTO public.tickets VALUES (83, 'Bruxelles', 'Lyon', '2023-02-19 08:46:22.52', 136, '2023-02-19 08:46:22.52+00');
INSERT INTO public.tickets VALUES (84, 'Paris', 'Lyon', '2023-01-10 00:15:15.244', 70, '2023-01-10 00:15:15.244+00');
INSERT INTO public.tickets VALUES (85, 'Bruxelles', 'Paris', '2023-02-25 23:06:28.706', 147, '2023-02-25 23:06:28.706+00');
INSERT INTO public.tickets VALUES (86, 'Paris', 'Lyon', '2023-01-12 21:17:04.857', 112, '2023-01-12 21:17:04.857+00');
INSERT INTO public.tickets VALUES (87, 'Paris', 'Bruxelles', '2023-02-21 10:35:48.575', 91, '2023-02-21 10:35:48.575+00');
INSERT INTO public.tickets VALUES (88, 'Marseille', 'Lyon', '2023-01-30 09:23:50.438', 60, '2023-01-30 09:23:50.438+00');
INSERT INTO public.tickets VALUES (89, 'Lyon', 'Paris', '2023-02-09 07:30:37.534', 94, '2023-02-09 07:30:37.534+00');
INSERT INTO public.tickets VALUES (90, 'Bruxelles', 'Marseille', '2023-03-10 11:53:23.282', 81, '2023-03-10 11:53:23.282+00');
INSERT INTO public.tickets VALUES (91, 'Bruxelles', 'Lyon', '2023-01-26 19:52:30.791', 54, '2023-01-26 19:52:30.791+00');
INSERT INTO public.tickets VALUES (92, 'Paris', 'Lyon', '2023-01-12 10:42:54.552', 98, '2023-01-12 10:42:54.552+00');
INSERT INTO public.tickets VALUES (93, 'Lyon', 'Bruxelles', '2023-01-05 01:19:24.875', 93, '2023-01-05 01:19:24.875+00');
INSERT INTO public.tickets VALUES (94, 'Paris', 'Lyon', '2023-02-27 07:08:50.458', 73, '2023-02-27 07:08:50.458+00');
INSERT INTO public.tickets VALUES (95, 'Marseille', 'Bruxelles', '2023-01-05 10:13:05.293', 59, '2023-01-05 10:13:05.293+00');
INSERT INTO public.tickets VALUES (96, 'Bruxelles', 'Marseille', '2023-02-19 00:26:54.587', 33, '2023-02-19 00:26:54.587+00');
INSERT INTO public.tickets VALUES (97, 'Paris', 'Bruxelles', '2023-01-02 16:15:28.942', 116, '2023-01-02 16:15:28.942+00');
INSERT INTO public.tickets VALUES (98, 'Bruxelles', 'Paris', '2023-02-04 23:52:48.021', 48, '2023-02-04 23:52:48.021+00');
INSERT INTO public.tickets VALUES (99, 'Lyon', 'Paris', '2023-02-04 04:39:55.519', 65, '2023-02-04 04:39:55.519+00');
INSERT INTO public.tickets VALUES (100, 'Paris', 'Lyon', '2023-02-01 10:26:55.447', 35, '2023-02-01 10:26:55.447+00');
INSERT INTO public.tickets VALUES (101, 'Marseille', 'Bruxelles', '2023-01-21 03:43:23.8', 114, '2023-01-21 03:43:23.8+00');
INSERT INTO public.tickets VALUES (102, 'Paris', 'Lyon', '2023-01-11 08:32:22.518', 99, '2023-01-11 08:32:22.518+00');
INSERT INTO public.tickets VALUES (103, 'Paris', 'Bruxelles', '2023-01-18 08:30:56.693', 26, '2023-01-18 08:30:56.693+00');
INSERT INTO public.tickets VALUES (104, 'Paris', 'Bruxelles', '2023-01-11 02:55:10.668', 59, '2023-01-11 02:55:10.668+00');
INSERT INTO public.tickets VALUES (105, 'Bruxelles', 'Marseille', '2023-01-12 07:43:35.866', 28, '2023-01-12 07:43:35.866+00');
INSERT INTO public.tickets VALUES (106, 'Bruxelles', 'Paris', '2023-02-10 01:16:48.978', 65, '2023-02-10 01:16:48.978+00');
INSERT INTO public.tickets VALUES (107, 'Paris', 'Bruxelles', '2023-02-11 14:01:56.036', 140, '2023-02-11 14:01:56.036+00');
INSERT INTO public.tickets VALUES (108, 'Paris', 'Bruxelles', '2023-01-07 23:01:28.021', 146, '2023-01-07 23:01:28.021+00');
INSERT INTO public.tickets VALUES (109, 'Paris', 'Lyon', '2023-01-17 23:14:14.999', 32, '2023-01-17 23:14:14.999+00');
INSERT INTO public.tickets VALUES (110, 'Bruxelles', 'Marseille', '2023-02-13 06:32:36.389', 82, '2023-02-13 06:32:36.389+00');
INSERT INTO public.tickets VALUES (111, 'Paris', 'Lyon', '2023-01-06 22:21:36.581', 47, '2023-01-06 22:21:36.581+00');
INSERT INTO public.tickets VALUES (112, 'Bruxelles', 'Marseille', '2023-03-02 00:55:11.532', 124, '2023-03-02 00:55:11.532+00');
INSERT INTO public.tickets VALUES (113, 'Bruxelles', 'Lyon', '2023-02-20 18:49:13.495', 115, '2023-02-20 18:49:13.495+00');
INSERT INTO public.tickets VALUES (114, 'Paris', 'Bruxelles', '2023-03-05 04:03:18.816', 80, '2023-03-05 04:03:18.816+00');
INSERT INTO public.tickets VALUES (115, 'Bruxelles', 'Lyon', '2023-01-13 00:59:52.143', 109, '2023-01-13 00:59:52.143+00');
INSERT INTO public.tickets VALUES (116, 'Bruxelles', 'Lyon', '2023-02-28 19:53:43.129', 76, '2023-02-28 19:53:43.129+00');
INSERT INTO public.tickets VALUES (117, 'Paris', 'Bruxelles', '2023-02-16 06:10:43.804', 142, '2023-02-16 06:10:43.804+00');
INSERT INTO public.tickets VALUES (118, 'Paris', 'Bruxelles', '2023-01-05 21:51:13.695', 117, '2023-01-05 21:51:13.695+00');
INSERT INTO public.tickets VALUES (119, 'Paris', 'Bruxelles', '2023-02-13 03:32:47.117', 93, '2023-02-13 03:32:47.117+00');
INSERT INTO public.tickets VALUES (120, 'Paris', 'Bruxelles', '2023-02-23 03:20:52.139', 98, '2023-02-23 03:20:52.139+00');
INSERT INTO public.tickets VALUES (121, 'Paris', 'Marseille', '2023-02-24 05:19:45.171', 97, '2023-02-24 05:19:45.171+00');
INSERT INTO public.tickets VALUES (122, 'Marseille', 'Lyon', '2023-02-03 07:55:55.567', 41, '2023-02-03 07:55:55.567+00');
INSERT INTO public.tickets VALUES (123, 'Bruxelles', 'Marseille', '2023-03-01 10:46:08.31', 138, '2023-03-01 10:46:08.31+00');
INSERT INTO public.tickets VALUES (124, 'Bruxelles', 'Marseille', '2023-01-09 21:31:33.26', 60, '2023-01-09 21:31:33.26+00');
INSERT INTO public.tickets VALUES (125, 'Paris', 'Bruxelles', '2023-02-18 17:13:02.491', 88, '2023-02-18 17:13:02.491+00');
INSERT INTO public.tickets VALUES (126, 'Bruxelles', 'Lyon', '2023-02-24 07:31:44.249', 29, '2023-02-24 07:31:44.249+00');
INSERT INTO public.tickets VALUES (127, 'Paris', 'Lyon', '2023-02-17 12:59:29.185', 46, '2023-02-17 12:59:29.185+00');
INSERT INTO public.tickets VALUES (128, 'Paris', 'Bruxelles', '2023-03-06 09:23:53.752', 145, '2023-03-06 09:23:53.752+00');
INSERT INTO public.tickets VALUES (129, 'Paris', 'Bruxelles', '2023-01-13 04:33:44.817', 131, '2023-01-13 04:33:44.817+00');
INSERT INTO public.tickets VALUES (130, 'Paris', 'Bruxelles', '2023-01-22 06:16:11.271', 103, '2023-01-22 06:16:11.271+00');
INSERT INTO public.tickets VALUES (131, 'Bruxelles', 'Marseille', '2023-02-13 11:21:10.006', 47, '2023-02-13 11:21:10.006+00');
INSERT INTO public.tickets VALUES (132, 'Bruxelles', 'Marseille', '2023-02-20 06:48:56.352', 34, '2023-02-20 06:48:56.352+00');
INSERT INTO public.tickets VALUES (133, 'Marseille', 'Lyon', '2023-02-10 23:57:49.017', 115, '2023-02-10 23:57:49.017+00');
INSERT INTO public.tickets VALUES (134, 'Marseille', 'Paris', '2023-01-02 06:05:22.502', 38, '2023-01-02 06:05:22.502+00');
INSERT INTO public.tickets VALUES (135, 'Paris', 'Lyon', '2023-01-25 14:41:06.917', 93, '2023-01-25 14:41:06.917+00');
INSERT INTO public.tickets VALUES (136, 'Paris', 'Lyon', '2023-01-15 20:16:53.064', 136, '2023-01-15 20:16:53.064+00');
INSERT INTO public.tickets VALUES (137, 'Marseille', 'Lyon', '2023-01-11 07:01:36.298', 136, '2023-01-11 07:01:36.298+00');
INSERT INTO public.tickets VALUES (138, 'Lyon', 'Paris', '2023-01-04 12:14:25.946', 132, '2023-01-04 12:14:25.946+00');
INSERT INTO public.tickets VALUES (139, 'Paris', 'Bruxelles', '2023-01-13 19:33:37.066', 67, '2023-01-13 19:33:37.066+00');
INSERT INTO public.tickets VALUES (140, 'Marseille', 'Lyon', '2023-03-01 04:35:00.12', 56, '2023-03-01 04:35:00.12+00');
INSERT INTO public.tickets VALUES (141, 'Bruxelles', 'Lyon', '2023-01-16 22:19:45.232', 140, '2023-01-16 22:19:45.232+00');
INSERT INTO public.tickets VALUES (142, 'Bruxelles', 'Paris', '2023-01-23 13:10:56.314', 63, '2023-01-23 13:10:56.314+00');
INSERT INTO public.tickets VALUES (143, 'Marseille', 'Bruxelles', '2023-01-11 01:14:12.594', 67, '2023-01-11 01:14:12.594+00');
INSERT INTO public.tickets VALUES (144, 'Bruxelles', 'Lyon', '2023-03-04 20:16:37.354', 86, '2023-03-04 20:16:37.354+00');
INSERT INTO public.tickets VALUES (145, 'Paris', 'Lyon', '2023-02-10 02:00:50.168', 90, '2023-02-10 02:00:50.168+00');
INSERT INTO public.tickets VALUES (146, 'Paris', 'Lyon', '2023-02-26 06:34:07.434', 27, '2023-02-26 06:34:07.434+00');
INSERT INTO public.tickets VALUES (147, 'Bruxelles', 'Lyon', '2023-01-02 20:15:00.015', 36, '2023-01-02 20:15:00.015+00');
INSERT INTO public.tickets VALUES (148, 'Marseille', 'Bruxelles', '2023-01-17 00:27:42.184', 113, '2023-01-17 00:27:42.184+00');
INSERT INTO public.tickets VALUES (149, 'Paris', 'Lyon', '2023-01-19 15:44:17.871', 96, '2023-01-19 15:44:17.871+00');
INSERT INTO public.tickets VALUES (150, 'Lyon', 'Marseille', '2023-02-02 19:00:37.873', 57, '2023-02-02 19:00:37.873+00');
INSERT INTO public.tickets VALUES (151, 'Lyon', 'Bruxelles', '2023-03-03 04:51:27.261', 138, '2023-03-03 04:51:27.261+00');
INSERT INTO public.tickets VALUES (152, 'Marseille', 'Lyon', '2023-02-17 10:06:18.215', 78, '2023-02-17 10:06:18.215+00');
INSERT INTO public.tickets VALUES (153, 'Bruxelles', 'Lyon', '2023-01-08 19:19:28.496', 47, '2023-01-08 19:19:28.496+00');
INSERT INTO public.tickets VALUES (154, 'Marseille', 'Lyon', '2023-01-13 08:38:20.718', 50, '2023-01-13 08:38:20.718+00');
INSERT INTO public.tickets VALUES (155, 'Paris', 'Lyon', '2023-02-03 13:10:33.115', 48, '2023-02-03 13:10:33.115+00');
INSERT INTO public.tickets VALUES (156, 'Bruxelles', 'Paris', '2023-01-11 06:56:35.629', 41, '2023-01-11 06:56:35.629+00');
INSERT INTO public.tickets VALUES (157, 'Bruxelles', 'Marseille', '2023-01-22 23:33:40.595', 58, '2023-01-22 23:33:40.595+00');
INSERT INTO public.tickets VALUES (158, 'Paris', 'Lyon', '2023-03-07 08:32:05.597', 27, '2023-03-07 08:32:05.597+00');
INSERT INTO public.tickets VALUES (159, 'Lyon', 'Bruxelles', '2023-03-10 15:04:48.87', 97, '2023-03-10 15:04:48.87+00');
INSERT INTO public.tickets VALUES (160, 'Bruxelles', 'Lyon', '2023-02-25 17:27:48.694', 31, '2023-02-25 17:27:48.694+00');
INSERT INTO public.tickets VALUES (161, 'Marseille', 'Bruxelles', '2023-01-12 10:41:55.27', 97, '2023-01-12 10:41:55.27+00');
INSERT INTO public.tickets VALUES (162, 'Bruxelles', 'Marseille', '2023-03-02 09:01:37.818', 118, '2023-03-02 09:01:37.818+00');
INSERT INTO public.tickets VALUES (163, 'Marseille', 'Lyon', '2023-01-15 20:14:44.451', 43, '2023-01-15 20:14:44.451+00');
INSERT INTO public.tickets VALUES (164, 'Paris', 'Lyon', '2023-01-05 15:49:28.087', 125, '2023-01-05 15:49:28.087+00');
INSERT INTO public.tickets VALUES (165, 'Marseille', 'Lyon', '2023-01-28 02:27:48.079', 107, '2023-01-28 02:27:48.079+00');
INSERT INTO public.tickets VALUES (166, 'Bruxelles', 'Marseille', '2023-03-09 18:07:23.801', 76, '2023-03-09 18:07:23.801+00');
INSERT INTO public.tickets VALUES (167, 'Paris', 'Bruxelles', '2023-02-19 15:55:47.487', 143, '2023-02-19 15:55:47.487+00');
INSERT INTO public.tickets VALUES (168, 'Paris', 'Lyon', '2023-02-04 21:34:08.546', 145, '2023-02-04 21:34:08.546+00');
INSERT INTO public.tickets VALUES (169, 'Paris', 'Lyon', '2023-03-09 18:08:23.257', 134, '2023-03-09 18:08:23.257+00');
INSERT INTO public.tickets VALUES (170, 'Marseille', 'Bruxelles', '2023-02-01 23:20:49.007', 119, '2023-02-01 23:20:49.007+00');
INSERT INTO public.tickets VALUES (171, 'Paris', 'Lyon', '2023-01-06 06:04:33.409', 130, '2023-01-06 06:04:33.409+00');
INSERT INTO public.tickets VALUES (172, 'Marseille', 'Lyon', '2023-03-12 20:16:37.903', 106, '2023-03-12 20:16:37.903+00');
INSERT INTO public.tickets VALUES (173, 'Lyon', 'Paris', '2023-02-07 14:07:55.926', 60, '2023-02-07 14:07:55.926+00');
INSERT INTO public.tickets VALUES (174, 'Paris', 'Lyon', '2023-01-16 06:54:02.229', 56, '2023-01-16 06:54:02.229+00');
INSERT INTO public.tickets VALUES (175, 'Paris', 'Bruxelles', '2023-02-17 07:27:45.021', 33, '2023-02-17 07:27:45.021+00');
INSERT INTO public.tickets VALUES (176, 'Paris', 'Lyon', '2023-01-12 21:02:25.667', 44, '2023-01-12 21:02:25.667+00');
INSERT INTO public.tickets VALUES (177, 'Marseille', 'Paris', '2023-01-22 07:38:11.34', 119, '2023-01-22 07:38:11.34+00');
INSERT INTO public.tickets VALUES (178, 'Marseille', 'Lyon', '2023-03-08 18:51:49.558', 28, '2023-03-08 18:51:49.558+00');
INSERT INTO public.tickets VALUES (179, 'Marseille', 'Lyon', '2023-03-05 22:12:09.365', 123, '2023-03-05 22:12:09.365+00');
INSERT INTO public.tickets VALUES (180, 'Paris', 'Lyon', '2023-01-21 06:50:11.562', 77, '2023-01-21 06:50:11.562+00');
INSERT INTO public.tickets VALUES (181, 'Bruxelles', 'Marseille', '2023-02-16 12:10:29.043', 74, '2023-02-16 12:10:29.043+00');
INSERT INTO public.tickets VALUES (182, 'Paris', 'Lyon', '2023-01-21 11:57:04.388', 114, '2023-01-21 11:57:04.388+00');
INSERT INTO public.tickets VALUES (183, 'Bruxelles', 'Marseille', '2023-03-01 17:45:54.699', 71, '2023-03-01 17:45:54.699+00');
INSERT INTO public.tickets VALUES (184, 'Paris', 'Bruxelles', '2023-03-06 20:48:42.013', 112, '2023-03-06 20:48:42.013+00');
INSERT INTO public.tickets VALUES (185, 'Bruxelles', 'Marseille', '2023-03-07 12:29:55.61', 86, '2023-03-07 12:29:55.61+00');
INSERT INTO public.tickets VALUES (186, 'Bruxelles', 'Marseille', '2023-02-10 18:40:45.836', 46, '2023-02-10 18:40:45.836+00');
INSERT INTO public.tickets VALUES (187, 'Lyon', 'Paris', '2023-01-21 10:58:49.057', 85, '2023-01-21 10:58:49.057+00');
INSERT INTO public.tickets VALUES (188, 'Bruxelles', 'Paris', '2023-02-02 15:36:04.979', 112, '2023-02-02 15:36:04.979+00');
INSERT INTO public.tickets VALUES (189, 'Paris', 'Bruxelles', '2023-01-31 19:40:33.607', 67, '2023-01-31 19:40:33.607+00');
INSERT INTO public.tickets VALUES (190, 'Paris', 'Bruxelles', '2023-02-03 00:48:10.242', 112, '2023-02-03 00:48:10.242+00');
INSERT INTO public.tickets VALUES (191, 'Paris', 'Bruxelles', '2023-02-19 17:47:14.422', 53, '2023-02-19 17:47:14.422+00');
INSERT INTO public.tickets VALUES (192, 'Bruxelles', 'Marseille', '2023-03-01 21:58:13.425', 57, '2023-03-01 21:58:13.425+00');
INSERT INTO public.tickets VALUES (193, 'Paris', 'Lyon', '2023-01-09 02:11:47.406', 44, '2023-01-09 02:11:47.406+00');
INSERT INTO public.tickets VALUES (194, 'Bruxelles', 'Paris', '2023-03-11 01:10:16.782', 81, '2023-03-11 01:10:16.782+00');
INSERT INTO public.tickets VALUES (195, 'Paris', 'Lyon', '2023-02-04 16:54:10.392', 91, '2023-02-04 16:54:10.392+00');
INSERT INTO public.tickets VALUES (196, 'Marseille', 'Lyon', '2023-01-08 10:06:51.127', 122, '2023-01-08 10:06:51.127+00');
INSERT INTO public.tickets VALUES (197, 'Lyon', 'Marseille', '2023-03-11 09:47:59.538', 90, '2023-03-11 09:47:59.538+00');
INSERT INTO public.tickets VALUES (198, 'Paris', 'Bruxelles', '2023-02-06 07:46:08.512', 97, '2023-02-06 07:46:08.512+00');
INSERT INTO public.tickets VALUES (199, 'Bruxelles', 'Marseille', '2023-01-24 07:17:41.952', 51, '2023-01-24 07:17:41.952+00');
INSERT INTO public.tickets VALUES (200, 'Paris', 'Lyon', '2023-02-20 05:09:44.938', 108, '2023-02-20 05:09:44.938+00');
INSERT INTO public.tickets VALUES (201, 'Lyon', 'Bruxelles', '2023-02-02 17:23:13.687', 39, '2023-02-02 17:23:13.687+00');
INSERT INTO public.tickets VALUES (202, 'Bruxelles', 'Marseille', '2023-01-01 17:47:37.247', 130, '2023-01-01 17:47:37.247+00');
INSERT INTO public.tickets VALUES (203, 'Marseille', 'Bruxelles', '2023-02-23 07:40:12.549', 31, '2023-02-23 07:40:12.549+00');
INSERT INTO public.tickets VALUES (204, 'Marseille', 'Bruxelles', '2023-03-04 04:08:09.925', 129, '2023-03-04 04:08:09.925+00');
INSERT INTO public.tickets VALUES (205, 'Bruxelles', 'Lyon', '2023-01-07 12:10:59.657', 50, '2023-01-07 12:10:59.657+00');
INSERT INTO public.tickets VALUES (206, 'Paris', 'Bruxelles', '2023-02-05 23:05:33.784', 117, '2023-02-05 23:05:33.784+00');
INSERT INTO public.tickets VALUES (207, 'Lyon', 'Bruxelles', '2023-02-05 13:37:15.464', 58, '2023-02-05 13:37:15.464+00');
INSERT INTO public.tickets VALUES (208, 'Paris', 'Marseille', '2023-01-13 18:52:17.555', 25, '2023-01-13 18:52:17.555+00');
INSERT INTO public.tickets VALUES (209, 'Paris', 'Bruxelles', '2023-02-08 10:23:10.471', 75, '2023-02-08 10:23:10.471+00');
INSERT INTO public.tickets VALUES (210, 'Paris', 'Lyon', '2023-01-25 10:13:08.528', 80, '2023-01-25 10:13:08.528+00');
INSERT INTO public.tickets VALUES (211, 'Bruxelles', 'Paris', '2023-03-03 16:36:23.512', 64, '2023-03-03 16:36:23.512+00');
INSERT INTO public.tickets VALUES (212, 'Marseille', 'Lyon', '2023-01-14 10:31:58.722', 144, '2023-01-14 10:31:58.722+00');
INSERT INTO public.tickets VALUES (213, 'Paris', 'Lyon', '2023-03-10 01:38:49.323', 45, '2023-03-10 01:38:49.323+00');
INSERT INTO public.tickets VALUES (214, 'Bruxelles', 'Marseille', '2023-02-13 13:21:23.971', 36, '2023-02-13 13:21:23.971+00');
INSERT INTO public.tickets VALUES (215, 'Bruxelles', 'Paris', '2023-01-06 15:24:32.462', 91, '2023-01-06 15:24:32.462+00');
INSERT INTO public.tickets VALUES (216, 'Marseille', 'Bruxelles', '2023-01-02 15:10:36.529', 120, '2023-01-02 15:10:36.529+00');
INSERT INTO public.tickets VALUES (217, 'Paris', 'Lyon', '2023-02-08 01:09:24.109', 58, '2023-02-08 01:09:24.109+00');
INSERT INTO public.tickets VALUES (218, 'Paris', 'Bruxelles', '2023-03-08 00:43:12.274', 26, '2023-03-08 00:43:12.274+00');
INSERT INTO public.tickets VALUES (219, 'Marseille', 'Lyon', '2023-03-06 20:01:37.402', 80, '2023-03-06 20:01:37.402+00');
INSERT INTO public.tickets VALUES (220, 'Marseille', 'Bruxelles', '2023-01-21 15:30:08.52', 140, '2023-01-21 15:30:08.52+00');
INSERT INTO public.tickets VALUES (221, 'Lyon', 'Paris', '2023-01-05 10:06:25.925', 88, '2023-01-05 10:06:25.925+00');
INSERT INTO public.tickets VALUES (222, 'Bruxelles', 'Marseille', '2023-02-20 06:45:15.795', 103, '2023-02-20 06:45:15.795+00');
INSERT INTO public.tickets VALUES (223, 'Bruxelles', 'Paris', '2023-03-01 01:32:04.701', 97, '2023-03-01 01:32:04.701+00');
INSERT INTO public.tickets VALUES (224, 'Paris', 'Lyon', '2023-01-17 02:33:01.383', 102, '2023-01-17 02:33:01.383+00');
INSERT INTO public.tickets VALUES (225, 'Marseille', 'Lyon', '2023-01-24 09:59:41.322', 51, '2023-01-24 09:59:41.322+00');
INSERT INTO public.tickets VALUES (226, 'Paris', 'Bruxelles', '2023-02-21 13:53:42.651', 29, '2023-02-21 13:53:42.651+00');
INSERT INTO public.tickets VALUES (227, 'Bruxelles', 'Marseille', '2023-01-02 23:02:39.367', 42, '2023-01-02 23:02:39.367+00');
INSERT INTO public.tickets VALUES (228, 'Bruxelles', 'Marseille', '2023-01-26 19:20:41.787', 31, '2023-01-26 19:20:41.787+00');
INSERT INTO public.tickets VALUES (229, 'Bruxelles', 'Marseille', '2023-01-27 09:03:15.703', 121, '2023-01-27 09:03:15.703+00');
INSERT INTO public.tickets VALUES (230, 'Bruxelles', 'Marseille', '2023-01-04 04:51:46.72', 31, '2023-01-04 04:51:46.72+00');
INSERT INTO public.tickets VALUES (231, 'Bruxelles', 'Marseille', '2023-01-31 19:44:34.44', 66, '2023-01-31 19:44:34.44+00');
INSERT INTO public.tickets VALUES (232, 'Bruxelles', 'Marseille', '2023-01-22 14:55:21.42', 122, '2023-01-22 14:55:21.42+00');
INSERT INTO public.tickets VALUES (233, 'Marseille', 'Paris', '2023-01-04 22:51:07.226', 95, '2023-01-04 22:51:07.226+00');
INSERT INTO public.tickets VALUES (234, 'Paris', 'Bruxelles', '2023-02-16 17:56:59.26', 131, '2023-02-16 17:56:59.26+00');
INSERT INTO public.tickets VALUES (235, 'Bruxelles', 'Lyon', '2023-03-04 16:19:06.832', 146, '2023-03-04 16:19:06.832+00');
INSERT INTO public.tickets VALUES (236, 'Lyon', 'Paris', '2023-01-17 13:30:30.519', 144, '2023-01-17 13:30:30.519+00');
INSERT INTO public.tickets VALUES (237, 'Paris', 'Lyon', '2023-01-10 21:53:39.36', 109, '2023-01-10 21:53:39.36+00');
INSERT INTO public.tickets VALUES (238, 'Paris', 'Lyon', '2023-01-27 01:20:56.465', 40, '2023-01-27 01:20:56.465+00');
INSERT INTO public.tickets VALUES (239, 'Paris', 'Bruxelles', '2023-01-27 00:54:02.939', 140, '2023-01-27 00:54:02.939+00');
INSERT INTO public.tickets VALUES (240, 'Marseille', 'Bruxelles', '2023-01-12 14:12:59.425', 120, '2023-01-12 14:12:59.425+00');
INSERT INTO public.tickets VALUES (241, 'Paris', 'Lyon', '2023-02-07 19:15:15.632', 149, '2023-02-07 19:15:15.632+00');
INSERT INTO public.tickets VALUES (242, 'Bruxelles', 'Marseille', '2023-01-11 14:58:13.617', 140, '2023-01-11 14:58:13.617+00');
INSERT INTO public.tickets VALUES (243, 'Paris', 'Lyon', '2023-02-07 19:25:12.738', 39, '2023-02-07 19:25:12.738+00');
INSERT INTO public.tickets VALUES (244, 'Paris', 'Marseille', '2023-02-15 21:10:44.298', 132, '2023-02-15 21:10:44.298+00');
INSERT INTO public.tickets VALUES (245, 'Bruxelles', 'Lyon', '2023-02-18 02:21:15.996', 70, '2023-02-18 02:21:15.996+00');
INSERT INTO public.tickets VALUES (246, 'Paris', 'Lyon', '2023-02-20 15:17:07.751', 25, '2023-02-20 15:17:07.751+00');
INSERT INTO public.tickets VALUES (247, 'Marseille', 'Bruxelles', '2023-01-18 04:37:42.689', 99, '2023-01-18 04:37:42.689+00');
INSERT INTO public.tickets VALUES (248, 'Paris', 'Lyon', '2023-03-09 04:44:54.467', 69, '2023-03-09 04:44:54.467+00');
INSERT INTO public.tickets VALUES (249, 'Lyon', 'Marseille', '2023-01-24 21:05:14.443', 48, '2023-01-24 21:05:14.443+00');
INSERT INTO public.tickets VALUES (250, 'Marseille', 'Paris', '2023-03-04 04:24:42.048', 78, '2023-03-04 04:24:42.048+00');
INSERT INTO public.tickets VALUES (251, 'Paris', 'Lyon', '2023-01-04 15:49:15.326', 146, '2023-01-04 15:49:15.326+00');
INSERT INTO public.tickets VALUES (252, 'Paris', 'Lyon', '2023-01-29 23:03:11.662', 134, '2023-01-29 23:03:11.662+00');
INSERT INTO public.tickets VALUES (253, 'Paris', 'Lyon', '2023-02-21 04:12:22.681', 109, '2023-02-21 04:12:22.681+00');
INSERT INTO public.tickets VALUES (254, 'Paris', 'Lyon', '2023-01-04 02:11:32.414', 90, '2023-01-04 02:11:32.414+00');
INSERT INTO public.tickets VALUES (255, 'Marseille', 'Lyon', '2023-01-31 12:51:49.815', 47, '2023-01-31 12:51:49.815+00');
INSERT INTO public.tickets VALUES (256, 'Paris', 'Lyon', '2023-01-13 23:28:34.504', 143, '2023-01-13 23:28:34.504+00');
INSERT INTO public.tickets VALUES (257, 'Bruxelles', 'Marseille', '2023-02-24 05:23:53.64', 115, '2023-02-24 05:23:53.64+00');
INSERT INTO public.tickets VALUES (258, 'Lyon', 'Paris', '2023-02-25 07:02:07.278', 63, '2023-02-25 07:02:07.278+00');
INSERT INTO public.tickets VALUES (259, 'Bruxelles', 'Marseille', '2023-02-11 08:56:27.056', 88, '2023-02-11 08:56:27.056+00');
INSERT INTO public.tickets VALUES (260, 'Lyon', 'Marseille', '2023-02-17 10:36:18.539', 100, '2023-02-17 10:36:18.539+00');
INSERT INTO public.tickets VALUES (261, 'Bruxelles', 'Paris', '2023-01-08 07:01:25.761', 74, '2023-01-08 07:01:25.761+00');
INSERT INTO public.tickets VALUES (262, 'Marseille', 'Bruxelles', '2023-02-19 05:13:22.677', 45, '2023-02-19 05:13:22.677+00');
INSERT INTO public.tickets VALUES (263, 'Bruxelles', 'Marseille', '2023-01-16 02:01:25.138', 96, '2023-01-16 02:01:25.138+00');
INSERT INTO public.tickets VALUES (264, 'Bruxelles', 'Marseille', '2023-02-12 04:24:42.559', 66, '2023-02-12 04:24:42.559+00');
INSERT INTO public.tickets VALUES (265, 'Bruxelles', 'Marseille', '2023-02-27 04:34:36.355', 53, '2023-02-27 04:34:36.355+00');
INSERT INTO public.tickets VALUES (266, 'Paris', 'Bruxelles', '2023-01-27 15:29:58.867', 41, '2023-01-27 15:29:58.867+00');
INSERT INTO public.tickets VALUES (267, 'Marseille', 'Lyon', '2023-03-10 02:51:55.26', 130, '2023-03-10 02:51:55.26+00');
INSERT INTO public.tickets VALUES (268, 'Paris', 'Lyon', '2023-02-07 03:15:40.013', 136, '2023-02-07 03:15:40.013+00');
INSERT INTO public.tickets VALUES (269, 'Marseille', 'Paris', '2023-02-24 07:19:45.145', 136, '2023-02-24 07:19:45.145+00');
INSERT INTO public.tickets VALUES (270, 'Paris', 'Lyon', '2023-03-05 16:14:40.571', 118, '2023-03-05 16:14:40.571+00');
INSERT INTO public.tickets VALUES (271, 'Marseille', 'Lyon', '2023-01-23 10:49:16.258', 97, '2023-01-23 10:49:16.258+00');
INSERT INTO public.tickets VALUES (272, 'Bruxelles', 'Marseille', '2023-02-06 16:59:59.09', 59, '2023-02-06 16:59:59.09+00');
INSERT INTO public.tickets VALUES (273, 'Paris', 'Lyon', '2023-02-17 19:26:41.623', 103, '2023-02-17 19:26:41.623+00');
INSERT INTO public.tickets VALUES (274, 'Bruxelles', 'Marseille', '2023-02-17 08:40:11.604', 88, '2023-02-17 08:40:11.604+00');
INSERT INTO public.tickets VALUES (275, 'Paris', 'Bruxelles', '2023-02-09 15:28:29.626', 137, '2023-02-09 15:28:29.626+00');
INSERT INTO public.tickets VALUES (276, 'Marseille', 'Bruxelles', '2023-01-18 16:03:38.574', 126, '2023-01-18 16:03:38.574+00');
INSERT INTO public.tickets VALUES (277, 'Paris', 'Lyon', '2023-03-05 14:40:48.433', 86, '2023-03-05 14:40:48.433+00');
INSERT INTO public.tickets VALUES (278, 'Paris', 'Marseille', '2023-02-10 03:43:21.654', 30, '2023-02-10 03:43:21.654+00');
INSERT INTO public.tickets VALUES (279, 'Paris', 'Bruxelles', '2023-01-20 11:33:25.253', 59, '2023-01-20 11:33:25.253+00');
INSERT INTO public.tickets VALUES (280, 'Lyon', 'Bruxelles', '2023-01-29 08:24:57.515', 138, '2023-01-29 08:24:57.515+00');
INSERT INTO public.tickets VALUES (281, 'Bruxelles', 'Marseille', '2023-02-07 18:07:03.062', 44, '2023-02-07 18:07:03.062+00');
INSERT INTO public.tickets VALUES (282, 'Marseille', 'Lyon', '2023-02-26 12:53:16.662', 50, '2023-02-26 12:53:16.662+00');
INSERT INTO public.tickets VALUES (283, 'Paris', 'Bruxelles', '2023-03-12 02:02:41.875', 113, '2023-03-12 02:02:41.875+00');
INSERT INTO public.tickets VALUES (284, 'Paris', 'Lyon', '2023-02-23 05:24:01.399', 73, '2023-02-23 05:24:01.399+00');
INSERT INTO public.tickets VALUES (285, 'Paris', 'Lyon', '2023-01-07 19:33:14.859', 33, '2023-01-07 19:33:14.859+00');
INSERT INTO public.tickets VALUES (286, 'Bruxelles', 'Paris', '2023-01-23 05:58:56.998', 54, '2023-01-23 05:58:56.998+00');
INSERT INTO public.tickets VALUES (287, 'Paris', 'Lyon', '2023-02-09 04:26:51.104', 78, '2023-02-09 04:26:51.104+00');
INSERT INTO public.tickets VALUES (288, 'Paris', 'Lyon', '2023-03-12 20:43:04.445', 52, '2023-03-12 20:43:04.445+00');
INSERT INTO public.tickets VALUES (289, 'Bruxelles', 'Paris', '2023-01-29 16:41:22.469', 38, '2023-01-29 16:41:22.469+00');
INSERT INTO public.tickets VALUES (290, 'Bruxelles', 'Paris', '2023-01-23 10:51:31.977', 109, '2023-01-23 10:51:31.977+00');
INSERT INTO public.tickets VALUES (291, 'Paris', 'Bruxelles', '2023-01-08 16:55:54.695', 123, '2023-01-08 16:55:54.695+00');
INSERT INTO public.tickets VALUES (292, 'Marseille', 'Paris', '2023-01-30 16:34:17.586', 78, '2023-01-30 16:34:17.586+00');
INSERT INTO public.tickets VALUES (293, 'Marseille', 'Lyon', '2023-02-13 00:02:18.882', 117, '2023-02-13 00:02:18.882+00');
INSERT INTO public.tickets VALUES (294, 'Paris', 'Bruxelles', '2023-01-31 13:27:26.363', 138, '2023-01-31 13:27:26.363+00');
INSERT INTO public.tickets VALUES (295, 'Paris', 'Bruxelles', '2023-01-27 01:14:44.06', 127, '2023-01-27 01:14:44.06+00');
INSERT INTO public.tickets VALUES (296, 'Marseille', 'Lyon', '2023-01-28 04:12:49.928', 51, '2023-01-28 04:12:49.928+00');
INSERT INTO public.tickets VALUES (297, 'Paris', 'Lyon', '2023-02-12 00:05:03.289', 149, '2023-02-12 00:05:03.289+00');
INSERT INTO public.tickets VALUES (298, 'Marseille', 'Paris', '2023-03-09 04:17:40.74', 38, '2023-03-09 04:17:40.74+00');
INSERT INTO public.tickets VALUES (299, 'Lyon', 'Bruxelles', '2023-01-15 01:39:56.064', 131, '2023-01-15 01:39:56.064+00');
INSERT INTO public.tickets VALUES (300, 'Lyon', 'Bruxelles', '2023-03-12 15:04:41.725', 59, '2023-03-12 15:04:41.725+00');
INSERT INTO public.tickets VALUES (301, 'Lyon', 'Bruxelles', '2023-03-10 10:19:57.182', 26, '2023-03-10 10:19:57.182+00');
INSERT INTO public.tickets VALUES (302, 'Paris', 'Lyon', '2023-01-03 01:06:28.146', 110, '2023-01-03 01:06:28.146+00');
INSERT INTO public.tickets VALUES (303, 'Lyon', 'Paris', '2023-01-25 03:46:22.823', 82, '2023-01-25 03:46:22.823+00');
INSERT INTO public.tickets VALUES (304, 'Bruxelles', 'Marseille', '2023-02-12 16:47:01.851', 128, '2023-02-12 16:47:01.851+00');
INSERT INTO public.tickets VALUES (305, 'Marseille', 'Lyon', '2023-01-15 07:17:24.779', 82, '2023-01-15 07:17:24.779+00');
INSERT INTO public.tickets VALUES (306, 'Bruxelles', 'Marseille', '2023-01-21 16:29:23.839', 43, '2023-01-21 16:29:23.839+00');
INSERT INTO public.tickets VALUES (307, 'Marseille', 'Paris', '2023-02-22 02:40:17.491', 65, '2023-02-22 02:40:17.491+00');
INSERT INTO public.tickets VALUES (308, 'Paris', 'Bruxelles', '2023-01-20 01:19:31.809', 135, '2023-01-20 01:19:31.809+00');
INSERT INTO public.tickets VALUES (309, 'Bruxelles', 'Paris', '2023-02-21 05:23:27.052', 44, '2023-02-21 05:23:27.052+00');
INSERT INTO public.tickets VALUES (310, 'Paris', 'Marseille', '2023-01-21 09:35:56.568', 93, '2023-01-21 09:35:56.568+00');
INSERT INTO public.tickets VALUES (311, 'Paris', 'Lyon', '2023-01-28 12:48:37.887', 108, '2023-01-28 12:48:37.887+00');
INSERT INTO public.tickets VALUES (312, 'Paris', 'Bruxelles', '2023-01-09 06:13:14.62', 131, '2023-01-09 06:13:14.62+00');
INSERT INTO public.tickets VALUES (313, 'Bruxelles', 'Marseille', '2023-03-07 18:00:45.723', 49, '2023-03-07 18:00:45.723+00');
INSERT INTO public.tickets VALUES (314, 'Paris', 'Lyon', '2023-02-11 21:31:48.329', 57, '2023-02-11 21:31:48.329+00');
INSERT INTO public.tickets VALUES (315, 'Bruxelles', 'Marseille', '2023-03-02 16:02:42.542', 121, '2023-03-02 16:02:42.542+00');
INSERT INTO public.tickets VALUES (316, 'Paris', 'Lyon', '2023-02-17 13:18:48.849', 48, '2023-02-17 13:18:48.849+00');
INSERT INTO public.tickets VALUES (317, 'Paris', 'Lyon', '2023-02-19 01:08:09.843', 109, '2023-02-19 01:08:09.843+00');
INSERT INTO public.tickets VALUES (318, 'Marseille', 'Bruxelles', '2023-01-10 18:14:34.782', 64, '2023-01-10 18:14:34.782+00');
INSERT INTO public.tickets VALUES (319, 'Paris', 'Lyon', '2023-02-08 06:14:38.355', 33, '2023-02-08 06:14:38.355+00');
INSERT INTO public.tickets VALUES (320, 'Marseille', 'Paris', '2023-01-28 22:38:57.517', 98, '2023-01-28 22:38:57.517+00');
INSERT INTO public.tickets VALUES (321, 'Lyon', 'Marseille', '2023-01-27 11:35:15.368', 140, '2023-01-27 11:35:15.368+00');
INSERT INTO public.tickets VALUES (322, 'Paris', 'Lyon', '2023-02-09 12:27:37.999', 42, '2023-02-09 12:27:37.999+00');
INSERT INTO public.tickets VALUES (323, 'Bruxelles', 'Paris', '2023-02-18 07:06:53.361', 54, '2023-02-18 07:06:53.361+00');
INSERT INTO public.tickets VALUES (324, 'Bruxelles', 'Paris', '2023-01-14 07:49:41.771', 116, '2023-01-14 07:49:41.771+00');
INSERT INTO public.tickets VALUES (325, 'Bruxelles', 'Paris', '2023-02-01 00:25:18.042', 34, '2023-02-01 00:25:18.042+00');
INSERT INTO public.tickets VALUES (326, 'Bruxelles', 'Marseille', '2023-01-25 14:58:17.664', 79, '2023-01-25 14:58:17.664+00');
INSERT INTO public.tickets VALUES (327, 'Bruxelles', 'Lyon', '2023-02-15 11:39:13.697', 122, '2023-02-15 11:39:13.697+00');
INSERT INTO public.tickets VALUES (328, 'Paris', 'Marseille', '2023-03-07 12:41:15.978', 131, '2023-03-07 12:41:15.978+00');
INSERT INTO public.tickets VALUES (329, 'Marseille', 'Lyon', '2023-03-09 05:48:55.219', 55, '2023-03-09 05:48:55.219+00');
INSERT INTO public.tickets VALUES (330, 'Paris', 'Lyon', '2023-01-12 15:53:24.057', 99, '2023-01-12 15:53:24.057+00');
INSERT INTO public.tickets VALUES (331, 'Marseille', 'Lyon', '2023-01-22 07:35:47.042', 94, '2023-01-22 07:35:47.042+00');
INSERT INTO public.tickets VALUES (332, 'Marseille', 'Bruxelles', '2023-01-30 23:56:40.473', 101, '2023-01-30 23:56:40.473+00');
INSERT INTO public.tickets VALUES (333, 'Bruxelles', 'Paris', '2023-03-10 13:40:06.42', 74, '2023-03-10 13:40:06.42+00');
INSERT INTO public.tickets VALUES (334, 'Marseille', 'Bruxelles', '2023-02-12 16:54:13.414', 43, '2023-02-12 16:54:13.414+00');
INSERT INTO public.tickets VALUES (335, 'Marseille', 'Paris', '2023-02-22 10:44:39.135', 138, '2023-02-22 10:44:39.135+00');
INSERT INTO public.tickets VALUES (336, 'Paris', 'Lyon', '2023-02-20 03:31:38.219', 56, '2023-02-20 03:31:38.219+00');
INSERT INTO public.tickets VALUES (337, 'Paris', 'Bruxelles', '2023-01-04 02:20:11.378', 33, '2023-01-04 02:20:11.378+00');
INSERT INTO public.tickets VALUES (338, 'Paris', 'Lyon', '2023-03-11 00:15:59.588', 58, '2023-03-11 00:15:59.588+00');
INSERT INTO public.tickets VALUES (339, 'Paris', 'Lyon', '2023-02-06 23:19:17.305', 137, '2023-02-06 23:19:17.305+00');
INSERT INTO public.tickets VALUES (340, 'Bruxelles', 'Marseille', '2023-02-18 12:40:35.346', 78, '2023-02-18 12:40:35.346+00');
INSERT INTO public.tickets VALUES (341, 'Paris', 'Bruxelles', '2023-01-06 03:04:08.699', 60, '2023-01-06 03:04:08.699+00');
INSERT INTO public.tickets VALUES (342, 'Paris', 'Marseille', '2023-02-09 04:19:04.473', 40, '2023-02-09 04:19:04.473+00');
INSERT INTO public.tickets VALUES (343, 'Lyon', 'Bruxelles', '2023-02-19 12:18:55.643', 55, '2023-02-19 12:18:55.643+00');
INSERT INTO public.tickets VALUES (344, 'Marseille', 'Bruxelles', '2023-02-25 22:49:35.667', 71, '2023-02-25 22:49:35.667+00');
INSERT INTO public.tickets VALUES (345, 'Marseille', 'Lyon', '2023-01-22 08:01:04.945', 34, '2023-01-22 08:01:04.945+00');
INSERT INTO public.tickets VALUES (346, 'Marseille', 'Lyon', '2023-01-18 15:39:12.649', 77, '2023-01-18 15:39:12.649+00');
INSERT INTO public.tickets VALUES (347, 'Paris', 'Marseille', '2023-02-19 21:23:38.772', 33, '2023-02-19 21:23:38.772+00');
INSERT INTO public.tickets VALUES (348, 'Paris', 'Lyon', '2023-01-20 12:25:13.48', 132, '2023-01-20 12:25:13.48+00');
INSERT INTO public.tickets VALUES (349, 'Bruxelles', 'Paris', '2023-03-06 10:52:33.545', 36, '2023-03-06 10:52:33.545+00');
INSERT INTO public.tickets VALUES (350, 'Paris', 'Lyon', '2023-02-24 09:59:18.85', 120, '2023-02-24 09:59:18.85+00');
INSERT INTO public.tickets VALUES (351, 'Bruxelles', 'Marseille', '2023-02-28 22:09:48.94', 112, '2023-02-28 22:09:48.94+00');
INSERT INTO public.tickets VALUES (352, 'Paris', 'Lyon', '2023-02-07 04:15:52.109', 140, '2023-02-07 04:15:52.109+00');
INSERT INTO public.tickets VALUES (353, 'Bruxelles', 'Marseille', '2023-01-17 04:20:11.127', 28, '2023-01-17 04:20:11.127+00');
INSERT INTO public.tickets VALUES (354, 'Bruxelles', 'Marseille', '2023-02-18 15:50:10.787', 124, '2023-02-18 15:50:10.787+00');
INSERT INTO public.tickets VALUES (355, 'Paris', 'Bruxelles', '2023-01-25 08:58:31.33', 110, '2023-01-25 08:58:31.33+00');
INSERT INTO public.tickets VALUES (356, 'Bruxelles', 'Marseille', '2023-02-24 09:11:32.31', 133, '2023-02-24 09:11:32.31+00');
INSERT INTO public.tickets VALUES (357, 'Marseille', 'Bruxelles', '2023-01-30 08:05:51.996', 125, '2023-01-30 08:05:51.996+00');
INSERT INTO public.tickets VALUES (358, 'Paris', 'Lyon', '2023-02-03 19:59:01.727', 145, '2023-02-03 19:59:01.727+00');
INSERT INTO public.tickets VALUES (359, 'Paris', 'Lyon', '2023-02-03 16:27:18.936', 132, '2023-02-03 16:27:18.936+00');
INSERT INTO public.tickets VALUES (360, 'Paris', 'Lyon', '2023-02-20 09:56:35.14', 122, '2023-02-20 09:56:35.14+00');
INSERT INTO public.tickets VALUES (361, 'Lyon', 'Bruxelles', '2023-01-25 12:06:01.041', 142, '2023-01-25 12:06:01.041+00');
INSERT INTO public.tickets VALUES (362, 'Bruxelles', 'Marseille', '2023-01-14 14:10:43.944', 105, '2023-01-14 14:10:43.944+00');
INSERT INTO public.tickets VALUES (363, 'Marseille', 'Bruxelles', '2023-01-19 01:07:31.878', 133, '2023-01-19 01:07:31.878+00');
INSERT INTO public.tickets VALUES (364, 'Paris', 'Lyon', '2023-02-10 01:40:18.282', 129, '2023-02-10 01:40:18.282+00');
INSERT INTO public.tickets VALUES (365, 'Marseille', 'Bruxelles', '2023-02-09 09:34:39.127', 126, '2023-02-09 09:34:39.127+00');
INSERT INTO public.tickets VALUES (366, 'Marseille', 'Lyon', '2023-01-08 07:29:31.865', 122, '2023-01-08 07:29:31.865+00');
INSERT INTO public.tickets VALUES (367, 'Lyon', 'Paris', '2023-01-07 22:58:32.69', 46, '2023-01-07 22:58:32.69+00');
INSERT INTO public.tickets VALUES (368, 'Paris', 'Marseille', '2023-02-12 22:26:27.908', 137, '2023-02-12 22:26:27.908+00');
INSERT INTO public.tickets VALUES (369, 'Bruxelles', 'Marseille', '2023-03-08 06:21:57.109', 55, '2023-03-08 06:21:57.109+00');
INSERT INTO public.tickets VALUES (370, 'Bruxelles', 'Marseille', '2023-01-02 14:44:22.667', 51, '2023-01-02 14:44:22.667+00');
INSERT INTO public.tickets VALUES (371, 'Paris', 'Lyon', '2023-02-15 04:58:31.352', 104, '2023-02-15 04:58:31.352+00');
INSERT INTO public.tickets VALUES (372, 'Bruxelles', 'Marseille', '2023-01-31 16:31:16.143', 57, '2023-01-31 16:31:16.143+00');
INSERT INTO public.tickets VALUES (373, 'Marseille', 'Paris', '2023-01-29 02:24:29.669', 86, '2023-01-29 02:24:29.669+00');
INSERT INTO public.tickets VALUES (374, 'Marseille', 'Lyon', '2023-02-16 12:37:08.938', 73, '2023-02-16 12:37:08.938+00');
INSERT INTO public.tickets VALUES (375, 'Lyon', 'Marseille', '2023-02-18 11:13:48.79', 121, '2023-02-18 11:13:48.79+00');
INSERT INTO public.tickets VALUES (376, 'Bruxelles', 'Paris', '2023-01-05 04:16:43.01', 122, '2023-01-05 04:16:43.01+00');
INSERT INTO public.tickets VALUES (377, 'Bruxelles', 'Marseille', '2023-02-15 12:16:57.129', 79, '2023-02-15 12:16:57.129+00');
INSERT INTO public.tickets VALUES (378, 'Paris', 'Lyon', '2023-01-11 05:12:29.421', 130, '2023-01-11 05:12:29.421+00');
INSERT INTO public.tickets VALUES (379, 'Paris', 'Bruxelles', '2023-02-20 15:29:14.415', 93, '2023-02-20 15:29:14.415+00');
INSERT INTO public.tickets VALUES (380, 'Bruxelles', 'Marseille', '2023-02-05 17:29:01.737', 122, '2023-02-05 17:29:01.737+00');
INSERT INTO public.tickets VALUES (381, 'Marseille', 'Lyon', '2023-01-31 01:41:18.302', 99, '2023-01-31 01:41:18.302+00');
INSERT INTO public.tickets VALUES (382, 'Bruxelles', 'Marseille', '2023-02-27 19:00:07.123', 28, '2023-02-27 19:00:07.123+00');
INSERT INTO public.tickets VALUES (383, 'Paris', 'Bruxelles', '2023-01-01 10:46:13.531', 46, '2023-01-01 10:46:13.531+00');
INSERT INTO public.tickets VALUES (384, 'Paris', 'Marseille', '2023-01-01 09:57:08.621', 88, '2023-01-01 09:57:08.621+00');
INSERT INTO public.tickets VALUES (385, 'Lyon', 'Paris', '2023-02-14 13:17:11.602', 40, '2023-02-14 13:17:11.602+00');
INSERT INTO public.tickets VALUES (386, 'Lyon', 'Paris', '2023-02-16 18:07:31.136', 106, '2023-02-16 18:07:31.136+00');
INSERT INTO public.tickets VALUES (387, 'Marseille', 'Lyon', '2023-02-16 12:17:09.272', 54, '2023-02-16 12:17:09.272+00');
INSERT INTO public.tickets VALUES (388, 'Marseille', 'Lyon', '2023-01-26 02:35:57.135', 36, '2023-01-26 02:35:57.135+00');
INSERT INTO public.tickets VALUES (389, 'Paris', 'Lyon', '2023-02-17 11:47:20.632', 121, '2023-02-17 11:47:20.632+00');
INSERT INTO public.tickets VALUES (390, 'Bruxelles', 'Paris', '2023-02-15 13:05:09.316', 66, '2023-02-15 13:05:09.316+00');
INSERT INTO public.tickets VALUES (391, 'Bruxelles', 'Marseille', '2023-01-27 02:22:31.985', 64, '2023-01-27 02:22:31.985+00');
INSERT INTO public.tickets VALUES (392, 'Paris', 'Lyon', '2023-03-04 09:24:24.647', 76, '2023-03-04 09:24:24.647+00');
INSERT INTO public.tickets VALUES (393, 'Paris', 'Lyon', '2023-02-12 09:10:41.068', 98, '2023-02-12 09:10:41.068+00');
INSERT INTO public.tickets VALUES (394, 'Bruxelles', 'Marseille', '2023-01-05 19:02:46.252', 120, '2023-01-05 19:02:46.252+00');
INSERT INTO public.tickets VALUES (395, 'Paris', 'Bruxelles', '2023-03-10 22:24:57.658', 113, '2023-03-10 22:24:57.658+00');
INSERT INTO public.tickets VALUES (396, 'Marseille', 'Lyon', '2023-03-03 01:26:43.624', 132, '2023-03-03 01:26:43.624+00');
INSERT INTO public.tickets VALUES (397, 'Paris', 'Bruxelles', '2023-02-15 23:54:31.533', 95, '2023-02-15 23:54:31.533+00');
INSERT INTO public.tickets VALUES (398, 'Bruxelles', 'Marseille', '2023-01-15 17:30:28.012', 142, '2023-01-15 17:30:28.012+00');
INSERT INTO public.tickets VALUES (399, 'Paris', 'Lyon', '2023-01-04 03:48:15.598', 70, '2023-01-04 03:48:15.598+00');
INSERT INTO public.tickets VALUES (400, 'Paris', 'Bruxelles', '2023-01-20 21:50:15.472', 45, '2023-01-20 21:50:15.472+00');
INSERT INTO public.tickets VALUES (401, 'Paris', 'Bruxelles', '2023-01-27 08:21:52.032', 102, '2023-01-27 08:21:52.032+00');
INSERT INTO public.tickets VALUES (402, 'Paris', 'Lyon', '2023-01-09 00:33:38.31', 123, '2023-01-09 00:33:38.31+00');
INSERT INTO public.tickets VALUES (403, 'Lyon', 'Paris', '2023-02-18 07:50:51.249', 93, '2023-02-18 07:50:51.249+00');
INSERT INTO public.tickets VALUES (404, 'Marseille', 'Bruxelles', '2023-02-10 04:48:56.901', 144, '2023-02-10 04:48:56.901+00');
INSERT INTO public.tickets VALUES (405, 'Marseille', 'Paris', '2023-01-28 00:40:20.095', 94, '2023-01-28 00:40:20.095+00');
INSERT INTO public.tickets VALUES (406, 'Bruxelles', 'Paris', '2023-01-21 16:45:54.455', 105, '2023-01-21 16:45:54.455+00');
INSERT INTO public.tickets VALUES (407, 'Bruxelles', 'Marseille', '2023-02-25 19:51:59.704', 53, '2023-02-25 19:51:59.704+00');
INSERT INTO public.tickets VALUES (408, 'Paris', 'Lyon', '2023-01-02 09:31:08.79', 89, '2023-01-02 09:31:08.79+00');
INSERT INTO public.tickets VALUES (409, 'Lyon', 'Paris', '2023-01-19 13:01:51.277', 86, '2023-01-19 13:01:51.277+00');
INSERT INTO public.tickets VALUES (410, 'Lyon', 'Marseille', '2023-03-12 22:24:57.664', 88, '2023-03-12 22:24:57.664+00');
INSERT INTO public.tickets VALUES (411, 'Paris', 'Lyon', '2023-03-09 02:09:41.447', 37, '2023-03-09 02:09:41.447+00');
INSERT INTO public.tickets VALUES (412, 'Bruxelles', 'Lyon', '2023-02-17 01:03:15.99', 134, '2023-02-17 01:03:15.99+00');
INSERT INTO public.tickets VALUES (413, 'Paris', 'Lyon', '2023-02-27 12:25:34.709', 141, '2023-02-27 12:25:34.709+00');
INSERT INTO public.tickets VALUES (414, 'Lyon', 'Bruxelles', '2023-01-19 22:02:43.826', 109, '2023-01-19 22:02:43.826+00');
INSERT INTO public.tickets VALUES (415, 'Lyon', 'Paris', '2023-01-11 19:03:59.887', 121, '2023-01-11 19:03:59.887+00');
INSERT INTO public.tickets VALUES (416, 'Bruxelles', 'Marseille', '2023-02-05 12:08:01.043', 67, '2023-02-05 12:08:01.043+00');
INSERT INTO public.tickets VALUES (417, 'Paris', 'Lyon', '2023-01-17 03:37:40.02', 100, '2023-01-17 03:37:40.02+00');
INSERT INTO public.tickets VALUES (418, 'Bruxelles', 'Lyon', '2023-01-02 00:11:55.438', 114, '2023-01-02 00:11:55.438+00');
INSERT INTO public.tickets VALUES (419, 'Paris', 'Bruxelles', '2023-02-25 02:13:54.827', 26, '2023-02-25 02:13:54.827+00');
INSERT INTO public.tickets VALUES (420, 'Bruxelles', 'Marseille', '2023-02-25 13:47:14.249', 89, '2023-02-25 13:47:14.249+00');
INSERT INTO public.tickets VALUES (421, 'Bruxelles', 'Marseille', '2023-01-04 04:43:24.698', 37, '2023-01-04 04:43:24.698+00');
INSERT INTO public.tickets VALUES (422, 'Bruxelles', 'Marseille', '2023-01-07 23:31:02.111', 146, '2023-01-07 23:31:02.111+00');
INSERT INTO public.tickets VALUES (423, 'Paris', 'Lyon', '2023-02-09 21:50:25.038', 118, '2023-02-09 21:50:25.038+00');
INSERT INTO public.tickets VALUES (424, 'Bruxelles', 'Lyon', '2023-02-08 10:50:32.842', 78, '2023-02-08 10:50:32.842+00');
INSERT INTO public.tickets VALUES (425, 'Lyon', 'Paris', '2023-01-08 01:37:49.612', 39, '2023-01-08 01:37:49.612+00');
INSERT INTO public.tickets VALUES (426, 'Paris', 'Bruxelles', '2023-02-18 05:56:56.924', 58, '2023-02-18 05:56:56.924+00');
INSERT INTO public.tickets VALUES (427, 'Bruxelles', 'Paris', '2023-01-11 03:01:56.037', 95, '2023-01-11 03:01:56.037+00');
INSERT INTO public.tickets VALUES (428, 'Paris', 'Lyon', '2023-02-12 04:10:53.682', 63, '2023-02-12 04:10:53.682+00');
INSERT INTO public.tickets VALUES (429, 'Paris', 'Lyon', '2023-03-08 19:51:37.227', 36, '2023-03-08 19:51:37.227+00');
INSERT INTO public.tickets VALUES (430, 'Bruxelles', 'Marseille', '2023-01-14 05:54:12.247', 146, '2023-01-14 05:54:12.247+00');
INSERT INTO public.tickets VALUES (431, 'Paris', 'Lyon', '2023-03-10 15:19:06.632', 69, '2023-03-10 15:19:06.632+00');
INSERT INTO public.tickets VALUES (432, 'Marseille', 'Lyon', '2023-01-31 08:43:49.594', 73, '2023-01-31 08:43:49.594+00');
INSERT INTO public.tickets VALUES (433, 'Paris', 'Lyon', '2023-03-01 18:45:40.827', 62, '2023-03-01 18:45:40.827+00');
INSERT INTO public.tickets VALUES (434, 'Bruxelles', 'Marseille', '2023-01-11 03:30:14.978', 87, '2023-01-11 03:30:14.978+00');
INSERT INTO public.tickets VALUES (435, 'Bruxelles', 'Lyon', '2023-02-28 14:35:32.208', 132, '2023-02-28 14:35:32.208+00');
INSERT INTO public.tickets VALUES (436, 'Bruxelles', 'Marseille', '2023-01-21 17:01:43.892', 44, '2023-01-21 17:01:43.892+00');
INSERT INTO public.tickets VALUES (437, 'Lyon', 'Bruxelles', '2023-02-17 10:36:48.884', 85, '2023-02-17 10:36:48.884+00');
INSERT INTO public.tickets VALUES (438, 'Marseille', 'Lyon', '2023-02-16 01:21:21.308', 144, '2023-02-16 01:21:21.308+00');
INSERT INTO public.tickets VALUES (439, 'Marseille', 'Bruxelles', '2023-02-01 21:15:29.347', 45, '2023-02-01 21:15:29.347+00');
INSERT INTO public.tickets VALUES (440, 'Paris', 'Bruxelles', '2023-01-06 02:51:04.846', 94, '2023-01-06 02:51:04.846+00');
INSERT INTO public.tickets VALUES (441, 'Bruxelles', 'Marseille', '2023-03-05 12:24:58.386', 34, '2023-03-05 12:24:58.386+00');
INSERT INTO public.tickets VALUES (442, 'Marseille', 'Lyon', '2023-01-08 15:04:46.152', 137, '2023-01-08 15:04:46.152+00');
INSERT INTO public.tickets VALUES (443, 'Lyon', 'Marseille', '2023-02-27 23:03:19.101', 101, '2023-02-27 23:03:19.101+00');
INSERT INTO public.tickets VALUES (444, 'Paris', 'Lyon', '2023-03-10 20:28:09.05', 135, '2023-03-10 20:28:09.05+00');
INSERT INTO public.tickets VALUES (445, 'Marseille', 'Bruxelles', '2023-01-25 14:07:14.087', 134, '2023-01-25 14:07:14.087+00');
INSERT INTO public.tickets VALUES (446, 'Marseille', 'Lyon', '2023-01-15 06:00:25.333', 90, '2023-01-15 06:00:25.333+00');
INSERT INTO public.tickets VALUES (447, 'Paris', 'Lyon', '2023-01-19 07:23:55.352', 67, '2023-01-19 07:23:55.352+00');
INSERT INTO public.tickets VALUES (448, 'Paris', 'Bruxelles', '2023-02-25 00:16:43.889', 123, '2023-02-25 00:16:43.889+00');
INSERT INTO public.tickets VALUES (449, 'Bruxelles', 'Marseille', '2023-02-26 23:39:01.399', 127, '2023-02-26 23:39:01.399+00');
INSERT INTO public.tickets VALUES (450, 'Paris', 'Lyon', '2023-02-24 11:40:21.389', 126, '2023-02-24 11:40:21.389+00');
INSERT INTO public.tickets VALUES (451, 'Bruxelles', 'Marseille', '2023-01-06 12:10:13.696', 30, '2023-01-06 12:10:13.696+00');
INSERT INTO public.tickets VALUES (452, 'Paris', 'Lyon', '2023-03-13 03:10:03.762', 144, '2023-03-13 03:10:03.762+00');
INSERT INTO public.tickets VALUES (453, 'Paris', 'Bruxelles', '2023-02-27 20:54:37.319', 73, '2023-02-27 20:54:37.319+00');
INSERT INTO public.tickets VALUES (454, 'Lyon', 'Bruxelles', '2023-03-12 12:58:38.674', 39, '2023-03-12 12:58:38.674+00');
INSERT INTO public.tickets VALUES (455, 'Bruxelles', 'Marseille', '2023-01-22 17:02:27.268', 35, '2023-01-22 17:02:27.268+00');
INSERT INTO public.tickets VALUES (456, 'Marseille', 'Paris', '2023-02-12 19:19:24.873', 81, '2023-02-12 19:19:24.873+00');
INSERT INTO public.tickets VALUES (457, 'Bruxelles', 'Lyon', '2023-01-03 20:08:27.787', 142, '2023-01-03 20:08:27.787+00');
INSERT INTO public.tickets VALUES (458, 'Paris', 'Bruxelles', '2023-01-15 22:55:35.459', 133, '2023-01-15 22:55:35.459+00');
INSERT INTO public.tickets VALUES (459, 'Lyon', 'Bruxelles', '2023-01-18 14:11:07.789', 121, '2023-01-18 14:11:07.789+00');
INSERT INTO public.tickets VALUES (460, 'Lyon', 'Paris', '2023-02-01 04:42:15.337', 50, '2023-02-01 04:42:15.337+00');
INSERT INTO public.tickets VALUES (461, 'Paris', 'Bruxelles', '2023-03-11 13:46:11.458', 123, '2023-03-11 13:46:11.458+00');
INSERT INTO public.tickets VALUES (462, 'Marseille', 'Bruxelles', '2023-01-20 23:13:20.654', 78, '2023-01-20 23:13:20.654+00');
INSERT INTO public.tickets VALUES (463, 'Bruxelles', 'Lyon', '2023-01-23 06:30:16.162', 33, '2023-01-23 06:30:16.162+00');
INSERT INTO public.tickets VALUES (464, 'Paris', 'Bruxelles', '2023-03-01 12:33:37.159', 91, '2023-03-01 12:33:37.159+00');
INSERT INTO public.tickets VALUES (465, 'Marseille', 'Lyon', '2023-01-23 01:08:34.656', 95, '2023-01-23 01:08:34.656+00');
INSERT INTO public.tickets VALUES (466, 'Bruxelles', 'Lyon', '2023-01-08 14:35:51.124', 74, '2023-01-08 14:35:51.124+00');
INSERT INTO public.tickets VALUES (467, 'Marseille', 'Lyon', '2023-03-13 02:02:15.603', 143, '2023-03-13 02:02:15.603+00');
INSERT INTO public.tickets VALUES (468, 'Paris', 'Lyon', '2023-02-08 05:38:57.888', 113, '2023-02-08 05:38:57.888+00');
INSERT INTO public.tickets VALUES (469, 'Paris', 'Bruxelles', '2023-01-21 04:03:25.411', 95, '2023-01-21 04:03:25.411+00');
INSERT INTO public.tickets VALUES (470, 'Bruxelles', 'Marseille', '2023-01-06 22:42:37.005', 132, '2023-01-06 22:42:37.005+00');
INSERT INTO public.tickets VALUES (471, 'Bruxelles', 'Marseille', '2023-01-09 07:38:17.139', 77, '2023-01-09 07:38:17.139+00');
INSERT INTO public.tickets VALUES (472, 'Marseille', 'Paris', '2023-01-26 13:20:12.963', 51, '2023-01-26 13:20:12.963+00');
INSERT INTO public.tickets VALUES (473, 'Lyon', 'Bruxelles', '2023-01-01 16:48:37.24', 39, '2023-01-01 16:48:37.24+00');
INSERT INTO public.tickets VALUES (474, 'Paris', 'Lyon', '2023-03-09 14:43:11.916', 147, '2023-03-09 14:43:11.916+00');
INSERT INTO public.tickets VALUES (475, 'Paris', 'Lyon', '2023-02-22 23:42:27.014', 76, '2023-02-22 23:42:27.014+00');
INSERT INTO public.tickets VALUES (476, 'Marseille', 'Lyon', '2023-01-17 05:56:35.906', 39, '2023-01-17 05:56:35.906+00');
INSERT INTO public.tickets VALUES (477, 'Paris', 'Lyon', '2023-01-24 03:02:55.643', 37, '2023-01-24 03:02:55.643+00');
INSERT INTO public.tickets VALUES (478, 'Bruxelles', 'Paris', '2023-03-12 05:43:11.841', 131, '2023-03-12 05:43:11.841+00');
INSERT INTO public.tickets VALUES (479, 'Bruxelles', 'Marseille', '2023-01-25 01:13:12.212', 99, '2023-01-25 01:13:12.212+00');
INSERT INTO public.tickets VALUES (480, 'Marseille', 'Bruxelles', '2023-02-05 07:02:33.582', 125, '2023-02-05 07:02:33.582+00');
INSERT INTO public.tickets VALUES (481, 'Bruxelles', 'Paris', '2023-01-14 20:34:06.646', 52, '2023-01-14 20:34:06.646+00');
INSERT INTO public.tickets VALUES (482, 'Paris', 'Lyon', '2023-03-01 08:57:57.742', 127, '2023-03-01 08:57:57.742+00');
INSERT INTO public.tickets VALUES (483, 'Paris', 'Lyon', '2023-02-27 10:41:24.933', 105, '2023-02-27 10:41:24.933+00');
INSERT INTO public.tickets VALUES (484, 'Paris', 'Bruxelles', '2023-01-12 19:52:42.657', 34, '2023-01-12 19:52:42.657+00');
INSERT INTO public.tickets VALUES (485, 'Marseille', 'Paris', '2023-02-23 08:04:37.097', 93, '2023-02-23 08:04:37.097+00');
INSERT INTO public.tickets VALUES (486, 'Paris', 'Lyon', '2023-02-13 10:06:37.373', 79, '2023-02-13 10:06:37.373+00');
INSERT INTO public.tickets VALUES (487, 'Paris', 'Lyon', '2023-01-01 04:25:40.666', 90, '2023-01-01 04:25:40.666+00');
INSERT INTO public.tickets VALUES (488, 'Bruxelles', 'Lyon', '2023-02-27 08:58:55.411', 92, '2023-02-27 08:58:55.411+00');
INSERT INTO public.tickets VALUES (489, 'Marseille', 'Paris', '2023-01-22 21:22:21.068', 67, '2023-01-22 21:22:21.068+00');
INSERT INTO public.tickets VALUES (490, 'Bruxelles', 'Marseille', '2023-01-06 17:31:47.215', 66, '2023-01-06 17:31:47.215+00');
INSERT INTO public.tickets VALUES (491, 'Paris', 'Marseille', '2023-01-10 23:13:17.763', 117, '2023-01-10 23:13:17.763+00');
INSERT INTO public.tickets VALUES (492, 'Bruxelles', 'Marseille', '2023-02-02 08:54:43.59', 131, '2023-02-02 08:54:43.59+00');
INSERT INTO public.tickets VALUES (493, 'Paris', 'Lyon', '2023-02-28 04:28:43.395', 129, '2023-02-28 04:28:43.395+00');
INSERT INTO public.tickets VALUES (494, 'Bruxelles', 'Lyon', '2023-01-02 20:50:23.357', 107, '2023-01-02 20:50:23.357+00');
INSERT INTO public.tickets VALUES (495, 'Paris', 'Lyon', '2023-02-05 11:29:52.125', 41, '2023-02-05 11:29:52.125+00');
INSERT INTO public.tickets VALUES (496, 'Paris', 'Marseille', '2023-01-11 15:37:34.395', 98, '2023-01-11 15:37:34.395+00');
INSERT INTO public.tickets VALUES (497, 'Lyon', 'Bruxelles', '2023-03-09 21:44:58.81', 105, '2023-03-09 21:44:58.81+00');
INSERT INTO public.tickets VALUES (498, 'Marseille', 'Bruxelles', '2023-02-01 10:55:03.032', 45, '2023-02-01 10:55:03.032+00');
INSERT INTO public.tickets VALUES (499, 'Lyon', 'Bruxelles', '2023-03-01 16:36:01.291', 111, '2023-03-01 16:36:01.291+00');
INSERT INTO public.tickets VALUES (500, 'Paris', 'Lyon', '2023-01-09 02:29:14.984', 99, '2023-01-09 02:29:14.984+00');


--
-- TOC entry 4257 (class 0 OID 0)
-- Dependencies: 231
-- Name: tickets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tickets_id_seq', 2, true);


--
-- TOC entry 4126 (class 2606 OID 50538603)
-- Name: tickets tickets_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT tickets_pkey PRIMARY KEY (id);


-- Completed on 2024-02-21 12:31:08

--
-- PostgreSQL database dump complete
--

