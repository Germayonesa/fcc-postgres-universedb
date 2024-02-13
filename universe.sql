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
-- Name: dwarf_planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dwarf_planet (
    dwarf_planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    radio_km numeric(7,2) NOT NULL
);


ALTER TABLE public.dwarf_planet OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number_of_planets integer NOT NULL,
    number_of_stars integer NOT NULL,
    age_in_thousand_millions integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    radio_km numeric(7,2) NOT NULL,
    has_life boolean NOT NULL,
    number_of_landing integer NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    radio_km numeric(7,2) NOT NULL,
    has_life boolean NOT NULL,
    number_of_landing integer NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    temperature_k integer NOT NULL,
    radio_km integer NOT NULL,
    discover_by text NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: dwarf_planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dwarf_planet VALUES (1, 'pluton', 253.30);
INSERT INTO public.dwarf_planet VALUES (2, 'namor', 56.24);
INSERT INTO public.dwarf_planet VALUES (3, 'Atalante', 777.00);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Via lactea', 100000, 2500000, 14);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 250004, 46000, 11);
INSERT INTO public.galaxy VALUES (3, 'Neptuno', 125600, 48903, 8);
INSERT INTO public.galaxy VALUES (4, 'Ifelium', 764380, 164850, 14);
INSERT INTO public.galaxy VALUES (5, 'Dormamu', 458946, 149635, 41);
INSERT INTO public.galaxy VALUES (6, 'Galactus', 365987, 78456, 100);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Merconi', 2844.00, false, 0, 1);
INSERT INTO public.moon VALUES (2, 'Vena', 6588.00, false, 0, 2);
INSERT INTO public.moon VALUES (3, 'luna', 631.00, true, 20, 3);
INSERT INTO public.moon VALUES (4, 'Maraca', 7845.00, true, 0, 5);
INSERT INTO public.moon VALUES (5, 'Jugo', 911.00, false, 0, 5);
INSERT INTO public.moon VALUES (6, 'saturron', 822.00, false, 0, 12);
INSERT INTO public.moon VALUES (7, 'Uranio', 362.00, false, 0, 11);
INSERT INTO public.moon VALUES (8, 'prismacolor', 896.00, true, 25, 12);
INSERT INTO public.moon VALUES (9, 'Triono', 111.00, true, 14, 8);
INSERT INTO public.moon VALUES (10, 'Lastoforce', 1495.00, false, 500, 7);
INSERT INTO public.moon VALUES (11, 'Foco', 77.00, false, 7, 4);
INSERT INTO public.moon VALUES (12, 'Gepeu', 10101.00, false, 101, 9);
INSERT INTO public.moon VALUES (13, 'Crupi', 489.00, false, 14, 10);
INSERT INTO public.moon VALUES (14, 'Venudo', 618.00, false, 19, 9);
INSERT INTO public.moon VALUES (15, 'Tierreneitor', 1000.00, true, 1, 1);
INSERT INTO public.moon VALUES (16, 'Martesito', 395.00, true, 11, 11);
INSERT INTO public.moon VALUES (17, 'Piter', 7774.00, false, 4, 12);
INSERT INTO public.moon VALUES (18, 'sauno', 8232.00, false, 0, 10);
INSERT INTO public.moon VALUES (19, 'Urus', 32.00, false, 32, 5);
INSERT INTO public.moon VALUES (20, 'Eleven', 888.00, true, 8, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercurio', 3547.74, false, 0, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 6589.20, false, 1, 1);
INSERT INTO public.planet VALUES (3, 'Tierra', 47895.20, true, 10000, 1);
INSERT INTO public.planet VALUES (4, 'Marte', 48951.30, true, 9, 5);
INSERT INTO public.planet VALUES (5, 'Jupiter', 95883.20, false, 0, 2);
INSERT INTO public.planet VALUES (6, 'Saturno', 26594.36, false, 0, 2);
INSERT INTO public.planet VALUES (7, 'Neptuno', 38666.30, true, 25, 6);
INSERT INTO public.planet VALUES (8, 'Marcur', 11152.10, false, 88, 4);
INSERT INTO public.planet VALUES (9, 'Your heart', 10101.00, true, 7, 3);
INSERT INTO public.planet VALUES (10, 'In', 20202.00, true, 26, 4);
INSERT INTO public.planet VALUES (11, 'My', 30303.00, true, 30, 5);
INSERT INTO public.planet VALUES (12, 'Mind', 40040.00, true, 48, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sol', 100000, 14587, 'Pedrito el electrico', 1);
INSERT INTO public.star VALUES (2, 'Ecatom', 4506800, 15784, 'Latom', 1);
INSERT INTO public.star VALUES (3, 'Hachi', 85630, 1896, 'Benimaru', 5);
INSERT INTO public.star VALUES (4, 'Roku', 77859, 5457, 'Aang', 6);
INSERT INTO public.star VALUES (5, 'Nova', 589961, 3598, 'Soku', 4);
INSERT INTO public.star VALUES (6, 'Uchiha', 598631, 8596, 'Itachi', 2);


--
-- Name: dwarf_planet dwarf_planet_dwarf_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet
    ADD CONSTRAINT dwarf_planet_dwarf_planet_id_key UNIQUE (dwarf_planet_id);


--
-- Name: dwarf_planet dwarf_planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet
    ADD CONSTRAINT dwarf_planet_pkey PRIMARY KEY (dwarf_planet_id);


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
