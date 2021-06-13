--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

-- Started on 2021-06-13 16:25:08

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
-- TOC entry 201 (class 1259 OID 16854)
-- Name: user_accounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_accounts (
    id integer NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    username character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    role character varying(255) NOT NULL,
    status character varying(255) NOT NULL,
    created_at date NOT NULL
);


ALTER TABLE public.user_accounts OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16852)
-- Name: user_account_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_account_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_account_id_seq OWNER TO postgres;

--
-- TOC entry 2992 (class 0 OID 0)
-- Dependencies: 200
-- Name: user_account_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_account_id_seq OWNED BY public.user_accounts.id;


--
-- TOC entry 2851 (class 2604 OID 16857)
-- Name: user_accounts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_accounts ALTER COLUMN id SET DEFAULT nextval('public.user_account_id_seq'::regclass);


--
-- TOC entry 2986 (class 0 OID 16854)
-- Dependencies: 201
-- Data for Name: user_accounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_accounts (id, first_name, last_name, username, password, role, status, created_at) FROM stdin;
55	Anfisa	Potockaya	anfisa	$2a$10$nyd6MWxVzsljtcpSd/Ioo.0xbYyuq4olEw47CVUylyY7Oa2vcPH5O	USER	ACTIVE	2021-06-13
58	Arsen	Wenger	arsen	$2a$10$xzMiNA2Vu6Qd0LvVmhHsseib2sYx6jgMo1vCMN3sK9OKxPe4mGRaS	USER	ACTIVE	2021-06-13
60	Nikita	Mitasov	nikitamitasov	$2a$10$3CsuPognA36UQsUaktaeYuvmEZpI73BXsitG7XIUMS2c8EMN7dEui	USER	ACTIVE	2021-06-13
61	Yurij	Dud	dud	$2a$10$U02wv1yuFUbarCwLLfqYqOC34uCZgnKKvKWIaVqH5aUg4VqyRUcGC	USER	ACTIVE	2021-06-13
65	Vanya	Titov	vano	$2a$10$H2Fmdoz.ePRqZOAngkr2Bu2iq/kanFLN.XcvMJdIpkjzuc98UunE.	USER	ACTIVE	2021-06-13
28	Ivan	Ivanov	ivanov	$2a$10$S8Vs0EArmekxk0/awG2Mc.uO9B2TAb6.HR8lO0IdpMcY.06rDGI/m	USER	ACTIVE	2021-06-10
27	Evgeniy	Galinevsky	evgen	$2a$10$VGZZrv2wTpEYeT0h/CTXfu4KePSTV/yoFdoIM8ZUTdaY/hKAM6YJu	USER	ACTIVE	2021-06-13
30	Darya	Oreshko	daryaore	$2a$10$s0UTQk0mkkg5Sih2T5ot4uu7shLWTq16JzJDahf0praX3m/2MM9pm	USER	ACTIVE	2021-06-13
67	Liza	Querra	liza	$2a$10$zFXKUMZRsQSFkrnZFRiQVe2vbPChOsNtrja.m10DfAlsc.1c0Hn.G	USER	ACTIVE	2021-06-13
33	Dmitry	Sorokin	dmitrysor	$2a$10$1nQ/2oE90RmGVr491iEsOOWtEbtH7Y0PFcfSfGJjxIX83U5aBtU7y	USER	ACTIVE	2021-06-13
35	Andrey	Korolev	andreykor	$2a$10$SUb4lo3C2IPVDm758PLX5ugSowtWRYVy9WejnibTWzRfizsXVzWVK	USER	ACTIVE	2021-06-13
36	Anna	Ivanova	annaivanova	$2a$10$jkT7k2mWiMVYwW08Lef2BOM5q1.O505rUSOwENN.d38EpN.D5ZN9u	USER	ACTIVE	2021-06-13
38	Lincoln	Burrows	lincoln	$2a$10$u51X47wEY2pGLLJDprQFcObNRA.pZEy5V1Jb/A2DzII5uqbSNxj6.	USER	ACTIVE	2021-06-13
39	Justin	Timberlake	JustinT	$2a$10$BeFnuU4O2wIV/CRQv70Kdus6ldmR0WHef3LX1b80NHFH/i6cJhrhW	USER	ACTIVE	2021-06-13
41	Yulia	Kosinskaya	yulyakos	$2a$10$5vSO2Wxo3NkQW6L68Iqz1OSnqeewA40H23jqCG3craHXR9vpPbgaa	USER	ACTIVE	2021-06-13
43	Andrey	Krukov	andrew	$2a$10$RSeKyIDi9RgsIPZurGCQqO87Gwh/GUChb.T7WhxlHlsJ7246PEQh6	USER	ACTIVE	2021-06-13
44	Maxim	Nevmerzhicky	max	$2a$10$OmwZxBKmc6lmDDm1c77EsukVcEeRdK.tVOv5ru3F8.qmICAMrdXqG	USER	ACTIVE	2021-06-13
47	Igor	Chehov	igorch	$2a$10$k7FfLrEuVVh8xJJ.WJiJDe7nB8A0/6VRRhKDzRvnhwylHSj49NerS	USER	ACTIVE	2021-06-13
49	Artem	Sotnikov	artemsot	$2a$10$VPay6Kl.cCRVHKZ8MefZfuDQ3Yc5nhCbM6IvWsxceftEW25lhcICW	USER	ACTIVE	2021-06-13
53	Sabina	Mayer	sabina	$2a$10$rxrpvxI8/qmgdkbgof0aie/dQlyGY7ekXxvFBqC/dQFT/uBIlgehC	USER	ACTIVE	2021-06-13
71	Bill	Gates	bill	$2a$10$Hz2bcgmkqjTZ6QnzYlmnmOiQU4ZSJakZnap7F5KjRO.TPTxNaB3la	USER	ACTIVE	2021-06-13
32	Ilya	Korobkin	alohadance	$2a$10$Tfk6ovfskhMZ3xx/CPAwse1xtMpcA9b0X7shT714PeUUtCzHeqnVm	USER	ACTIVE	2021-06-09
42	Alexandr	Belinsky	alexbel	$2a$10$Nx1goBRRBHpat42.K98HdepNKMkNjxNPR/jQqw1j7/Ipe88zXENm6	USER	ACTIVE	2021-06-09
63	Olya	Anisimova	olya	$2a$10$lDM/nBKqw1uu7iFciU7wpul8Q4mVJvOZR2eqoalpRPgEQeXT4fogO	USER	ACTIVE	2021-06-10
48	Anastasiya	Romanova	nastyarom	$2a$10$gWxaBmgl1VlgGT1OUHr9pexjsbszTDJ50vxXGpvJWnSxWyY84Wk2S	USER	ACTIVE	2021-06-12
57	Dmitry	Potapchuk	dimapot	$2a$10$FTx/HGf8uKZO4jIhRXWKFevcWs92T/aL8njpVm.b/8P6izX7YG6cO	USER	ACTIVE	2021-06-10
31	Veronika	Zverko	veronikazver	$2a$10$XlSDd0O83qotIC5lz5Cij.wcbyaS0wKdDUadwqYwRrFhfRc5852c6	USER	ACTIVE	2021-06-09
59	Angelina	Polyakova	angelina	$2a$10$lxeIyWfQ72oXA5jV9k7rhOO8IpH16lEJ94gVUazizuShBWA051gjC	USER	ACTIVE	2021-06-10
66	Boris	Kustov	boris	$2a$10$PlhDM/uPcLfhDTNRLuntLuteYivKHoFV7wdjeqrhy.ugIzxpt5CJe	USER	ACTIVE	2021-06-11
70	Larisa	Markova	larisa	$2a$10$VhGbQ7Xeg.lp9N5GSoHZEuoUCrrcDxnAtRqyplCC0qhv.TFQp4wNq	USER	ACTIVE	2021-06-11
52	Michael	Ivanov	mixa	$2a$10$LlgqDn4iGiZ6TzSTo.PBOurscHrcmJTmex07poE8oRMyB9VCpvDPm	USER	ACTIVE	2021-06-09
64	Alexey	Kulbikov	alexcool	$2a$10$iUQi6tvUL9LjH.Uk2cbareoBC3KDWC8mb9SP1ZnpGJxpDHRRrVsJK	USER	ACTIVE	2021-06-09
13	Viktor	Shilay	viktorshilay	$2a$10$jjtV9qYs.uzjsUwuCZThWebm3tGG2EgsLGFFHL.Y8RtkFM.t9DHFW	ADMIN	ACTIVE	2021-06-09
34	Anna	Efimova	annaefim	$2a$10$HRzFyXuD6qpGZ6hQ.FDYJe.1ya3EyLP37PULxD1YL0sI9BPAKjCF6	USER	ACTIVE	2021-06-12
54	Nikita	Berillo	nikitos	$2a$10$gxUk7MVMFTe.RN/x/CNqI.TW4.uKuj3OhLm5cbHdyzokSIXj/wVz2	USER	ACTIVE	2021-06-09
26	Dmitry	Kosinsky	dmitrykos	$2a$10$qFrlQMXYue0pit3wGMCu..6MWp.Ld/Lxkgv0BTJ01b/3auNXMLbSq	USER	ACTIVE	2021-06-12
56	Margarita	Rebrova	margo	$2a$10$JcvPTAyqH3Y54RIsGzyBU.N3sGfffeSZpi7rq.Jlx.LD/Ko9dpJBq	USER	ACTIVE	2021-06-11
37	Michael	Scofield	michael	$2a$10$uIcDje8oN2kMURuJYSGZ.uQnm45yfCrLAbxc6r73fYhkG/Xsr0JfG	USER	ACTIVE	2021-06-12
69	Elena	Semenova	elenasem	$2a$10$rMl8ygPW36Pb3XlK8c.8.eLpjHj492nItNrLSY7En0sxO7ttZjUAi	USER	ACTIVE	2021-06-10
25	Aleksandr	Kosinsky	alexkos	$2a$10$jmJmG8G8PSWy1GTtGPRMt.iQVWozLps0Tux9Dj5r2LAk9q0jV2mmG	USER	ACTIVE	2021-06-11
62	Nikolay	Sobolev	sobolev	$2a$10$XDzS2RNSanjmp8NEM9TldusAs/.xyE3NqAmUpaC1O49Vmuj1YVpmK	USER	ACTIVE	2021-06-09
40	Maxim	Ermolin	maxerm	$2a$10$0PrtOqTnX.Xa8MxuktVMVu5ReSdr3QcJqqQWxNCiIE7tut/pGC07y	USER	ACTIVE	2021-06-12
29	Petr	Petrov	petrov	$2a$10$vH0LccXYrylCh/IPGMtZKeEgDhPZkMs1bcOH/kfBsPn2PA3O1rJly	USER	ACTIVE	2021-06-09
68	Ekaterina	Koroleva	katyakor	$2a$10$O1pRXIEKubyHG0ajgFgJPeWWNQlc7cT8zEijcja7t8YE.x14BUH46	USER	ACTIVE	2021-06-12
45	Alena	Popova	alena	$2a$10$NVP8oktB2v0S3lupGdop8OO0bYyVAu9KibPG439QlxEF.IlFyO3QK	USER	ACTIVE	2021-06-11
46	Olivia	Wilde	olivia	$2a$10$WP7AmZnnVuKL2nKmypyK7.2kptGgJn8wRGky/vMHOTiXvVRZL3xRe	USER	ACTIVE	2021-06-09
51	Alexandr	Ivanov	alexivanov	$2a$10$sUcNw0WCqMADTPkLzkVVZOGsuaB2Jp3hTekvQdLXx.VA0pAtElojW	USER	ACTIVE	2021-06-10
\.


--
-- TOC entry 2993 (class 0 OID 0)
-- Dependencies: 200
-- Name: user_account_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_account_id_seq', 71, true);


--
-- TOC entry 2853 (class 2606 OID 16862)
-- Name: user_accounts user_account_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_accounts
    ADD CONSTRAINT user_account_pkey PRIMARY KEY (id);


--
-- TOC entry 2854 (class 1259 OID 16889)
-- Name: user_account_username_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX user_account_username_uindex ON public.user_accounts USING btree (username);


-- Completed on 2021-06-13 16:25:09

--
-- PostgreSQL database dump complete
--

