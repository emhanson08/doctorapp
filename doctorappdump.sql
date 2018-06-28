--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3
-- Dumped by pg_dump version 10.3

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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: elizabethhanson
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO elizabethhanson;

--
-- Name: doctors; Type: TABLE; Schema: public; Owner: elizabethhanson
--

CREATE TABLE public.doctors (
    id bigint NOT NULL,
    name character varying,
    location character varying,
    specialty character varying,
    rating double precision,
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.doctors OWNER TO elizabethhanson;

--
-- Name: doctors_id_seq; Type: SEQUENCE; Schema: public; Owner: elizabethhanson
--

CREATE SEQUENCE public.doctors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.doctors_id_seq OWNER TO elizabethhanson;

--
-- Name: doctors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elizabethhanson
--

ALTER SEQUENCE public.doctors_id_seq OWNED BY public.doctors.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: elizabethhanson
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO elizabethhanson;

--
-- Name: doctors id; Type: DEFAULT; Schema: public; Owner: elizabethhanson
--

ALTER TABLE ONLY public.doctors ALTER COLUMN id SET DEFAULT nextval('public.doctors_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: elizabethhanson
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2018-06-27 23:42:46.714059	2018-06-27 23:42:46.714059
\.


--
-- Data for Name: doctors; Type: TABLE DATA; Schema: public; Owner: elizabethhanson
--

COPY public.doctors (id, name, location, specialty, rating, description, created_at, updated_at) FROM stdin;
1	Lauren Giles	San Francisco	Dermatology	4.5	Nulla quis odio justo. Nam nec posuere tellus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eu finibus massa.	2018-06-27 23:44:43.965696	2018-06-27 23:44:43.965696
2	Tobias Jones	Oakland	Internal Medicine	4.20000000000000018	Nunc efficitur pulvinar risus vitae vehicula. In ut viverra augue, at tincidunt augue. Duis quam ex, euismod quis lacinia id, mollis non lorem.	2018-06-27 23:44:43.969777	2018-06-27 23:44:43.969777
3	Jason Birkenheim	San Mateo	Endocrinology	3.89999999999999991	Phasellus ante nunc, lacinia sed varius in, tincidunt a nisi. In quis ullamcorper tellus. Pellentesque diam nunc, viverra blandit elit vitae, condimentum egestas augue. Aliquam erat volutpat.	2018-06-27 23:44:43.971949	2018-06-27 23:44:43.971949
4	Anna Neilson	Concord	Pediatrics	2.89999999999999991	Nullam tristique neque nec purus sagittis tristique. Ut volutpat orci vitae odio vulputate, elementum interdum enim tincidunt. Donec id maximus sem.	2018-06-27 23:44:43.974141	2018-06-27 23:44:43.974141
5	Rodney Wunderlich	Concord	Cardiology	3.39999999999999991	Morbi posuere arcu orci. Quisque at dapibus diam. Duis pretium mollis turpis, eget facilisis est congue sit amet. Aliquam sed cursus odio.	2018-06-27 23:44:43.976041	2018-06-27 23:44:43.976041
6	Elise Giles	Oakland	Internal Medicine	4.40000000000000036	Quisque volutpat nulla quis risus consectetur malesuada. Nam porta, nisi in suscipit sodales, eros magna mollis quam, non cursus nibh nisl ultricies neque.	2018-06-27 23:44:43.977733	2018-06-27 23:44:43.977733
7	Daniel Schmidt	San Francisco	Internal Medicine	3.79999999999999982	Vestibulum egestas mauris ac lorem laoreet, et fringilla dui fringilla. Phasellus hendrerit leo libero.	2018-06-27 23:44:43.979384	2018-06-27 23:44:43.979384
8	Jill Stilwell	Walnut Creek	Endocrinology	4.5	Nam bibendum orci lectus, id pretium enim ultrices ut. Fusce tincidunt eros eros, vel ornare nisl malesuada non.	2018-06-27 23:44:43.980918	2018-06-27 23:44:43.980918
9	Brett Perras	Berkeley	Pediatrics	4.29999999999999982	Nulla vel eros maximus quam iaculis pharetra at in mi. Praesent feugiat pulvinar placerat.	2018-06-27 23:44:43.982383	2018-06-27 23:44:43.982383
10	Benjamin Nichols	San Francisco	Cardiology	3.60000000000000009	Proin fringilla urna in quam mollis, sit amet imperdiet urna sagittis.	2018-06-27 23:44:43.98375	2018-06-27 23:44:43.98375
11	So Mesazaros	Berkeley	Internal Medicine	3.79999999999999982	Vivamus viverra, odio ac auctor gravida, felis metus ornare ex, iaculis aliquam purus sem non orci. Suspendisse finibus porta mollis. Integer vitae tristique nisl.	2018-06-27 23:44:43.98526	2018-06-27 23:44:43.98526
12	Alexander Gloster	Oakland	Endocrinology	3.89999999999999991	Nulla et sem et velit placerat auctor ut sed magna. Fusce vel enim faucibus, finibus massa in, ultricies lacus.	2018-06-27 23:44:43.986657	2018-06-27 23:44:43.986657
13	Maxwell Westfield	Walnut Creek	Dermatology	4.09999999999999964	Aliquam viverra purus vel suscipit ornare. Aenean ac luctus libero. Pellentesque id sollicitudin odio. Quisque sollicitudin metus eros.	2018-06-27 23:44:43.988043	2018-06-27 23:44:43.988043
14	Jackie Sellars	San Francisco	Dermatology	2.29999999999999982	Sed euismod nunc risus, sed porta nisi ornare vitae.	2018-06-27 23:44:43.989571	2018-06-27 23:44:43.989571
15	Michael Jones	San Mateo	Internal Medicine	4.40000000000000036	Nunc eleifend, diam in imperdiet rutrum, orci mi semper ipsum, sed consectetur urna leo a felis.	2018-06-27 23:44:43.991057	2018-06-27 23:44:43.991057
16	Russ Whitby	Concord	Endocrinology	4.70000000000000018	Vestibulum fringilla rutrum arcu id aliquet. Maecenas congue dui id elementum tincidunt. In ac ornare mi.	2018-06-27 23:44:43.992499	2018-06-27 23:44:43.992499
17	Parthenia Abrahams	San Mateo	Cardiology	3.89999999999999991	Curabitur aliquam diam sit amet commodo ullamcorper. Curabitur nibh massa, efficitur eu sem in, vehicula finibus urna.	2018-06-27 23:44:43.993944	2018-06-27 23:44:43.993944
18	Elena Whitby	San Francisco	Internal Medicine	4.29999999999999982	Vestibulum a hendrerit mauris, vel sagittis diam.	2018-06-27 23:44:43.995432	2018-06-27 23:44:43.995432
19	John Tropea	Oakland	Dermatology	4.59999999999999964	Aliquam sit amet tortor eget dolor placerat volutpat quis at nulla.	2018-06-27 23:44:43.996783	2018-06-27 23:44:43.996783
20	Florence Jones	Oakland	Dermatology	3.29999999999999982	Maecenas egestas massa ut sagittis accumsan. Morbi condimentum sollicitudin nibh, et viverra nisi finibus vitae.	2018-06-27 23:44:43.998212	2018-06-27 23:44:43.998212
21	John Cappel	Concord	Internal Medicine	4.09999999999999964	In sapien nisi, malesuada vitae finibus eu, feugiat in tellus.	2018-06-27 23:44:43.999655	2018-06-27 23:44:43.999655
22	Gary Shivers	San Francisco	Pediatrics	4.20000000000000018	Nulla facilisi. Aliquam id turpis tincidunt, sodales lacus et, blandit justo.	2018-06-27 23:44:44.001012	2018-06-27 23:44:44.001012
23	Mai Zhang	Berkeley	Internal Medicine	3.89999999999999991	Etiam euismod imperdiet odio. Mauris quis eros sit amet sem tincidunt tristique.	2018-06-27 23:44:44.002418	2018-06-27 23:44:44.002418
24	Stephanie Leto	San Francisco	Cardiology	3.5	Praesent fermentum metus at ipsum suscipit hendrerit.	2018-06-27 23:44:44.003814	2018-06-27 23:44:44.003814
25	Lamar Worthy	Walnut Creek	Dermatology	4.20000000000000018	Nulla varius ultricies ligula sed cursus. Duis egestas laoreet nisi ac feugiat.	2018-06-27 23:44:44.005205	2018-06-27 23:44:44.005205
26	Joshua Haddon	San Mateo	Endocrinology	4.79999999999999982	Vestibulum in vulputate nibh, at viverra quam. Aenean porta lectus eu tincidunt porttitor. In vel ante id mauris venenatis maximus.	2018-06-27 23:44:44.006616	2018-06-27 23:44:44.006616
27	Imogen Alvidrez	San Francisco	Pediatrics	4.90000000000000036	Morbi porta id lacus lobortis ultricies. Maecenas semper neque ac est tempus, nec dapibus lorem gravida.	2018-06-27 23:44:44.008003	2018-06-27 23:44:44.008003
28	Lionel Schmidt	Oakland	Internal Medicine	4.09999999999999964	Duis enim mauris, dignissim ut egestas vel, rhoncus pharetra ligula. Suspendisse eu pulvinar urna.	2018-06-27 23:44:44.009382	2018-06-27 23:44:44.009382
29	Reagan Sellars	Concord	Cardiology	4.29999999999999982	Donec commodo convallis pretium. Sed in elit et massa ultrices fringilla sed at tortor.	2018-06-27 23:44:44.010773	2018-06-27 23:44:44.010773
30	Leslie Cesar	Berkeley	Pediatrics	4.09999999999999964	Aliquam nec tempus augue, sit amet eleifend odio. Morbi eget neque eu lectus luctus consequat rutrum et ipsum.	2018-06-27 23:44:44.0121	2018-06-27 23:44:44.0121
31	Argus Jones	Oakland	Internal Medicine	4.90000000000000036	\N	2018-06-28 01:48:50.986652	2018-06-28 01:49:59.00289
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: elizabethhanson
--

COPY public.schema_migrations (version) FROM stdin;
20180627234114
\.


--
-- Name: doctors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elizabethhanson
--

SELECT pg_catalog.setval('public.doctors_id_seq', 31, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: elizabethhanson
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: doctors doctors_pkey; Type: CONSTRAINT; Schema: public; Owner: elizabethhanson
--

ALTER TABLE ONLY public.doctors
    ADD CONSTRAINT doctors_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: elizabethhanson
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- PostgreSQL database dump complete
--

