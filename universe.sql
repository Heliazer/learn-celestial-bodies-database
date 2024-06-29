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
    name character varying(100) NOT NULL,
    size text NOT NULL,
    type character varying(50) NOT NULL,
    age integer NOT NULL,
    has_black_hole boolean NOT NULL
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
    name character varying(100) NOT NULL,
    size numeric NOT NULL,
    type character varying(50) NOT NULL,
    orbit_period integer NOT NULL,
    has_atmosphere boolean NOT NULL,
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
    name character varying(100) NOT NULL,
    size numeric NOT NULL,
    type character varying(50) NOT NULL,
    distance_from_star integer NOT NULL,
    has_life boolean NOT NULL,
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
-- Name: spaceship; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.spaceship (
    spaceship_id integer NOT NULL,
    name character varying(100) NOT NULL,
    crew_capacity integer NOT NULL,
    type character varying(50) NOT NULL,
    speed numeric NOT NULL,
    is_operational boolean NOT NULL
);


ALTER TABLE public.spaceship OWNER TO freecodecamp;

--
-- Name: spaceship_spaceship_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.spaceship_spaceship_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spaceship_spaceship_id_seq OWNER TO freecodecamp;

--
-- Name: spaceship_spaceship_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.spaceship_spaceship_id_seq OWNED BY public.spaceship.spaceship_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    mass numeric NOT NULL,
    type character varying(50) NOT NULL,
    luminosity numeric NOT NULL,
    has_planetary_system boolean NOT NULL,
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
-- Name: spaceship spaceship_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceship ALTER COLUMN spaceship_id SET DEFAULT nextval('public.spaceship_spaceship_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', '220000', 'Spiral', 10000, true);
INSERT INTO public.galaxy VALUES (2, 'Triangulum', '60000', 'Spiral', 3000, false);
INSERT INTO public.galaxy VALUES (3, 'Whirlpool', '76000', 'Spiral', 5000, true);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', '49000', 'Spiral', 8000, false);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel', '170000', 'Spiral', 7000, true);
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', '150000', 'Lenticular', 9000, false);
INSERT INTO public.galaxy VALUES (7, 'Centaurus', '160000', 'Elliptical', 11000, true);
INSERT INTO public.galaxy VALUES (8, 'Black Eye', '40000', 'Spiral', 6000, false);
INSERT INTO public.galaxy VALUES (9, 'Sunflower', '100000', 'Spiral', 4000, true);
INSERT INTO public.galaxy VALUES (10, 'Tadpole', '280000', 'Spiral', 2000, false);
INSERT INTO public.galaxy VALUES (11, 'Antennae', '130000', 'Irregular', 7000, true);
INSERT INTO public.galaxy VALUES (12, 'Cigar', '37000', 'Spiral', 4500, false);
INSERT INTO public.galaxy VALUES (13, 'Messier 81', '90000', 'Spiral', 7000, true);
INSERT INTO public.galaxy VALUES (14, 'Sculptor', '87000', 'Elliptical', 12000, false);
INSERT INTO public.galaxy VALUES (15, 'Pegasus', '220000', 'Spiral', 9500, true);
INSERT INTO public.galaxy VALUES (16, 'Phoenix', '120000', 'Elliptical', 8000, false);
INSERT INTO public.galaxy VALUES (17, 'Fornax', '60000', 'Elliptical', 13000, true);
INSERT INTO public.galaxy VALUES (18, 'Coma', '270000', 'Spiral', 10000, false);
INSERT INTO public.galaxy VALUES (19, 'Virgo', '250000', 'Elliptical', 10500, true);
INSERT INTO public.galaxy VALUES (20, 'Hydra', '320000', 'Spiral', 8500, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Europa', 3122, 'Icy', 85, true, 1);
INSERT INTO public.moon VALUES (2, 'Titan', 5150, 'Icy', 16, true, 1);
INSERT INTO public.moon VALUES (3, 'Ganymede', 5268, 'Icy', 172, false, 1);
INSERT INTO public.moon VALUES (4, 'Callisto', 4821, 'Icy', 190, false, 1);
INSERT INTO public.moon VALUES (5, 'Io', 3643, 'Volcanic', 43, false, 1);
INSERT INTO public.moon VALUES (6, 'Enceladus', 504, 'Icy', 33, true, 1);
INSERT INTO public.moon VALUES (7, 'Mimas', 396, 'Icy', 23, false, 1);
INSERT INTO public.moon VALUES (8, 'Tethys', 1066, 'Icy', 69, false, 1);
INSERT INTO public.moon VALUES (9, 'Dione', 1120, 'Icy', 138, true, 1);
INSERT INTO public.moon VALUES (10, 'Rhea', 1528, 'Icy', 211, false, 1);
INSERT INTO public.moon VALUES (11, 'Iapetus', 1469, 'Icy', 79, false, 1);
INSERT INTO public.moon VALUES (12, 'Miranda', 471, 'Icy', 34, true, 1);
INSERT INTO public.moon VALUES (13, 'Ariel', 1158, 'Icy', 56, true, 1);
INSERT INTO public.moon VALUES (14, 'Umbriel', 1169, 'Icy', 60, false, 1);
INSERT INTO public.moon VALUES (15, 'Oberon', 1523, 'Icy', 97, false, 1);
INSERT INTO public.moon VALUES (16, 'Titania', 1578, 'Icy', 209, true, 1);
INSERT INTO public.moon VALUES (17, 'Triton', 2706, 'Icy', 50, true, 1);
INSERT INTO public.moon VALUES (18, 'Charon', 1212, 'Icy', 89, false, 1);
INSERT INTO public.moon VALUES (19, 'Styx', 16, 'Icy', 20, false, 1);
INSERT INTO public.moon VALUES (20, 'Nix', 49, 'Icy', 25, true, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'ExoPrime', 12742, 'Terrestrial', 150, false, 1);
INSERT INTO public.planet VALUES (2, 'TerraNova', 14000, 'Terrestrial', 160, true, 1);
INSERT INTO public.planet VALUES (3, 'Aqualon', 50000, 'Gas Giant', 780, false, 1);
INSERT INTO public.planet VALUES (4, 'Pyros', 2500, 'Terrestrial', 80, false, 1);
INSERT INTO public.planet VALUES (5, 'Zephyros', 4900, 'Gas Giant', 1000, false, 1);
INSERT INTO public.planet VALUES (6, 'Veloria', 8000, 'Terrestrial', 200, true, 1);
INSERT INTO public.planet VALUES (7, 'Glacius', 6700, 'Ice Giant', 1000, false, 1);
INSERT INTO public.planet VALUES (8, 'Arboris', 12000, 'Terrestrial', 220, true, 1);
INSERT INTO public.planet VALUES (9, 'Magmara', 6500, 'Terrestrial', 70, false, 1);
INSERT INTO public.planet VALUES (10, 'Nebulon', 11000, 'Gas Giant', 600, false, 1);
INSERT INTO public.planet VALUES (11, 'Chronos', 10000, 'Terrestrial', 180, true, 1);
INSERT INTO public.planet VALUES (12, 'Aether', 9000, 'Gas Giant', 850, false, 1);
INSERT INTO public.planet VALUES (13, 'Cygnus', 4000, 'Terrestrial', 110, false, 1);
INSERT INTO public.planet VALUES (14, 'Orionis', 8000, 'Terrestrial', 140, true, 1);
INSERT INTO public.planet VALUES (15, 'Lyra', 4500, 'Terrestrial', 170, false, 1);
INSERT INTO public.planet VALUES (16, 'Draconis', 6000, 'Terrestrial', 190, true, 1);
INSERT INTO public.planet VALUES (17, 'Hydra', 3500, 'Terrestrial', 130, false, 1);
INSERT INTO public.planet VALUES (18, 'Vulcan', 7700, 'Terrestrial', 90, false, 1);
INSERT INTO public.planet VALUES (19, 'Thalassa', 5000, 'Terrestrial', 200, true, 1);
INSERT INTO public.planet VALUES (20, 'Titania', 8000, 'Terrestrial', 220, false, 1);


--
-- Data for Name: spaceship; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.spaceship VALUES (1, 'Apollo', 3, 'Manned', 7.9, true);
INSERT INTO public.spaceship VALUES (2, 'Endeavour', 7, 'Manned', 28.0, true);
INSERT INTO public.spaceship VALUES (3, 'Challenger', 7, 'Manned', 28.0, false);
INSERT INTO public.spaceship VALUES (4, 'Discovery', 7, 'Manned', 28.0, true);
INSERT INTO public.spaceship VALUES (5, 'Enterprise', 7, 'Manned', 28.0, false);
INSERT INTO public.spaceship VALUES (6, 'Atlantis', 7, 'Manned', 28.0, true);
INSERT INTO public.spaceship VALUES (7, 'Columbia', 7, 'Manned', 28.0, false);
INSERT INTO public.spaceship VALUES (8, 'Falcon', 2, 'Cargo', 25.0, true);
INSERT INTO public.spaceship VALUES (9, 'Dragon', 7, 'Manned', 27.0, true);
INSERT INTO public.spaceship VALUES (10, 'Starship', 100, 'Manned', 20.0, true);
INSERT INTO public.spaceship VALUES (11, 'New Shepard', 6, 'Suborbital', 3.7, true);
INSERT INTO public.spaceship VALUES (12, 'Dream Chaser', 7, 'Manned', 28.0, true);
INSERT INTO public.spaceship VALUES (13, 'Soyuz', 3, 'Manned', 7.8, true);
INSERT INTO public.spaceship VALUES (14, 'Vostok', 1, 'Manned', 7.9, false);
INSERT INTO public.spaceship VALUES (15, 'Shenzhou', 3, 'Manned', 7.9, true);
INSERT INTO public.spaceship VALUES (16, 'Tianzhou', 0, 'Cargo', 28.0, true);
INSERT INTO public.spaceship VALUES (17, 'Hubble', 0, 'Telescope', 28.0, true);
INSERT INTO public.spaceship VALUES (18, 'Voyager', 0, 'Probe', 17.0, true);
INSERT INTO public.spaceship VALUES (19, 'Curiosity', 0, 'Rover', 0.14, true);
INSERT INTO public.spaceship VALUES (20, 'Perseverance', 0, 'Rover', 0.14, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Canopus', 8.74, 'Supergiant', 15200, false, 1);
INSERT INTO public.star VALUES (3, 'Arcturus', 1.08, 'Giant', 170, true, 1);
INSERT INTO public.star VALUES (4, 'Vega', 2.135, 'Main Sequence', 40.12, true, 1);
INSERT INTO public.star VALUES (5, 'Capella', 2.568, 'Giant', 78.7, false, 1);
INSERT INTO public.star VALUES (6, 'Rigel', 21.0, 'Supergiant', 120000, true, 1);
INSERT INTO public.star VALUES (7, 'Betelgeuse', 18.0, 'Supergiant', 126000, true, 1);
INSERT INTO public.star VALUES (8, 'Altair', 1.79, 'Main Sequence', 10.6, true, 1);
INSERT INTO public.star VALUES (9, 'Aldebaran', 1.16, 'Giant', 518, true, 1);
INSERT INTO public.star VALUES (10, 'Antares', 12.4, 'Supergiant', 57500, true, 1);
INSERT INTO public.star VALUES (11, 'Spica', 10.25, 'Main Sequence', 22000, true, 1);
INSERT INTO public.star VALUES (12, 'Pollux', 1.86, 'Giant', 32.7, true, 1);
INSERT INTO public.star VALUES (13, 'Fomalhaut', 1.92, 'Main Sequence', 16.63, true, 1);
INSERT INTO public.star VALUES (14, 'Procyon', 1.497, 'Main Sequence', 6.9, true, 1);
INSERT INTO public.star VALUES (15, 'Achernar', 6.7, 'Main Sequence', 3150, true, 1);
INSERT INTO public.star VALUES (16, 'Regulus', 3.8, 'Main Sequence', 288, true, 1);
INSERT INTO public.star VALUES (17, 'Castor', 2.15, 'Main Sequence', 52.4, true, 1);
INSERT INTO public.star VALUES (18, 'Bellatrix', 8.6, 'Main Sequence', 6400, false, 1);
INSERT INTO public.star VALUES (19, 'Alnilam', 40.8, 'Supergiant', 832000, false, 1);
INSERT INTO public.star VALUES (20, 'Deneb', 19.0, 'Supergiant', 196000, true, 1);
INSERT INTO public.star VALUES (1, 'Sirius', 2.02, 'Main Sequence', 25.4, true, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: spaceship_spaceship_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.spaceship_spaceship_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 20, true);


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
-- Name: spaceship spaceship_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceship
    ADD CONSTRAINT spaceship_name_key UNIQUE (name);


--
-- Name: spaceship spaceship_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceship
    ADD CONSTRAINT spaceship_pkey PRIMARY KEY (spaceship_id);


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
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--