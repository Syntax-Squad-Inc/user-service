--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-04-10 09:54:04

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 218 (class 1259 OID 16416)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    password character varying(255) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16415)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 4856 (class 0 OID 0)
-- Dependencies: 217
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 4695 (class 2604 OID 16419)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 4850 (class 0 OID 16416)
-- Dependencies: 218
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, username, email, password, created_at, updated_at) FROM stdin;
1	alicej	alice@example.com	alice1234	2025-04-09 07:34:32.687623	2025-04-09 07:34:32.687623
2	bobsmith	bob@example.com	bobsecure!	2025-04-09 07:34:32.687623	2025-04-09 07:34:32.687623
3	charlied	charlie@example.com	ch@rlie567	2025-04-09 07:34:32.687623	2025-04-09 07:34:32.687623
4	dianap	diana@example.com	wonderP@ss	2025-04-09 07:34:32.687623	2025-04-09 07:34:32.687623
5	ethanh	ethan@example.com	hunt4mission	2025-04-09 07:34:32.687623	2025-04-09 07:34:32.687623
6	fionag	fiona@example.com	g@llagher89	2025-04-09 07:34:32.687623	2025-04-09 07:34:32.687623
7	georgem	george@example.com	martinROCKS	2025-04-09 07:34:32.687623	2025-04-09 07:34:32.687623
8	hannahlee	hannah@example.com	leeSecure1	2025-04-09 07:34:32.687623	2025-04-09 07:34:32.687623
9	ianc	ian@example.com	curtis!joy	2025-04-09 07:34:32.687623	2025-04-09 07:34:32.687623
10	janedoe	jane@example.com	janeP@ss99	2025-04-09 07:34:32.687623	2025-04-09 07:34:32.687623
\.


--
-- TOC entry 4857 (class 0 OID 0)
-- Dependencies: 217
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 10, true);


--
-- TOC entry 4699 (class 2606 OID 16426)
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- TOC entry 4701 (class 2606 OID 16422)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 4703 (class 2606 OID 16424)
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


-- Completed on 2025-04-10 09:54:04

--
-- PostgreSQL database dump complete
--

