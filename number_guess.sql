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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('o', 1, 15);
INSERT INTO public.users VALUES ('user_1745976188904', 2, 124);
INSERT INTO public.users VALUES ('user_1745976188905', 5, 205);
INSERT INTO public.users VALUES ('user_1745976351853', 0, NULL);
INSERT INTO public.users VALUES ('user_1745976351852', 0, NULL);
INSERT INTO public.users VALUES ('user_1745976848072', 0, NULL);
INSERT INTO public.users VALUES ('user_1745976848071', 0, NULL);
INSERT INTO public.users VALUES ('user_1745981101062', 0, NULL);
INSERT INTO public.users VALUES ('user_1745979089113', 2, 184);
INSERT INTO public.users VALUES ('user_1745978014055', 2, 664);
INSERT INTO public.users VALUES ('user_1745981101061', 0, NULL);
INSERT INTO public.users VALUES ('user_1745979089114', 5, 65);
INSERT INTO public.users VALUES ('user_1745977360368', 2, 152);
INSERT INTO public.users VALUES ('user_1745978014056', 5, 382);
INSERT INTO public.users VALUES ('user_1745978160855', 0, NULL);
INSERT INTO public.users VALUES ('user_1745977360369', 5, 69);
INSERT INTO public.users VALUES ('user_1745977499351', 0, NULL);
INSERT INTO public.users VALUES ('user_1745978160854', 0, NULL);
INSERT INTO public.users VALUES ('user_1745977499350', 0, NULL);
INSERT INTO public.users VALUES ('user_1745978254841', 0, NULL);
INSERT INTO public.users VALUES ('user_1745978254840', 0, NULL);
INSERT INTO public.users VALUES ('user_1745978324623', 0, NULL);
INSERT INTO public.users VALUES ('user_1745978324622', 0, NULL);
INSERT INTO public.users VALUES ('user_1745978413585', 0, NULL);
INSERT INTO public.users VALUES ('user_1745978413584', 0, NULL);
INSERT INTO public.users VALUES ('user_1745977522591', 2, 580);
INSERT INTO public.users VALUES ('user_1745979111938', 2, 161);
INSERT INTO public.users VALUES ('user_1745977522592', 5, 134);
INSERT INTO public.users VALUES ('user_1745978520071', 2, 359);
INSERT INTO public.users VALUES ('user_1745982622470', 0, NULL);
INSERT INTO public.users VALUES ('user_1745979111939', 5, 8);
INSERT INTO public.users VALUES ('user_1745978520072', 5, 324);
INSERT INTO public.users VALUES ('user_1745977572643', 2, 150);
INSERT INTO public.users VALUES ('user_1745982622469', 0, NULL);
INSERT INTO public.users VALUES ('user_1745977572644', 5, 95);
INSERT INTO public.users VALUES ('user_1745979132759', 2, 53);
INSERT INTO public.users VALUES ('user_1745978574610', 2, 655);
INSERT INTO public.users VALUES ('user_1745979132760', 5, 43);
INSERT INTO public.users VALUES ('user_1745977690092', 2, 547);
INSERT INTO public.users VALUES ('user_1745978574611', 5, 81);
INSERT INTO public.users VALUES ('user_1745977690093', 5, 98);
INSERT INTO public.users VALUES ('user_1745982628692', 0, NULL);
INSERT INTO public.users VALUES ('user_1745979208327', 2, 298);
INSERT INTO public.users VALUES ('user_1745982628691', 0, NULL);
INSERT INTO public.users VALUES ('user_1745978617487', 2, 277);
INSERT INTO public.users VALUES ('user_1745979208328', 5, 104);
INSERT INTO public.users VALUES ('user_1745978617488', 5, 192);
INSERT INTO public.users VALUES ('user_1745979275167', 2, 806);
INSERT INTO public.users VALUES ('user_1745982937408', 0, NULL);
INSERT INTO public.users VALUES ('user_1745978669719', 2, 696);
INSERT INTO public.users VALUES ('user_1745982937407', 0, NULL);
INSERT INTO public.users VALUES ('user_1745979275168', 5, 292);
INSERT INTO public.users VALUES ('user_1745978669720', 5, 222);
INSERT INTO public.users VALUES ('user_1745982956071', 0, NULL);
INSERT INTO public.users VALUES ('user_1745982956070', 0, NULL);
INSERT INTO public.users VALUES ('user_1745978985812', 2, 25);
INSERT INTO public.users VALUES ('user_1745983067175', 0, NULL);
INSERT INTO public.users VALUES ('user_1745979342433', 2, 668);
INSERT INTO public.users VALUES ('user_1745978985813', 5, 80);
INSERT INTO public.users VALUES ('user_1745983067174', 0, NULL);
INSERT INTO public.users VALUES ('user_1745983232190', 0, NULL);
INSERT INTO public.users VALUES ('user_1745979342434', 5, 224);
INSERT INTO public.users VALUES ('user_1745979004547', 2, 679);
INSERT INTO public.users VALUES ('p', 2, 11);
INSERT INTO public.users VALUES ('user_1745979558971', 0, NULL);
INSERT INTO public.users VALUES ('user_1745979004548', 5, 63);
INSERT INTO public.users VALUES ('user_1745979558970', 0, NULL);
INSERT INTO public.users VALUES ('user_1745979714065', 0, NULL);
INSERT INTO public.users VALUES ('user_1745979714064', 0, NULL);
INSERT INTO public.users VALUES ('user_1745979788750', 0, NULL);
INSERT INTO public.users VALUES ('user_1745979788749', 0, NULL);
INSERT INTO public.users VALUES ('user_1745979799998', 0, NULL);
INSERT INTO public.users VALUES ('user_1745979799997', 0, NULL);
INSERT INTO public.users VALUES ('user_1745983232189', 0, NULL);
INSERT INTO public.users VALUES ('user_1745979960009', 2, 590);
INSERT INTO public.users VALUES ('user_1745979960010', 5, 416);
INSERT INTO public.users VALUES ('user_1745983314730', 2, 438);
INSERT INTO public.users VALUES ('user_1745980080494', 2, 385);
INSERT INTO public.users VALUES ('user_1745983314731', 5, 82);
INSERT INTO public.users VALUES ('user_1745980080495', 5, 135);
INSERT INTO public.users VALUES ('user_1745980236208', 0, NULL);
INSERT INTO public.users VALUES ('user_1745980236207', 0, NULL);
INSERT INTO public.users VALUES ('user_1745980353649', 0, NULL);
INSERT INTO public.users VALUES ('user_1745980353648', 0, NULL);
INSERT INTO public.users VALUES ('user_1745981052313', 0, NULL);
INSERT INTO public.users VALUES ('user_1745981052312', 0, NULL);
INSERT INTO public.users VALUES ('user_1745983579118', 2, 337);
INSERT INTO public.users VALUES ('user_1745983455791', 2, 192);
INSERT INTO public.users VALUES ('user_1745983579119', 5, 118);
INSERT INTO public.users VALUES ('user_1745983455792', 5, 120);
INSERT INTO public.users VALUES ('user_1745983750461', 2, 297);
INSERT INTO public.users VALUES ('user_1745983522133', 2, 751);
INSERT INTO public.users VALUES ('user_1745983624658', 2, 484);
INSERT INTO public.users VALUES ('user_1745983522134', 5, 45);
INSERT INTO public.users VALUES ('user_1745983750462', 5, 56);
INSERT INTO public.users VALUES ('user_1745983624659', 5, 187);
INSERT INTO public.users VALUES ('user_1745983654114', 2, 45);
INSERT INTO public.users VALUES ('user_1745983762572', 2, 435);
INSERT INTO public.users VALUES ('user_1745983654115', 5, 140);
INSERT INTO public.users VALUES ('user_1745983762573', 5, 279);
INSERT INTO public.users VALUES ('user_1745983708608', 2, 454);
INSERT INTO public.users VALUES ('user_1745983708609', 5, 329);
INSERT INTO public.users VALUES ('user_1745983784694', 2, 256);
INSERT INTO public.users VALUES ('user_1745983784695', 5, 441);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (username);


--
-- PostgreSQL database dump complete
--

