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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    round character varying(30) NOT NULL,
    year integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 'Final', 2018, 4, 2, 33, 34);
INSERT INTO public.games VALUES (2, 'Third Place', 2018, 2, 0, 35, 36);
INSERT INTO public.games VALUES (3, 'Semi-Final', 2018, 2, 1, 34, 36);
INSERT INTO public.games VALUES (4, 'Semi-Final', 2018, 1, 0, 33, 35);
INSERT INTO public.games VALUES (5, 'Quarter-Final', 2018, 3, 2, 34, 37);
INSERT INTO public.games VALUES (6, 'Quarter-Final', 2018, 2, 0, 36, 38);
INSERT INTO public.games VALUES (7, 'Quarter-Final', 2018, 2, 1, 35, 39);
INSERT INTO public.games VALUES (8, 'Quarter-Final', 2018, 2, 0, 33, 40);
INSERT INTO public.games VALUES (9, 'Eighth-Final', 2018, 2, 1, 36, 41);
INSERT INTO public.games VALUES (10, 'Eighth-Final', 2018, 1, 0, 38, 42);
INSERT INTO public.games VALUES (11, 'Eighth-Final', 2018, 3, 2, 35, 43);
INSERT INTO public.games VALUES (12, 'Eighth-Final', 2018, 2, 0, 39, 44);
INSERT INTO public.games VALUES (13, 'Eighth-Final', 2018, 2, 1, 34, 45);
INSERT INTO public.games VALUES (14, 'Eighth-Final', 2018, 2, 1, 37, 46);
INSERT INTO public.games VALUES (15, 'Eighth-Final', 2018, 2, 1, 40, 47);
INSERT INTO public.games VALUES (16, 'Eighth-Final', 2018, 4, 3, 33, 48);
INSERT INTO public.games VALUES (17, 'Final', 2014, 1, 0, 49, 48);
INSERT INTO public.games VALUES (18, 'Third Place', 2014, 3, 0, 50, 39);
INSERT INTO public.games VALUES (19, 'Semi-Final', 2014, 1, 0, 48, 50);
INSERT INTO public.games VALUES (20, 'Semi-Final', 2014, 7, 1, 49, 39);
INSERT INTO public.games VALUES (21, 'Quarter-Final', 2014, 1, 0, 50, 51);
INSERT INTO public.games VALUES (22, 'Quarter-Final', 2014, 1, 0, 48, 35);
INSERT INTO public.games VALUES (23, 'Quarter-Final', 2014, 2, 1, 39, 41);
INSERT INTO public.games VALUES (24, 'Quarter-Final', 2014, 1, 0, 49, 33);
INSERT INTO public.games VALUES (25, 'Eighth-Final', 2014, 2, 1, 39, 52);
INSERT INTO public.games VALUES (26, 'Eighth-Final', 2014, 2, 0, 41, 40);
INSERT INTO public.games VALUES (27, 'Eighth-Final', 2014, 2, 0, 33, 53);
INSERT INTO public.games VALUES (28, 'Eighth-Final', 2014, 2, 1, 49, 54);
INSERT INTO public.games VALUES (29, 'Eighth-Final', 2014, 2, 1, 50, 44);
INSERT INTO public.games VALUES (30, 'Eighth-Final', 2014, 2, 1, 51, 55);
INSERT INTO public.games VALUES (31, 'Eighth-Final', 2014, 1, 0, 48, 42);
INSERT INTO public.games VALUES (32, 'Eighth-Final', 2014, 2, 1, 35, 56);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (33, 'France');
INSERT INTO public.teams VALUES (34, 'Croatia');
INSERT INTO public.teams VALUES (35, 'Belgium');
INSERT INTO public.teams VALUES (36, 'England');
INSERT INTO public.teams VALUES (37, 'Russia');
INSERT INTO public.teams VALUES (38, 'Sweden');
INSERT INTO public.teams VALUES (39, 'Brazil');
INSERT INTO public.teams VALUES (40, 'Uruguay');
INSERT INTO public.teams VALUES (41, 'Colombia');
INSERT INTO public.teams VALUES (42, 'Switzerland');
INSERT INTO public.teams VALUES (43, 'Japan');
INSERT INTO public.teams VALUES (44, 'Mexico');
INSERT INTO public.teams VALUES (45, 'Denmark');
INSERT INTO public.teams VALUES (46, 'Spain');
INSERT INTO public.teams VALUES (47, 'Portugal');
INSERT INTO public.teams VALUES (48, 'Argentina');
INSERT INTO public.teams VALUES (49, 'Germany');
INSERT INTO public.teams VALUES (50, 'Netherlands');
INSERT INTO public.teams VALUES (51, 'Costa Rica');
INSERT INTO public.teams VALUES (52, 'Chile');
INSERT INTO public.teams VALUES (53, 'Nigeria');
INSERT INTO public.teams VALUES (54, 'Algeria');
INSERT INTO public.teams VALUES (55, 'Greece');
INSERT INTO public.teams VALUES (56, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 56, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

