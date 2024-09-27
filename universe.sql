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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40),
    size integer NOT NULL,
    distance_to_earth numeric(5,1),
    history text,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40),
    size integer NOT NULL,
    distance_to_earth numeric(5,1),
    history text,
    has_life boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40),
    size integer NOT NULL,
    distance_to_earth numeric(5,1),
    history text,
    has_life boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: solar; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solar (
    solar_id integer NOT NULL,
    name character varying(40),
    size integer NOT NULL,
    distance_to_earth numeric(5,1),
    history text,
    has_life boolean
);


ALTER TABLE public.solar OWNER TO freecodecamp;

--
-- Name: solar_solar_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.solar_solar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solar_solar_id_seq OWNER TO freecodecamp;

--
-- Name: solar_solar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.solar_solar_id_seq OWNED BY public.solar.solar_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40),
    size integer NOT NULL,
    distance_to_earth numeric(5,1),
    history text,
    has_life boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: solar solar_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar ALTER COLUMN solar_id SET DEFAULT nextval('public.solar_solar_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'AAA', 100, 1.1, 'ABCD EFGHI', false);
INSERT INTO public.galaxy VALUES (2, 'BBB', 200, 2.1, 'ABCD EFGHI', false);
INSERT INTO public.galaxy VALUES (3, 'CCC', 300, 3.1, 'ABCD EFGHI', false);
INSERT INTO public.galaxy VALUES (4, 'DDD', 400, 4.1, 'ABCD EFGHI', true);
INSERT INTO public.galaxy VALUES (5, 'EEE', 500, 5.1, 'ABCD EFGHI', true);
INSERT INTO public.galaxy VALUES (6, 'FFF', 400, 4.1, 'ABCD EFGHI', true);
INSERT INTO public.galaxy VALUES (7, 'GGG', 400, 4.1, 'ABCD EFGHI', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon1', 500, 5.1, 'ABCD EFGHI', true, 1);
INSERT INTO public.moon VALUES (2, 'Moon2', 400, 4.1, 'ABCD EFGHI', true, 2);
INSERT INTO public.moon VALUES (3, 'Moon3', 400, 4.1, 'ABCD EFGHI', true, 3);
INSERT INTO public.moon VALUES (4, 'Moon4', 500, 5.1, 'ABCD EFGHI', true, 4);
INSERT INTO public.moon VALUES (5, 'Moon5', 400, 4.1, 'ABCD EFGHI', true, 5);
INSERT INTO public.moon VALUES (6, 'Moon6', 400, 4.1, 'ABCD EFGHI', true, 6);
INSERT INTO public.moon VALUES (7, 'Moon7', 500, 5.1, 'ABCD EFGHI', true, 7);
INSERT INTO public.moon VALUES (8, 'Moon8', 400, 4.1, 'ABCD EFGHI', true, 8);
INSERT INTO public.moon VALUES (9, 'Moon9', 400, 4.1, 'ABCD EFGHI', true, 9);
INSERT INTO public.moon VALUES (10, 'Moon10', 500, 5.1, 'ABCD EFGHI', true, 10);
INSERT INTO public.moon VALUES (11, 'Moon11', 400, 4.1, 'ABCD EFGHI', true, 11);
INSERT INTO public.moon VALUES (12, 'Moon12', 400, 4.1, 'ABCD EFGHI', true, 12);
INSERT INTO public.moon VALUES (13, 'Moon21', 500, 5.1, 'ABCD EFGHI', true, 1);
INSERT INTO public.moon VALUES (14, 'Moon22', 400, 4.1, 'ABCD EFGHI', true, 2);
INSERT INTO public.moon VALUES (15, 'Moon23', 400, 4.1, 'ABCD EFGHI', true, 3);
INSERT INTO public.moon VALUES (16, 'Moon24', 500, 5.1, 'ABCD EFGHI', true, 4);
INSERT INTO public.moon VALUES (17, 'Moon25', 400, 4.1, 'ABCD EFGHI', true, 5);
INSERT INTO public.moon VALUES (18, 'Moon26', 400, 4.1, 'ABCD EFGHI', true, 6);
INSERT INTO public.moon VALUES (19, 'Moon27', 500, 5.1, 'ABCD EFGHI', true, 1);
INSERT INTO public.moon VALUES (20, 'Moon28', 400, 4.1, 'ABCD EFGHI', true, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercurio', 500, 5.1, 'ABCD EFGHI', true, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 400, 4.1, 'ABCD EFGHI', true, 2);
INSERT INTO public.planet VALUES (3, 'Tierra', 400, 4.1, 'ABCD EFGHI', true, 3);
INSERT INTO public.planet VALUES (4, 'Marte', 500, 5.1, 'ABCD EFGHI', true, 4);
INSERT INTO public.planet VALUES (5, 'Jupiter', 400, 4.1, 'ABCD EFGHI', true, 5);
INSERT INTO public.planet VALUES (6, 'Saturno', 400, 4.1, 'ABCD EFGHI', true, 6);
INSERT INTO public.planet VALUES (7, 'Neptuno', 500, 5.1, 'ABCD EFGHI', true, 1);
INSERT INTO public.planet VALUES (8, 'Urano', 400, 4.1, 'ABCD EFGHI', true, 2);
INSERT INTO public.planet VALUES (9, 'Pluton', 400, 4.1, 'ABCD EFGHI', true, 3);
INSERT INTO public.planet VALUES (10, 'Vega', 500, 5.1, 'ABCD EFGHI', true, 4);
INSERT INTO public.planet VALUES (11, 'Alpha', 400, 4.1, 'ABCD EFGHI', true, 5);
INSERT INTO public.planet VALUES (12, 'Centos', 400, 4.1, 'ABCD EFGHI', true, 6);


--
-- Data for Name: solar; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solar VALUES (1, 'SAAA', 100, 1.1, 'ABCD EFGHI', false);
INSERT INTO public.solar VALUES (2, 'SBBB', 200, 2.1, 'ABCD EFGHI', false);
INSERT INTO public.solar VALUES (3, 'SCCC', 300, 3.1, 'ABCD EFGHI', false);
INSERT INTO public.solar VALUES (4, 'SDDD', 400, 4.1, 'ABCD EFGHI', true);
INSERT INTO public.solar VALUES (5, 'SEEE', 500, 5.1, 'ABCD EFGHI', true);
INSERT INTO public.solar VALUES (6, 'SFFF', 400, 4.1, 'ABCD EFGHI', true);
INSERT INTO public.solar VALUES (7, 'SGGG', 400, 4.1, 'ABCD EFGHI', true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'EEE', 500, 5.1, 'ABCD EFGHI', true, 1);
INSERT INTO public.star VALUES (2, 'FFF', 400, 4.1, 'ABCD EFGHI', true, 2);
INSERT INTO public.star VALUES (3, 'GGG', 400, 4.1, 'ABCD EFGHI', true, 3);
INSERT INTO public.star VALUES (4, 'HHH', 500, 5.1, 'ABCD EFGHI', true, 4);
INSERT INTO public.star VALUES (5, 'III', 400, 4.1, 'ABCD EFGHI', true, 5);
INSERT INTO public.star VALUES (6, 'JJJ', 400, 4.1, 'ABCD EFGHI', true, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: solar_solar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.solar_solar_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_moon_id_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key1 UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: solar solar_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar
    ADD CONSTRAINT solar_pkey PRIMARY KEY (solar_id);


--
-- Name: solar solar_solar_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar
    ADD CONSTRAINT solar_solar_id_key UNIQUE (solar_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

