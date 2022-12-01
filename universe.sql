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
-- Name: fill; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fill (
    fill_id integer NOT NULL,
    name character varying(20) NOT NULL,
    nidea boolean
);


ALTER TABLE public.fill OWNER TO freecodecamp;

--
-- Name: fill_fill_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fill_fill_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fill_fill_id_seq OWNER TO freecodecamp;

--
-- Name: fill_fill_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fill_fill_id_seq OWNED BY public.fill.fill_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(20) NOT NULL,
    age numeric,
    distance_from_earth integer,
    size numeric,
    galaxy_id integer NOT NULL
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
    name character varying(20) NOT NULL,
    type text,
    orbits_earth boolean,
    description text,
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
    name character varying(20) NOT NULL,
    type text,
    is_spherical boolean,
    description text,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    type text,
    distance_from_earth integer,
    description text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.star_id;


--
-- Name: fill fill_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fill ALTER COLUMN fill_id SET DEFAULT nextval('public.fill_fill_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: fill; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fill VALUES (4, 'sample text', NULL);
INSERT INTO public.fill VALUES (5, 'sample text', NULL);
INSERT INTO public.fill VALUES (6, 'sample text', NULL);
INSERT INTO public.fill VALUES (7, 'sample text', NULL);
INSERT INTO public.fill VALUES (8, 'sample text', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('milky way', 6542, 6542354, 6545898, 2);
INSERT INTO public.galaxy VALUES ('Andromeda', 6542, 89765, 54465, 3);
INSERT INTO public.galaxy VALUES ('BW654', 6542, 6542354, 6545898, 4);
INSERT INTO public.galaxy VALUES ('Andromeda 2', 6542, 89765, 54465, 5);
INSERT INTO public.galaxy VALUES ('Cosmos', 6542, 6542354, 6545898, 6);
INSERT INTO public.galaxy VALUES ('Andromeda 4', 6542, 89765, 54465, 7);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'p54', 'satelite', true, 'hace frio', NULL);
INSERT INTO public.moon VALUES (2, 'je 26r', 'cuerpo azul', false, 'gaseoso', NULL);
INSERT INTO public.moon VALUES (3, 'n54', 'psatelite', false, 'tiene anillos', NULL);
INSERT INTO public.moon VALUES (4, 'uo4', 'planeta', false, 'no habitable', NULL);
INSERT INTO public.moon VALUES (5, 'p54', 'satelite', true, 'hace frio', NULL);
INSERT INTO public.moon VALUES (6, 'je 26r', 'cuerpo azul', false, 'gaseoso', NULL);
INSERT INTO public.moon VALUES (7, 'n54', 'psatelite', false, 'tiene anillos', NULL);
INSERT INTO public.moon VALUES (8, 'uo4', 'planeta', false, 'no habitable', NULL);
INSERT INTO public.moon VALUES (9, 'p54', 'satelite', true, 'hace frio', NULL);
INSERT INTO public.moon VALUES (10, 'je 26r', 'cuerpo azul', false, 'gaseoso', NULL);
INSERT INTO public.moon VALUES (11, 'n54', 'psatelite', false, 'tiene anillos', NULL);
INSERT INTO public.moon VALUES (12, 'uo4', 'planeta', false, 'no habitable', NULL);
INSERT INTO public.moon VALUES (13, 'p54', 'satelite', true, 'hace frio', NULL);
INSERT INTO public.moon VALUES (14, 'je 26r', 'cuerpo azul', false, 'gaseoso', NULL);
INSERT INTO public.moon VALUES (15, 'n54', 'psatelite', false, 'tiene anillos', NULL);
INSERT INTO public.moon VALUES (16, 'uo4', 'planeta', false, 'no habitable', NULL);
INSERT INTO public.moon VALUES (17, 'p54', 'satelite', true, 'hace frio', NULL);
INSERT INTO public.moon VALUES (18, 'je 26r', 'cuerpo azul', false, 'gaseoso', NULL);
INSERT INTO public.moon VALUES (19, 'n54', 'psatelite', false, 'tiene anillos', NULL);
INSERT INTO public.moon VALUES (20, 'uo4', 'planeta', false, 'no habitable', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercurio', 'fuego', true, 'hace calor', NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 'agua', true, 'gaseoso', NULL);
INSERT INTO public.planet VALUES (3, 'tierra', 'planeta', true, 'vivimos aqui', NULL);
INSERT INTO public.planet VALUES (4, 'marte', 'planeta', true, 'habitable', NULL);
INSERT INTO public.planet VALUES (5, 'pluton', 'fuego', true, 'hace frio', NULL);
INSERT INTO public.planet VALUES (6, 'jupiter', 'planeta', true, 'gaseoso', NULL);
INSERT INTO public.planet VALUES (7, 'saturno', 'planeta', true, 'tiene anillos', NULL);
INSERT INTO public.planet VALUES (8, 'urano', 'planeta', true, 'no habitable', NULL);
INSERT INTO public.planet VALUES (9, 'pl564', 'fuego', true, 'hace frio', NULL);
INSERT INTO public.planet VALUES (10, 'jite 6r', 'planeta', true, 'gaseoso', NULL);
INSERT INTO public.planet VALUES (11, 'no54', 'planeta', true, 'tiene anillos', NULL);
INSERT INTO public.planet VALUES (12, 'uo564', 'planeta', true, 'no habitable', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star 1', 'fuego', 6542354, 'brilla', NULL);
INSERT INTO public.star VALUES (2, 'Star 2', 'agua', 89765, 'a veces brilla', NULL);
INSERT INTO public.star VALUES (3, 'Star 3', 'tierra', 654321, 'no brilla', NULL);
INSERT INTO public.star VALUES (4, 'Star 4', 'fuego', 6542354, 'brilla', NULL);
INSERT INTO public.star VALUES (5, 'Star 5', 'agua', 89765, 'a veces brilla', NULL);
INSERT INTO public.star VALUES (6, 'Star 6', 'tierra', 654321, 'no brilla', NULL);


--
-- Name: fill_fill_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fill_fill_id_seq', 8, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 6, true);


--
-- Name: fill fill_fill_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fill
    ADD CONSTRAINT fill_fill_id_key UNIQUE (fill_id);


--
-- Name: fill fill_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fill
    ADD CONSTRAINT fill_pkey PRIMARY KEY (fill_id);


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

