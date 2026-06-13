--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    galaxy_types character varying(50) NOT NULL,
    has_life boolean NOT NULL,
    distance_from_earth numeric NOT NULL,
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
    planet_id integer NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    has_atmosphere boolean NOT NULL
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
    star_id integer NOT NULL,
    has_life boolean NOT NULL,
    distance_from_earth numeric NOT NULL,
    planet_types character varying(50) NOT NULL,
    is_spherical boolean NOT NULL
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
-- Name: space_probe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_probe (
    space_probe_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    active boolean NOT NULL,
    cost_in_millions integer NOT NULL
);


ALTER TABLE public.space_probe OWNER TO freecodecamp;

--
-- Name: space_probe_space_probe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_probe_space_probe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_probe_space_probe_id_seq OWNER TO freecodecamp;

--
-- Name: space_probe_space_probe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_probe_space_probe_id_seq OWNED BY public.space_probe.space_probe_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    galaxy_id integer NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    spectral_class character varying(10)
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
-- Name: space_probe space_probe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_probe ALTER COLUMN space_probe_id SET DEFAULT nextval('public.space_probe_space_probe_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', true, 0.0, 'Our home galaxy');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', false, 2.537, 'Closest large spiral galaxy');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', false, 2.73, 'Third-largest member of the Local Group');
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 'Lenticular', false, 28.0, 'Known for its bright nucleus and large central bulge');
INSERT INTO public.galaxy VALUES (5, 'Messier 87', 'Elliptical', false, 53.49, 'Supergiant elliptical galaxy in the constellation Virgo');
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', 'Lenticular/Elliptical', false, 11.0, 'One of the closest radio galaxies to Earth');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, true, 4500, false);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, false, 4500, false);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, false, 4500, false);
INSERT INTO public.moon VALUES (4, 'Io', 5, true, 4500, false);
INSERT INTO public.moon VALUES (5, 'Europa', 5, true, 4500, true);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, true, 4500, true);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, true, 4500, false);
INSERT INTO public.moon VALUES (8, 'Mimas', 6, true, 4500, false);
INSERT INTO public.moon VALUES (9, 'Enceladus', 6, true, 4500, true);
INSERT INTO public.moon VALUES (10, 'Tethys', 6, true, 4500, false);
INSERT INTO public.moon VALUES (11, 'Dione', 6, true, 4500, false);
INSERT INTO public.moon VALUES (12, 'Rhea', 6, true, 4500, false);
INSERT INTO public.moon VALUES (13, 'Titan', 6, true, 4500, true);
INSERT INTO public.moon VALUES (14, 'Iapetus', 6, true, 4500, false);
INSERT INTO public.moon VALUES (15, 'Ariel', 7, true, 4500, false);
INSERT INTO public.moon VALUES (16, 'Umbriel', 7, true, 4500, false);
INSERT INTO public.moon VALUES (17, 'Titania', 7, true, 4500, false);
INSERT INTO public.moon VALUES (18, 'Oberon', 7, true, 4500, false);
INSERT INTO public.moon VALUES (19, 'Miranda', 7, true, 4500, false);
INSERT INTO public.moon VALUES (20, 'Triton', 8, true, 4500, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, false, 0.61, 'Terrestrial', true);
INSERT INTO public.planet VALUES (2, 'Venus', 1, false, 0.28, 'Terrestrial', true);
INSERT INTO public.planet VALUES (3, 'Earth', 1, true, 0.0, 'Terrestrial', true);
INSERT INTO public.planet VALUES (4, 'Mars', 1, false, 0.52, 'Terrestrial', true);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, false, 4.2, 'Gas Giant', true);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, false, 8.0, 'Gas Giant', true);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, false, 18.2, 'Ice Giant', true);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, false, 29.0, 'Ice Giant', true);
INSERT INTO public.planet VALUES (9, 'Kepler-186f', 3, false, 582.0, 'Terrestrial', true);
INSERT INTO public.planet VALUES (10, 'Proxima b', 3, false, 4.2, 'Terrestrial', true);
INSERT INTO public.planet VALUES (11, 'Gliese 581g', 3, false, 20.3, 'Terrestrial', true);
INSERT INTO public.planet VALUES (12, 'WASP-12b', 5, false, 1400.0, 'Gas Giant', true);


--
-- Data for Name: space_probe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space_probe VALUES (1, 'Voyager 1', 'First probe to enter interstellar space', true, 250);
INSERT INTO public.space_probe VALUES (2, 'Voyager 2', 'First probe to visit Neptune and Uranus', true, 250);
INSERT INTO public.space_probe VALUES (3, 'Cassini-Huygens', 'Studied Saturn and its moons', false, 3260);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, true, 4603, 'G2V');
INSERT INTO public.star VALUES (2, 'Sirius', 1, true, 242, 'A1V');
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 1, true, 4850, 'M5.5Ve');
INSERT INTO public.star VALUES (4, 'Betelgeuse', 1, true, 8, 'M1-2');
INSERT INTO public.star VALUES (5, 'Vega', 1, true, 455, 'A0V');
INSERT INTO public.star VALUES (6, 'Rigel', 1, true, 8, 'B8Ia');


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: space_probe_space_probe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_probe_space_probe_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: space_probe space_probe_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_probe
    ADD CONSTRAINT space_probe_name_key UNIQUE (name);


--
-- Name: space_probe space_probe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_probe
    ADD CONSTRAINT space_probe_pkey PRIMARY KEY (space_probe_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


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

