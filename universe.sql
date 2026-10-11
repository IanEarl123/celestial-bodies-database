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
-- Name: coment; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.coment (
    coment_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    speed integer,
    is_periodic boolean
);


ALTER TABLE public.coment OWNER TO freecodecamp;

--
-- Name: coment_coment_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.coment_coment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coment_coment_id_seq OWNER TO freecodecamp;

--
-- Name: coment_coment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.coment_coment_id_seq OWNED BY public.coment.coment_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
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
    name character varying(50) NOT NULL,
    description text NOT NULL,
    planet_id integer NOT NULL,
    radius integer,
    is_spherical boolean
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
    description text NOT NULL,
    star_id integer NOT NULL,
    diameter integer,
    has_life boolean
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
    name character varying(50) NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years integer,
    galaxy_id integer NOT NULL,
    is_spherical boolean
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
-- Name: coment coment_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.coment ALTER COLUMN coment_id SET DEFAULT nextval('public.coment_coment_id_seq'::regclass);


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

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: coment; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.coment VALUES (1, 'Halley', 'Famous comet', 70, true);
INSERT INTO public.coment VALUES (2, 'HaleBopp', 'Bright comet', 44, false);
INSERT INTO public.coment VALUES (3, 'Encke', 'Periodic comet', 69, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Home galaxy', 13600, 0, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Nearest spiral galaxy', 10000, 2537000, false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral galaxy', 12000, 3000000, false);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Interacting galaxy', 13000, 23000000, false);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Bright galaxy', 11000, 29000000, false);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 'Large spiral galaxy', 9000, 21000000, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earth Moon', 3, 1737, true);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Mars Moon', 4, 11, false);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Mars Moon', 4, 6, false);
INSERT INTO public.moon VALUES (4, 'Io', 'Jupiter Moon', 5, 1821, true);
INSERT INTO public.moon VALUES (5, 'Europa', 'Jupiter Moon', 5, 1560, true);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Jupiter Moon', 5, 2634, true);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Jupiter Moon', 5, 2410, true);
INSERT INTO public.moon VALUES (8, 'Titan', 'Saturn Moon', 6, 2575, true);
INSERT INTO public.moon VALUES (9, 'Rhea', 'Saturn Moon', 6, 2575, true);
INSERT INTO public.moon VALUES (10, 'Iapetus', 'Saturn Moon', 6, 734, true);
INSERT INTO public.moon VALUES (11, 'Dione', 'Saturn Moon', 6, 561, true);
INSERT INTO public.moon VALUES (12, 'Tethys', 'Saturn Moon', 6, 531, true);
INSERT INTO public.moon VALUES (13, 'Enceladus', 'Saturn Moon', 6, 252, true);
INSERT INTO public.moon VALUES (14, 'Mimas', 'Saturn Moon', 6, 198, true);
INSERT INTO public.moon VALUES (15, 'Titania', 'Uranus Moon', 7, 789, true);
INSERT INTO public.moon VALUES (16, 'Oberon', 'Uranus Moon', 7, 761, true);
INSERT INTO public.moon VALUES (17, 'Umbriel', 'Uranus Moon', 7, 585, true);
INSERT INTO public.moon VALUES (18, 'Ariel', 'Uranus Moon', 7, 578, true);
INSERT INTO public.moon VALUES (19, 'Triton', 'Neptune Moon', 8, 1353, true);
INSERT INTO public.moon VALUES (20, 'Nereid', 'Neptune Moon', 8, 170, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Closest planet', 1, 12104, false);
INSERT INTO public.planet VALUES (2, 'Venus', 'Second planet', 1, 12104, false);
INSERT INTO public.planet VALUES (3, 'Earth', 'Home planet', 1, 12742, true);
INSERT INTO public.planet VALUES (4, 'Mars', 'Red planet', 1, 6779, false);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Gas giant', 1, 139820, false);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Ringed planet', 1, 116460, false);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice giant', 1, 50724, false);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Blue giant', 1, 49244, false);
INSERT INTO public.planet VALUES (9, 'PlanetX', 'Fictional', 2, 10000, false);
INSERT INTO public.planet VALUES (10, 'PlanetY', 'Fictional', 3, 12000, false);
INSERT INTO public.planet VALUES (11, 'PlanetZ', 'Fictional', 4, 15000, false);
INSERT INTO public.planet VALUES (12, 'Kepler22b', 'Exoplanet', 5, 25000, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Our star', 4600, 1, true);
INSERT INTO public.star VALUES (2, 'Sirius', 'Bright star', 300, 1, true);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'Red supergiant', 10, 2, true);
INSERT INTO public.star VALUES (4, 'Rigel', 'Blue supergiant', 8, 3, true);
INSERT INTO public.star VALUES (5, 'Vega', 'Bright star', 455, 4, true);
INSERT INTO public.star VALUES (6, 'Polaris', 'North Star', 70, 5, true);


--
-- Name: coment_coment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.coment_coment_id_seq', 3, true);


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
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: coment coment_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.coment
    ADD CONSTRAINT coment_name_key UNIQUE (name);


--
-- Name: coment coment_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.coment
    ADD CONSTRAINT coment_pkey PRIMARY KEY (coment_id);


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

