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
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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

INSERT INTO public.games VALUES (141, 2018, 'Final', 299, 300, 4, 2);
INSERT INTO public.games VALUES (142, 2018, 'Third Place', 301, 302, 2, 0);
INSERT INTO public.games VALUES (143, 2018, 'Semi-Final', 300, 302, 2, 1);
INSERT INTO public.games VALUES (144, 2018, 'Semi-Final', 299, 301, 1, 0);
INSERT INTO public.games VALUES (145, 2018, 'Quarter-Final', 300, 303, 3, 2);
INSERT INTO public.games VALUES (146, 2018, 'Quarter-Final', 302, 304, 2, 0);
INSERT INTO public.games VALUES (147, 2018, 'Quarter-Final', 301, 305, 2, 1);
INSERT INTO public.games VALUES (148, 2018, 'Quarter-Final', 299, 306, 2, 0);
INSERT INTO public.games VALUES (149, 2018, 'Eighth-Final', 302, 307, 2, 1);
INSERT INTO public.games VALUES (150, 2018, 'Eighth-Final', 304, 308, 1, 0);
INSERT INTO public.games VALUES (151, 2018, 'Eighth-Final', 301, 309, 3, 2);
INSERT INTO public.games VALUES (152, 2018, 'Eighth-Final', 305, 310, 2, 0);
INSERT INTO public.games VALUES (153, 2018, 'Eighth-Final', 300, 311, 2, 1);
INSERT INTO public.games VALUES (154, 2018, 'Eighth-Final', 303, 312, 2, 1);
INSERT INTO public.games VALUES (155, 2018, 'Eighth-Final', 306, 313, 2, 1);
INSERT INTO public.games VALUES (156, 2018, 'Eighth-Final', 299, 314, 4, 3);
INSERT INTO public.games VALUES (157, 2014, 'Final', 315, 314, 1, 0);
INSERT INTO public.games VALUES (158, 2014, 'Third Place', 316, 305, 3, 0);
INSERT INTO public.games VALUES (159, 2014, 'Semi-Final', 314, 316, 1, 0);
INSERT INTO public.games VALUES (160, 2014, 'Semi-Final', 315, 305, 7, 1);
INSERT INTO public.games VALUES (161, 2014, 'Quarter-Final', 316, 317, 1, 0);
INSERT INTO public.games VALUES (162, 2014, 'Quarter-Final', 314, 301, 1, 0);
INSERT INTO public.games VALUES (163, 2014, 'Quarter-Final', 305, 307, 2, 1);
INSERT INTO public.games VALUES (164, 2014, 'Quarter-Final', 315, 299, 1, 0);
INSERT INTO public.games VALUES (165, 2014, 'Eighth-Final', 305, 318, 2, 1);
INSERT INTO public.games VALUES (166, 2014, 'Eighth-Final', 307, 306, 2, 0);
INSERT INTO public.games VALUES (167, 2014, 'Eighth-Final', 299, 319, 2, 0);
INSERT INTO public.games VALUES (168, 2014, 'Eighth-Final', 315, 320, 2, 1);
INSERT INTO public.games VALUES (169, 2014, 'Eighth-Final', 316, 310, 2, 1);
INSERT INTO public.games VALUES (170, 2014, 'Eighth-Final', 317, 321, 2, 1);
INSERT INTO public.games VALUES (171, 2014, 'Eighth-Final', 314, 308, 1, 0);
INSERT INTO public.games VALUES (172, 2014, 'Eighth-Final', 301, 322, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (299, 'France');
INSERT INTO public.teams VALUES (300, 'Croatia');
INSERT INTO public.teams VALUES (301, 'Belgium');
INSERT INTO public.teams VALUES (302, 'England');
INSERT INTO public.teams VALUES (303, 'Russia');
INSERT INTO public.teams VALUES (304, 'Sweden');
INSERT INTO public.teams VALUES (305, 'Brazil');
INSERT INTO public.teams VALUES (306, 'Uruguay');
INSERT INTO public.teams VALUES (307, 'Colombia');
INSERT INTO public.teams VALUES (308, 'Switzerland');
INSERT INTO public.teams VALUES (309, 'Japan');
INSERT INTO public.teams VALUES (310, 'Mexico');
INSERT INTO public.teams VALUES (311, 'Denmark');
INSERT INTO public.teams VALUES (312, 'Spain');
INSERT INTO public.teams VALUES (313, 'Portugal');
INSERT INTO public.teams VALUES (314, 'Argentina');
INSERT INTO public.teams VALUES (315, 'Germany');
INSERT INTO public.teams VALUES (316, 'Netherlands');
INSERT INTO public.teams VALUES (317, 'Costa Rica');
INSERT INTO public.teams VALUES (318, 'Chile');
INSERT INTO public.teams VALUES (319, 'Nigeria');
INSERT INTO public.teams VALUES (320, 'Algeria');
INSERT INTO public.teams VALUES (321, 'Greece');
INSERT INTO public.teams VALUES (322, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 172, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 322, true);


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

