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
    name character varying(30) NOT NULL,
    distance_from_heart_a_l integer NOT NULL,
    number_black_holes integer,
    celestial_latitude numeric(12,9) NOT NULL,
    celestial_longitude numeric(12,9) NOT NULL,
    known_to_greek boolean,
    known_to_chinese boolean,
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
    name character varying(30) NOT NULL,
    planet_id integer,
    mass_to_e_moon numeric(6,1),
    radius_to_e_moon integer NOT NULL,
    is_there_pyramids boolean NOT NULL,
    is_there_nazca_men boolean NOT NULL,
    distance_from_planet_km integer,
    description text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon2; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon2 (
    moon2_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon2 OWNER TO freecodecamp;

--
-- Name: moon2_moon2_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon2_moon2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon2_moon2_id_seq OWNER TO freecodecamp;

--
-- Name: moon2_moon2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon2_moon2_id_seq OWNED BY public.moon2.moon2_id;


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
    name character varying(30) NOT NULL,
    star_id integer,
    distance_from_earth_a_l integer NOT NULL,
    mass_to_heart numeric(6,1),
    radius_to_heart integer,
    ok_for_life boolean,
    is_there_a_chinese_store boolean,
    description text
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    distance_from_earth_a_l integer NOT NULL,
    celestial_latitude numeric(12,9) NOT NULL,
    celestial_longitude numeric(12,9) NOT NULL,
    known_to_greek boolean,
    known_to_chinese boolean,
    number_of_planets integer,
    description text
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
-- Name: moon2 moon2_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon2 ALTER COLUMN moon2_id SET DEFAULT nextval('public.moon2_moon2_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'gal_1', 30, 0, 135.909870000, 153.875467800, true, true, NULL);
INSERT INTO public.galaxy VALUES (2, 'gal_2', 1500, 2, 12.907000000, 297.875467800, true, false, NULL);
INSERT INTO public.galaxy VALUES (3, 'gal_3', 300000, 1, 120.129070000, 27.875780000, false, false, NULL);
INSERT INTO public.galaxy VALUES (4, 'gal_4', 31000, 1, 120.173684700, 27.878000000, false, true, NULL);
INSERT INTO public.galaxy VALUES (5, 'gal_5', 310000, 14, 10.173684700, 27.780000000, true, true, NULL);
INSERT INTO public.galaxy VALUES (6, 'gal_6', 9100000, 0, 10.176470000, 27.784536000, false, false, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon_1', 1, 3.0, 3, false, true, 3000000, NULL);
INSERT INTO public.moon VALUES (2, 'moon_2', 2, 4.0, 5, false, true, 7000000, NULL);
INSERT INTO public.moon VALUES (3, 'moon_3', 3, 4.0, 5, false, true, 7000000, NULL);
INSERT INTO public.moon VALUES (4, 'moon_4', 1, 4.0, 5, false, true, 7000000, NULL);
INSERT INTO public.moon VALUES (5, 'moon_5', 2, 4.0, 7, false, true, 100000, NULL);
INSERT INTO public.moon VALUES (6, 'moon_6', 3, 45.0, 7, false, true, 100000, NULL);
INSERT INTO public.moon VALUES (7, 'moon_8', 4, 45.0, 3, false, false, 10000000, NULL);
INSERT INTO public.moon VALUES (8, 'moon_9', 5, 5.0, 77, false, false, 100000, NULL);
INSERT INTO public.moon VALUES (9, 'moon_10', 5, 5.0, 77, false, false, 100000, NULL);
INSERT INTO public.moon VALUES (10, 'moon_11', 5, 5.0, 77, false, false, 100000, NULL);
INSERT INTO public.moon VALUES (11, 'moon_12', 6, 5.0, 7, false, false, 100000, NULL);
INSERT INTO public.moon VALUES (12, 'moon_13', 6, 10.0, 7, false, false, 10000000, NULL);
INSERT INTO public.moon VALUES (16, 'moon_14', 8, 5.0, 77, false, false, 100000, NULL);
INSERT INTO public.moon VALUES (17, 'moon_15', 10, 5.0, 7, false, false, 100000, NULL);
INSERT INTO public.moon VALUES (18, 'moon_16', 10, 10.0, 7, false, false, 10000000, NULL);
INSERT INTO public.moon VALUES (19, 'moon_17', 8, 5.0, 77, false, false, 100000, NULL);
INSERT INTO public.moon VALUES (20, 'moon_18', 10, 5.0, 7, false, false, 100000, NULL);
INSERT INTO public.moon VALUES (21, 'moon_19', 10, 10.0, 7, false, false, 10000000, NULL);
INSERT INTO public.moon VALUES (22, 'moon_20', 8, 5.0, 77, false, false, 100000, NULL);
INSERT INTO public.moon VALUES (23, 'moon_21', 10, 5.0, 7, false, false, 100000, NULL);
INSERT INTO public.moon VALUES (24, 'moon_22', 10, 10.0, 7, false, false, 10000000, NULL);


--
-- Data for Name: moon2; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon2 VALUES (1, 'moon2_1', 1);
INSERT INTO public.moon2 VALUES (2, 'moon2_2', 2);
INSERT INTO public.moon2 VALUES (3, 'moon2_3', 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet_1', 1, 350, 1.5, 2, true, true, NULL);
INSERT INTO public.planet VALUES (2, 'planet_2', 1, 350, 1.0, 2, true, true, NULL);
INSERT INTO public.planet VALUES (3, 'planet_3', 2, 1212, 1.9, 3, true, false, NULL);
INSERT INTO public.planet VALUES (4, 'planet_4', 2, 1211, 1.9, 3, true, false, NULL);
INSERT INTO public.planet VALUES (5, 'planet_5', 3, 1, 1.9, 3, true, false, NULL);
INSERT INTO public.planet VALUES (6, 'planet_6', 4, 1, 9.6, 20, true, true, NULL);
INSERT INTO public.planet VALUES (7, 'planet_7', 5, 1, 9.6, 20, true, true, NULL);
INSERT INTO public.planet VALUES (8, 'planet_8', 6, 1, 9.0, 18, false, false, NULL);
INSERT INTO public.planet VALUES (10, 'planet_9', 6, 1, 9.0, 18, true, false, NULL);
INSERT INTO public.planet VALUES (11, 'planet_10', 5, 6000, 9.0, 20, true, true, NULL);
INSERT INTO public.planet VALUES (12, 'planet_11', 4, 2000, 9.0, 20, true, true, NULL);
INSERT INTO public.planet VALUES (13, 'planet_12', 3, 1000, 9.0, 20, false, false, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star_1', 1, 34002, 172.999000000, 310.770000000, true, true, 3, NULL);
INSERT INTO public.star VALUES (2, 'star_2', 2, 340, 322.999000000, 10.770000000, true, false, 0, NULL);
INSERT INTO public.star VALUES (3, 'star_3', 3, 40, 32.999000000, 100.384950000, true, false, 4, NULL);
INSERT INTO public.star VALUES (4, 'star_4', 1, 340, 32.456000000, 10.384950000, true, false, 0, NULL);
INSERT INTO public.star VALUES (5, 'star_5', 6, 1340, 346.878700000, 10.495000000, false, false, 1, NULL);
INSERT INTO public.star VALUES (6, 'star_6', 1, 140, 34.878700000, 197.495000000, false, false, 0, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon2_moon2_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon2_moon2_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon2 moon2_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon2
    ADD CONSTRAINT moon2_pkey PRIMARY KEY (moon2_id);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_id UNIQUE (galaxy_id);


--
-- Name: moon2 unique_moon2_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon2
    ADD CONSTRAINT unique_moon2_id UNIQUE (moon2_id);


--
-- Name: moon unique_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_id UNIQUE (moon_id);


--
-- Name: planet unique_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_id UNIQUE (planet_id);


--
-- Name: star unique_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_id UNIQUE (star_id);


--
-- Name: moon2 moon2_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon2
    ADD CONSTRAINT moon2_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

