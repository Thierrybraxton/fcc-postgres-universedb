--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    name character varying(50) NOT NULL,
    galaxy_num integer,
    galaxy_distance_km numeric,
    galaxy_size integer,
    habitable boolean,
    is_spherical boolean,
    description text
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
    name character varying(50) NOT NULL,
    is_spherical boolean,
    distance_from_planet numeric,
    age_in_years integer,
    planet_id integer
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
    name character varying(50) NOT NULL,
    is_spherical boolean,
    habitable boolean,
    planet_size numeric,
    star_id integer
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
-- Name: solor_system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solor_system (
    solor_system_id integer NOT NULL,
    name character varying(50) NOT NULL,
    size integer
);


ALTER TABLE public.solor_system OWNER TO freecodecamp;

--
-- Name: solor_system_solar_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.solor_system_solar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solor_system_solar_id_seq OWNER TO freecodecamp;

--
-- Name: solor_system_solar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.solor_system_solar_id_seq OWNED BY public.solor_system.solor_system_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    star_distance_km numeric,
    star_size integer,
    star_num integer,
    description text,
    galaxy_id integer
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
-- Name: solor_system solor_system_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solor_system ALTER COLUMN solor_system_id SET DEFAULT nextval('public.solor_system_solar_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Pronto', 237, 4539450, 200079594, true, true, NULL);
INSERT INTO public.galaxy VALUES (2, 'Arcius', 478, 3990678, 554936, true, true, NULL);
INSERT INTO public.galaxy VALUES (3, 'Welacon', 345, 2976547, 7866548, true, true, NULL);
INSERT INTO public.galaxy VALUES (4, 'Esken', 23, 433435454, 45678645, false, true, NULL);
INSERT INTO public.galaxy VALUES (5, 'Donhaca', 500, 7597499, 99898989, false, false, NULL);
INSERT INTO public.galaxy VALUES (6, 'Yesons', 376, 45345990, 49988978, false, true, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'vens', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (2, 'brani', NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (3, 'reondo', NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (4, 'borus', NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES (5, 'weng', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (6, 'xeno', NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (7, 'uran', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (8, 'wenst', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (9, 'torus', NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (10, 'vandal', NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (11, 'nonu', NULL, NULL, NULL, 11);
INSERT INTO public.moon VALUES (12, 'calcos', NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES (13, 'wren', NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (14, 'trons', NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (15, 'bonchi', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (16, 'eron', NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (17, 'vans', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (18, 'hera', NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (19, 'cromus', NULL, NULL, NULL, 11);
INSERT INTO public.moon VALUES (20, 'speres', NULL, NULL, NULL, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, true, 4700987, 1);
INSERT INTO public.planet VALUES (2, 'Evon', true, true, 97689, 3);
INSERT INTO public.planet VALUES (3, 'Mars', true, false, 76689, 1);
INSERT INTO public.planet VALUES (4, 'Pinto', true, false, 348976, 2);
INSERT INTO public.planet VALUES (5, 'Rendo', true, false, 458898, 4);
INSERT INTO public.planet VALUES (6, 'Even', NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (7, 'Yren', NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (8, 'Uranis', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'Tron', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (10, 'Jen', NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (11, 'benis', NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (12, 'Venus', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (13, 'Laya', NULL, NULL, NULL, 3);


--
-- Data for Name: solor_system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solor_system VALUES (1, 'plasma', NULL);
INSERT INTO public.solor_system VALUES (2, 'gorgo', NULL);
INSERT INTO public.solor_system VALUES (3, 'vansrs', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', true, true, 3488988, 6690646, 1, NULL, 1);
INSERT INTO public.star VALUES (2, 'Weni', true, true, 346576788, 4545664, 23, NULL, 3);
INSERT INTO public.star VALUES (3, 'Bons', true, true, 780098, 45367, 45, NULL, 4);
INSERT INTO public.star VALUES (4, 'Yinse', false, true, 4568907, 550090, 56, NULL, 2);
INSERT INTO public.star VALUES (5, 'VONE', false, true, 9887679, 675543, 346, NULL, 6);
INSERT INTO public.star VALUES (6, 'Uran', true, true, 7890654, 435765, 34, NULL, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: solor_system_solar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.solor_system_solar_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_cons; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_cons UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_cons; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_cons UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_cons; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_cons UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: solor_system solar_cons; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solor_system
    ADD CONSTRAINT solar_cons UNIQUE (solor_system_id);


--
-- Name: solor_system solor_system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solor_system
    ADD CONSTRAINT solor_system_pkey PRIMARY KEY (solor_system_id);


--
-- Name: star star_cons; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_cons UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

