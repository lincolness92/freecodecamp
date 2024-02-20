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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(255),
    size integer NOT NULL,
    composition text
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255),
    size integer NOT NULL,
    is_active boolean NOT NULL,
    has_blackhole boolean,
    age numeric
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
    name character varying(255),
    planet_id integer,
    is_inhabited boolean NOT NULL,
    surface_area integer,
    description text
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
    name character varying(255),
    star_id integer,
    has_atmosphere boolean NOT NULL,
    population_in_billions integer,
    orbit_period numeric NOT NULL
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
    name character varying(255),
    galaxy_id integer,
    mass integer NOT NULL,
    is_visible boolean NOT NULL,
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Ceres', 940, 'Carbonaceous chondrite');
INSERT INTO public.asteroid VALUES (2, 'Vesta', 525, 'Basaltic rock');
INSERT INTO public.asteroid VALUES (3, 'Pallas', 512, 'Silicate rock');
INSERT INTO public.asteroid VALUES (4, 'Hygiea', 434, 'Carbonaceous chondrite');
INSERT INTO public.asteroid VALUES (5, 'Juno', 233, 'Stony asteroid');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 105700, true, true, 13.51);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 220000, true, true, 10.0);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 60000, true, false, 13.0);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 50000, true, true, 10.7);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 60000, true, false, 8.0);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 170000, true, true, 7.5);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, false, 37932000, 'Earth''s only natural satellite.');
INSERT INTO public.moon VALUES (2, 'Phobos', 4, false, 1548, 'One of Mars'' moons.');
INSERT INTO public.moon VALUES (3, 'Deimos', 4, false, 495, 'Smaller of Mars'' two moons.');
INSERT INTO public.moon VALUES (4, 'Io', 5, false, 41400000, 'One of Jupiter''s moons.');
INSERT INTO public.moon VALUES (5, 'Europa', 5, false, 15608000, 'One of Jupiter''s moons.');
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, false, 87200000, 'Largest moon in the Solar System.');
INSERT INTO public.moon VALUES (7, 'Callisto', 5, false, 73000000, 'One of Jupiter''s moons.');
INSERT INTO public.moon VALUES (8, 'Titan', 6, false, 83000000, 'Largest moon of Saturn.');
INSERT INTO public.moon VALUES (9, 'Rhea', 6, false, 15300000, 'One of Saturn''s moons.');
INSERT INTO public.moon VALUES (10, 'Iapetus', 6, false, 16000000, 'One of Saturn''s moons.');
INSERT INTO public.moon VALUES (11, 'Mimas', 6, false, 350000, 'One of Saturn''s moons.');
INSERT INTO public.moon VALUES (12, 'Enceladus', 6, false, 1020000, 'One of Saturn''s moons.');
INSERT INTO public.moon VALUES (13, 'Tethys', 6, false, 6600000, 'One of Saturn''s moons.');
INSERT INTO public.moon VALUES (14, 'Dione', 6, false, 11800000, 'One of Saturn''s moons.');
INSERT INTO public.moon VALUES (15, 'Ariel', 7, false, 13000000, 'One of Uranus'' moons.');
INSERT INTO public.moon VALUES (16, 'Umbriel', 7, false, 12000000, 'One of Uranus'' moons.');
INSERT INTO public.moon VALUES (17, 'Titania', 7, false, 18000000, 'One of Uranus'' moons.');
INSERT INTO public.moon VALUES (18, 'Oberon', 7, false, 16000000, 'One of Uranus'' moons.');
INSERT INTO public.moon VALUES (19, 'Miranda', 7, false, 235000, 'One of Uranus'' moons.');
INSERT INTO public.moon VALUES (20, 'Triton', 8, false, 23000000, 'Largest moon of Neptune.');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, false, 0, 88);
INSERT INTO public.planet VALUES (2, 'Venus', 1, true, 0, 225);
INSERT INTO public.planet VALUES (3, 'Earth', 1, true, 8, 365);
INSERT INTO public.planet VALUES (4, 'Mars', 1, true, 0, 687);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, true, 0, 4332);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, true, 0, 10759);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, true, 0, 30687);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, true, 0, 60190);
INSERT INTO public.planet VALUES (9, 'Kepler-22b', 6, true, 0, 290);
INSERT INTO public.planet VALUES (10, 'Gliese 581g', 6, true, 0, 200);
INSERT INTO public.planet VALUES (11, 'Proxima Centauri b', 6, true, 0, 233);
INSERT INTO public.planet VALUES (12, 'Tau Ceti e', 6, true, 0, 168);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 1988500, true, 'The star at the center of our solar system.');
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 1, 1100000, true, 'One of the stars in the closest star system to the Solar System.');
INSERT INTO public.star VALUES (3, 'Alpha Centauri B', 1, 907500, true, 'A companion star to Alpha Centauri A.');
INSERT INTO public.star VALUES (4, 'Betelgeuse', 1, 31900000, true, 'A red supergiant star in the constellation Orion.');
INSERT INTO public.star VALUES (5, 'Sirius A', 1, 2028500, true, 'The brightest star in the Earth''s night sky.');
INSERT INTO public.star VALUES (6, 'Proxima Centauri', 1, 123456, true, 'The closest star to the sun.');


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 5, true);


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
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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

