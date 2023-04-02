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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    description text,
    name character varying(30) NOT NULL,
    star_number integer
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    galaxy_type character varying(30),
    name character varying(30) NOT NULL,
    size_in_lightyear integer,
    speed_in_kms integer,
    age_in_billion_of_years numeric(4,2),
    description text,
    constellation_id integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    age_in_billion_of_years numeric(4,2),
    size_in_km integer,
    speed_in_kms integer,
    description text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    age_in_billion_of_years numeric(4,2),
    size_in_km integer,
    speed_in_kms integer,
    description text,
    star_id integer,
    exoplanet boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_billion_of_years numeric(4,2),
    size_in_km integer,
    speed_in_kms integer,
    description text,
    galaxy_id integer,
    supernova boolean,
    star_type character varying(50)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, NULL, 'sagittarius', 194);
INSERT INTO public.constellation VALUES (2, NULL, 'Andromeda', 152);
INSERT INTO public.constellation VALUES (3, NULL, 'virgo', 169);
INSERT INTO public.constellation VALUES (4, NULL, 'Perseo', 158);
INSERT INTO public.constellation VALUES (5, NULL, 'Triangulum', 25);
INSERT INTO public.constellation VALUES (6, NULL, 'Serpens Caput', 108);
INSERT INTO public.constellation VALUES (7, NULL, 'pavo', 303);
INSERT INTO public.constellation VALUES (8, NULL, 'Sculptor', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Barred spiral', 'Milky Way', 100000, 300, 13.61, NULL, 1);
INSERT INTO public.galaxy VALUES (2, 'spiral', 'Andromeda', 220000, 300, 10.00, NULL, 2);
INSERT INTO public.galaxy VALUES (3, 'spiral', 'Sombrero', 49000, 1000, 11.00, NULL, 3);
INSERT INTO public.galaxy VALUES (4, 'spiral', 'Triangulum', 60000, 182, 3.50, NULL, 5);
INSERT INTO public.galaxy VALUES (5, 'Dwaft  Irregular', 'Comet', 600000, 97, 7.80, NULL, 8);
INSERT INTO public.galaxy VALUES (6, 'Barred Spiral', 'NGC 6872', 717000, 800, 5.00, NULL, 7);
INSERT INTO public.galaxy VALUES (7, 'Ring', 'Hoags Object', 120000, 124, 12.75, NULL, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', 1, 4.51, 1737, 1, NULL, 1);
INSERT INTO public.moon VALUES ('Phobos', 2, 2.70, 11, 2, NULL, 2);
INSERT INTO public.moon VALUES ('Deimos', 3, 2.70, 6, 1, NULL, 2);
INSERT INTO public.moon VALUES ('Io', 4, 4.50, 1821, 17, NULL, 3);
INSERT INTO public.moon VALUES ('Europa', 5, 4.50, 1560, 13, NULL, 3);
INSERT INTO public.moon VALUES ('Ganymede', 6, 4.50, 2634, 10, NULL, 3);
INSERT INTO public.moon VALUES ('Callisto', 7, 4.50, 2410, 8, NULL, 3);
INSERT INTO public.moon VALUES ('Mimas', 8, 4.50, 198, 14, NULL, 6);
INSERT INTO public.moon VALUES ('Enceladus', 9, 4.50, 252, 12, NULL, 6);
INSERT INTO public.moon VALUES ('Tethys', 10, 4.50, 533, 11, NULL, 6);
INSERT INTO public.moon VALUES ('Dione', 11, 4.50, 561, 13, NULL, 6);
INSERT INTO public.moon VALUES ('Titan', 12, 4.50, 2574, 5, NULL, 6);
INSERT INTO public.moon VALUES ('Ariel', 13, 4.50, 578, 5, NULL, 7);
INSERT INTO public.moon VALUES ('Titania', 14, 4.50, 788, 4, NULL, 7);
INSERT INTO public.moon VALUES ('Umbriel', 15, 4.50, 584, 3, NULL, 7);
INSERT INTO public.moon VALUES ('Miranda', 16, 4.50, 235, 5, NULL, 7);
INSERT INTO public.moon VALUES ('Triton', 17, 4.50, 1353, 4, NULL, 8);
INSERT INTO public.moon VALUES ('Nereid', 18, 4.50, 170, 2, NULL, 7);
INSERT INTO public.moon VALUES ('Amalthea', 19, 4.50, 84, 26, NULL, 3);
INSERT INTO public.moon VALUES ('Charon', 20, 4.50, 606, 0, NULL, 14);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Eart', 1, 4.50, 6371, 30, NULL, 1, false);
INSERT INTO public.planet VALUES ('Mars', 2, 4.60, 3389, 23, NULL, 1, false);
INSERT INTO public.planet VALUES ('Jupiter', 3, 4.60, 69911, 59, NULL, 1, false);
INSERT INTO public.planet VALUES ('Mercury', 4, 4.50, 2439, 47, NULL, 1, false);
INSERT INTO public.planet VALUES ('Venus', 5, 4.50, 6051, 35, NULL, 1, false);
INSERT INTO public.planet VALUES ('Saturn', 6, 4.50, 58232, 10, NULL, 1, false);
INSERT INTO public.planet VALUES ('Neptune', 8, 4.50, 24662, 5, NULL, 1, false);
INSERT INTO public.planet VALUES ('Kepler-78b', 9, 4.50, 7135, 1, NULL, 4, true);
INSERT INTO public.planet VALUES ('55 Cancri e', 10, 8.70, 11946, 609, NULL, 3, true);
INSERT INTO public.planet VALUES ('HD 80606', 11, 7.60, 73585, 47, NULL, 5, true);
INSERT INTO public.planet VALUES ('GJ 1214 b', 12, 6.00, 16574, 99, NULL, 5, true);
INSERT INTO public.planet VALUES ('TrES-4b', 13, 2.90, 128610, NULL, NULL, 8, true);
INSERT INTO public.planet VALUES ('Urano', 7, 4.50, 25362, 7, NULL, 1, false);
INSERT INTO public.planet VALUES ('Pluto', 14, 4.50, 1188, 4, NULL, 1, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4.60, 695000, 230, NULL, 1, false, 'G star');
INSERT INTO public.star VALUES (2, 'Polaris', 0.07, 70000000, 304, NULL, 1, false, 'Spectral');
INSERT INTO public.star VALUES (3, '55 cancri a', 8.70, 208800, 271, NULL, 1, false, 'G star');
INSERT INTO public.star VALUES (4, 'Kepler-78', 8.70, 515040, NULL, NULL, 1, false, 'eclipsing binary');
INSERT INTO public.star VALUES (5, 'HD 80606', 7.60, 626400, NULL, NULL, 1, false, 'G star');
INSERT INTO public.star VALUES (6, 'Gliese 1214', 7.60, 146160, NULL, NULL, 1, false, 'Red dwarf');
INSERT INTO public.star VALUES (7, 'Veloz', 4.00, 1350240000, 530, NULL, 2, true, 'G star');
INSERT INTO public.star VALUES (8, 'GSC 02620-00648', 4.70, 820100, NULL, NULL, 1, false, 'M-type');


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: constellation galaxy_heap_galaxy_heap_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT galaxy_heap_galaxy_heap_id_key UNIQUE (constellation_id);


--
-- Name: constellation galaxy_heap_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT galaxy_heap_pkey PRIMARY KEY (constellation_id);


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
-- Name: galaxy galaxy_galaxy_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_group_id_fkey FOREIGN KEY (constellation_id) REFERENCES public.constellation(constellation_id);


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