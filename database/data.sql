--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.10
-- Dumped by pg_dump version 9.6.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: _coustomer; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._coustomer (
    id character varying(1) DEFAULT NULL::character varying,
    username character varying(1) DEFAULT NULL::character varying,
    address character varying(1) DEFAULT NULL::character varying,
    lat character varying(1) DEFAULT NULL::character varying,
    lng character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._coustomer OWNER TO rebasedata;

--
-- Name: _expire; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._expire (
    id character varying(1) DEFAULT NULL::character varying,
    medicine_name character varying(1) DEFAULT NULL::character varying,
    company_name character varying(1) DEFAULT NULL::character varying,
    number_tablets character varying(1) DEFAULT NULL::character varying,
    store_name character varying(1) DEFAULT NULL::character varying,
    store_address character varying(1) DEFAULT NULL::character varying,
    status character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._expire OWNER TO rebasedata;

--
-- Name: _hospital; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._hospital (
    id character varying(1) DEFAULT NULL::character varying,
    username character varying(1) DEFAULT NULL::character varying,
    address character varying(1) DEFAULT NULL::character varying,
    lat character varying(1) DEFAULT NULL::character varying,
    lng character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._hospital OWNER TO rebasedata;

--
-- Name: _orders; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._orders (
    id character varying(1) DEFAULT NULL::character varying,
    hospital character varying(1) DEFAULT NULL::character varying,
    hospital_address character varying(1) DEFAULT NULL::character varying,
    store character varying(1) DEFAULT NULL::character varying,
    medicine_name character varying(1) DEFAULT NULL::character varying,
    number_tablets character varying(1) DEFAULT NULL::character varying,
    dod character varying(1) DEFAULT NULL::character varying,
    status character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._orders OWNER TO rebasedata;

--
-- Name: _pharmacy; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._pharmacy (
    id character varying(1) DEFAULT NULL::character varying,
    username character varying(1) DEFAULT NULL::character varying,
    name character varying(1) DEFAULT NULL::character varying,
    medicine_name character varying(1) DEFAULT NULL::character varying,
    number_tablets character varying(1) DEFAULT NULL::character varying,
    company_name character varying(1) DEFAULT NULL::character varying,
    expiry_date character varying(1) DEFAULT NULL::character varying,
    lat character varying(1) DEFAULT NULL::character varying,
    lng character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._pharmacy OWNER TO rebasedata;

--
-- Name: _register; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._register (
    id character varying(1) DEFAULT NULL::character varying,
    name character varying(1) DEFAULT NULL::character varying,
    address character varying(1) DEFAULT NULL::character varying,
    phone character varying(1) DEFAULT NULL::character varying,
    username character varying(1) DEFAULT NULL::character varying,
    email character varying(1) DEFAULT NULL::character varying,
    password character varying(1) DEFAULT NULL::character varying,
    usertype character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._register OWNER TO rebasedata;

--
-- Name: _stores; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._stores (
    id character varying(1) DEFAULT NULL::character varying,
    username character varying(1) DEFAULT NULL::character varying,
    name character varying(1) DEFAULT NULL::character varying,
    address character varying(1) DEFAULT NULL::character varying,
    lat character varying(1) DEFAULT NULL::character varying,
    lng character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._stores OWNER TO rebasedata;

--
-- Data for Name: _coustomer; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._coustomer (id, username, address, lat, lng) FROM stdin;
\.


--
-- Data for Name: _expire; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._expire (id, medicine_name, company_name, number_tablets, store_name, store_address, status) FROM stdin;
\.


--
-- Data for Name: _hospital; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._hospital (id, username, address, lat, lng) FROM stdin;
\.


--
-- Data for Name: _orders; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._orders (id, hospital, hospital_address, store, medicine_name, number_tablets, dod, status) FROM stdin;
\.


--
-- Data for Name: _pharmacy; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._pharmacy (id, username, name, medicine_name, number_tablets, company_name, expiry_date, lat, lng) FROM stdin;
\.


--
-- Data for Name: _register; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._register (id, name, address, phone, username, email, password, usertype) FROM stdin;
\.


--
-- Data for Name: _stores; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._stores (id, username, name, address, lat, lng) FROM stdin;
\.


--
-- PostgreSQL database dump complete
--

