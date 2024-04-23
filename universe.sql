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
    name character varying NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    sun_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric
);


ALTER TABLE public.sun OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milkyway', 'the one we are in', true, true, 987654, 0);
INSERT INTO public.galaxy VALUES (2, 'snickers', NULL, false, false, 99700, 777);
INSERT INTO public.galaxy VALUES (3, 'marsyway', NULL, false, false, 123, 987);
INSERT INTO public.galaxy VALUES (4, 'wow', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'galaxyyy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'no way', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'highway', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'to', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, 'hell', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (10, 'One way', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (11, 'this way', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (12, 'speak now way', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (13, 'enchanted', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (14, 'concorde', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (15, 'A3400-600', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (16, 'A350-900', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (18, 'B747-8', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (19, 'B777-X', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (20, 'runway', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (17, 'noname', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (4, 'Ganymede', NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (5, 'Europa', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (6, 'Callisto', NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (7, 'Io', NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (8, 'Titan', NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (9, 'Enceladus', NULL, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (10, 'Rhea', NULL, NULL, NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES (11, 'Mimas', NULL, NULL, NULL, NULL, NULL, 11);
INSERT INTO public.moon VALUES (12, 'Tethys', NULL, NULL, NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES (13, 'Dione', NULL, NULL, NULL, NULL, NULL, 13);
INSERT INTO public.moon VALUES (14, 'Triton', NULL, NULL, NULL, NULL, NULL, 14);
INSERT INTO public.moon VALUES (15, 'Charon', NULL, NULL, NULL, NULL, NULL, 15);
INSERT INTO public.moon VALUES (16, 'Miranda', NULL, NULL, NULL, NULL, NULL, 16);
INSERT INTO public.moon VALUES (17, 'Ariel', NULL, NULL, NULL, NULL, NULL, 17);
INSERT INTO public.moon VALUES (18, 'Umbriel', NULL, NULL, NULL, NULL, NULL, 18);
INSERT INTO public.moon VALUES (19, 'Oberon', NULL, NULL, NULL, NULL, NULL, 19);
INSERT INTO public.moon VALUES (20, 'Titania', NULL, NULL, NULL, NULL, NULL, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'one', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'two', NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (3, 'three', NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (4, 'four', NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (5, 'five', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (6, 'six', NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (7, 'seven', NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES (8, 'eight', NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.planet VALUES (9, 'nine', NULL, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.planet VALUES (10, 'ten', NULL, NULL, NULL, NULL, NULL, 10);
INSERT INTO public.planet VALUES (11, 'eleven', NULL, NULL, NULL, NULL, NULL, 11);
INSERT INTO public.planet VALUES (12, 'twelve', NULL, NULL, NULL, NULL, NULL, 12);
INSERT INTO public.planet VALUES (13, 'thirteen', NULL, NULL, NULL, NULL, NULL, 13);
INSERT INTO public.planet VALUES (14, 'fourteen', NULL, NULL, NULL, NULL, NULL, 14);
INSERT INTO public.planet VALUES (15, 'fifteen', NULL, NULL, NULL, NULL, NULL, 15);
INSERT INTO public.planet VALUES (16, 'sixteen', NULL, NULL, NULL, NULL, NULL, 16);
INSERT INTO public.planet VALUES (17, 'seventeen', NULL, NULL, NULL, NULL, NULL, 17);
INSERT INTO public.planet VALUES (18, 'eighteen', NULL, NULL, NULL, NULL, NULL, 18);
INSERT INTO public.planet VALUES (19, 'nineteen', NULL, NULL, NULL, NULL, NULL, 19);
INSERT INTO public.planet VALUES (20, 'twenty', NULL, NULL, NULL, NULL, NULL, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'lufthansa', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'emirates', NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (3, 'lot', NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES (4, 'qatar', NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (5, 'cathay', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.star VALUES (6, 'air france', NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.star VALUES (7, 'ana', NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.star VALUES (8, 'japan air', NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.star VALUES (9, 'singapore air', NULL, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.star VALUES (10, 'tap portugal', NULL, NULL, NULL, NULL, NULL, 10);
INSERT INTO public.star VALUES (11, 'united', NULL, NULL, NULL, NULL, NULL, 11);
INSERT INTO public.star VALUES (12, 'AA', NULL, NULL, NULL, NULL, NULL, 12);
INSERT INTO public.star VALUES (13, 'delta', NULL, NULL, NULL, NULL, NULL, 13);
INSERT INTO public.star VALUES (14, 'air canada', NULL, NULL, NULL, NULL, NULL, 14);
INSERT INTO public.star VALUES (15, 'klm', NULL, NULL, NULL, NULL, NULL, 15);
INSERT INTO public.star VALUES (16, 'finnair', NULL, NULL, NULL, NULL, NULL, 16);
INSERT INTO public.star VALUES (17, 'sas', NULL, NULL, NULL, NULL, NULL, 17);
INSERT INTO public.star VALUES (18, 'aegan', NULL, NULL, NULL, NULL, NULL, 18);
INSERT INTO public.star VALUES (19, 'turkish air', NULL, NULL, NULL, NULL, NULL, 19);
INSERT INTO public.star VALUES (20, 'norwegian', NULL, NULL, NULL, NULL, NULL, 20);


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES (1, 'sunny', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.sun VALUES (2, 'sunshine', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.sun VALUES (3, 'babe', NULL, NULL, NULL, NULL, NULL);


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
-- Name: sun sun_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_name_key UNIQUE (name);


--
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


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

