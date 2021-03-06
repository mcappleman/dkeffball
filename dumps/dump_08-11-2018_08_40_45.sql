--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Drop databases (except postgres and template1)
--





--
-- Drop roles
--

DROP ROLE postgres;


--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS;






--
-- PostgreSQL database dump
--

-- Dumped from database version 11.0 (Debian 11.0-1.pgdg90+2)
-- Dumped by pg_dump version 11.0 (Debian 11.0-1.pgdg90+2)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

UPDATE pg_catalog.pg_database SET datistemplate = false WHERE datname = 'template1';
DROP DATABASE template1;
--
-- Name: template1; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE template1 OWNER TO postgres;

\connect template1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE template1; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- Name: template1; Type: DATABASE PROPERTIES; Schema: -; Owner: postgres
--

ALTER DATABASE template1 IS_TEMPLATE = true;


\connect template1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE template1; Type: ACL; Schema: -; Owner: postgres
--

REVOKE CONNECT,TEMPORARY ON DATABASE template1 FROM PUBLIC;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 11.0 (Debian 11.0-1.pgdg90+2)
-- Dumped by pg_dump version 11.0 (Debian 11.0-1.pgdg90+2)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: matchups_matchup; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.matchups_matchup (
    id integer NOT NULL,
    loser_id integer NOT NULL,
    winner_id integer NOT NULL
);


ALTER TABLE public.matchups_matchup OWNER TO postgres;

--
-- Name: matchups_matchup_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.matchups_matchup_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.matchups_matchup_id_seq OWNER TO postgres;

--
-- Name: matchups_matchup_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.matchups_matchup_id_seq OWNED BY public.matchups_matchup.id;


--
-- Name: oauth2_provider_accesstoken_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.oauth2_provider_accesstoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oauth2_provider_accesstoken_id_seq OWNER TO postgres;

--
-- Name: oauth2_provider_accesstoken; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.oauth2_provider_accesstoken (
    id bigint DEFAULT nextval('public.oauth2_provider_accesstoken_id_seq'::regclass) NOT NULL,
    token character varying(255) NOT NULL,
    expires timestamp with time zone NOT NULL,
    scope text NOT NULL,
    application_id bigint,
    user_id integer,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    source_refresh_token_id bigint
);


ALTER TABLE public.oauth2_provider_accesstoken OWNER TO postgres;

--
-- Name: oauth2_provider_application_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.oauth2_provider_application_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oauth2_provider_application_id_seq OWNER TO postgres;

--
-- Name: oauth2_provider_application; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.oauth2_provider_application (
    id bigint DEFAULT nextval('public.oauth2_provider_application_id_seq'::regclass) NOT NULL,
    client_id character varying(100) NOT NULL,
    redirect_uris text NOT NULL,
    client_type character varying(32) NOT NULL,
    authorization_grant_type character varying(32) NOT NULL,
    client_secret character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    user_id integer,
    skip_authorization boolean NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);


ALTER TABLE public.oauth2_provider_application OWNER TO postgres;

--
-- Name: oauth2_provider_grant_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.oauth2_provider_grant_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oauth2_provider_grant_id_seq OWNER TO postgres;

--
-- Name: oauth2_provider_grant; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.oauth2_provider_grant (
    id bigint DEFAULT nextval('public.oauth2_provider_grant_id_seq'::regclass) NOT NULL,
    code character varying(255) NOT NULL,
    expires timestamp with time zone NOT NULL,
    redirect_uri character varying(255) NOT NULL,
    scope text NOT NULL,
    application_id bigint NOT NULL,
    user_id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);


ALTER TABLE public.oauth2_provider_grant OWNER TO postgres;

--
-- Name: oauth2_provider_refreshtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.oauth2_provider_refreshtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oauth2_provider_refreshtoken_id_seq OWNER TO postgres;

--
-- Name: oauth2_provider_refreshtoken; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.oauth2_provider_refreshtoken (
    id bigint DEFAULT nextval('public.oauth2_provider_refreshtoken_id_seq'::regclass) NOT NULL,
    token character varying(255) NOT NULL,
    access_token_id bigint,
    application_id bigint NOT NULL,
    user_id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    revoked timestamp with time zone
);


ALTER TABLE public.oauth2_provider_refreshtoken OWNER TO postgres;

--
-- Name: players_player; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.players_player (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    "position" character varying(4) NOT NULL,
    active boolean NOT NULL
);


ALTER TABLE public.players_player OWNER TO postgres;

--
-- Name: players_player_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.players_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_player_id_seq OWNER TO postgres;

--
-- Name: players_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.players_player_id_seq OWNED BY public.players_player.id;


--
-- Name: players_playerweek; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.players_playerweek (
    id integer NOT NULL,
    year integer NOT NULL,
    week integer NOT NULL,
    points double precision NOT NULL,
    player_id integer NOT NULL,
    lineup_id integer NOT NULL,
    lineup_position_id integer NOT NULL,
    nfl_team_id integer
);


ALTER TABLE public.players_playerweek OWNER TO postgres;

--
-- Name: players_playerweek_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.players_playerweek_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_playerweek_id_seq OWNER TO postgres;

--
-- Name: players_playerweek_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.players_playerweek_id_seq OWNED BY public.players_playerweek.id;


--
-- Name: polls_choice; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.polls_choice (
    id integer NOT NULL,
    choice_text character varying(200) NOT NULL,
    votes integer NOT NULL,
    question_id integer NOT NULL
);


ALTER TABLE public.polls_choice OWNER TO postgres;

--
-- Name: polls_choice_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.polls_choice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.polls_choice_id_seq OWNER TO postgres;

--
-- Name: polls_choice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.polls_choice_id_seq OWNED BY public.polls_choice.id;


--
-- Name: polls_question; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.polls_question (
    id integer NOT NULL,
    question_text character varying(200) NOT NULL,
    pub_date timestamp with time zone NOT NULL
);


ALTER TABLE public.polls_question OWNER TO postgres;

--
-- Name: polls_question_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.polls_question_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.polls_question_id_seq OWNER TO postgres;

--
-- Name: polls_question_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.polls_question_id_seq OWNED BY public.polls_question.id;


--
-- Name: teams_lineup; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teams_lineup (
    id integer NOT NULL,
    year integer NOT NULL,
    week integer NOT NULL,
    team_id integer NOT NULL,
    points double precision NOT NULL
);


ALTER TABLE public.teams_lineup OWNER TO postgres;

--
-- Name: teams_lineup_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.teams_lineup_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_lineup_id_seq OWNER TO postgres;

--
-- Name: teams_lineup_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.teams_lineup_id_seq OWNED BY public.teams_lineup.id;


--
-- Name: teams_lineupposition; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teams_lineupposition (
    id integer NOT NULL,
    name character varying(4) NOT NULL
);


ALTER TABLE public.teams_lineupposition OWNER TO postgres;

--
-- Name: teams_lineupposition_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.teams_lineupposition_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_lineupposition_id_seq OWNER TO postgres;

--
-- Name: teams_lineupposition_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.teams_lineupposition_id_seq OWNED BY public.teams_lineupposition.id;


--
-- Name: teams_nflteam; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teams_nflteam (
    id integer NOT NULL,
    name character varying(4) NOT NULL,
    conference character varying(3) NOT NULL,
    division character varying(5) NOT NULL
);


ALTER TABLE public.teams_nflteam OWNER TO postgres;

--
-- Name: teams_nflteam_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.teams_nflteam_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_nflteam_id_seq OWNER TO postgres;

--
-- Name: teams_nflteam_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.teams_nflteam_id_seq OWNED BY public.teams_nflteam.id;


--
-- Name: teams_team; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teams_team (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    wins integer NOT NULL,
    losses integer NOT NULL,
    ties integer NOT NULL
);


ALTER TABLE public.teams_team OWNER TO postgres;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO postgres;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams_team.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: matchups_matchup id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matchups_matchup ALTER COLUMN id SET DEFAULT nextval('public.matchups_matchup_id_seq'::regclass);


--
-- Name: players_player id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.players_player ALTER COLUMN id SET DEFAULT nextval('public.players_player_id_seq'::regclass);


--
-- Name: players_playerweek id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.players_playerweek ALTER COLUMN id SET DEFAULT nextval('public.players_playerweek_id_seq'::regclass);


--
-- Name: polls_choice id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.polls_choice ALTER COLUMN id SET DEFAULT nextval('public.polls_choice_id_seq'::regclass);


--
-- Name: polls_question id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.polls_question ALTER COLUMN id SET DEFAULT nextval('public.polls_question_id_seq'::regclass);


--
-- Name: teams_lineup id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teams_lineup ALTER COLUMN id SET DEFAULT nextval('public.teams_lineup_id_seq'::regclass);


--
-- Name: teams_lineupposition id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teams_lineupposition ALTER COLUMN id SET DEFAULT nextval('public.teams_lineupposition_id_seq'::regclass);


--
-- Name: teams_nflteam id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teams_nflteam ALTER COLUMN id SET DEFAULT nextval('public.teams_nflteam_id_seq'::regclass);


--
-- Name: teams_team id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teams_team ALTER COLUMN id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add player	1	add_player
2	Can change player	1	change_player
3	Can delete player	1	delete_player
4	Can view player	1	view_player
5	Can add player week	2	add_playerweek
6	Can change player week	2	change_playerweek
7	Can delete player week	2	delete_playerweek
8	Can view player week	2	view_playerweek
9	Can add lineup	3	add_lineup
10	Can change lineup	3	change_lineup
11	Can delete lineup	3	delete_lineup
12	Can view lineup	3	view_lineup
13	Can add team	4	add_team
14	Can change team	4	change_team
15	Can delete team	4	delete_team
16	Can view team	4	view_team
17	Can add lineup position	5	add_lineupposition
18	Can change lineup position	5	change_lineupposition
19	Can delete lineup position	5	delete_lineupposition
20	Can view lineup position	5	view_lineupposition
21	Can add matchup	6	add_matchup
22	Can change matchup	6	change_matchup
23	Can delete matchup	6	delete_matchup
24	Can view matchup	6	view_matchup
25	Can add choice	7	add_choice
26	Can change choice	7	change_choice
27	Can delete choice	7	delete_choice
28	Can view choice	7	view_choice
29	Can add question	8	add_question
30	Can change question	8	change_question
31	Can delete question	8	delete_question
32	Can view question	8	view_question
33	Can add log entry	9	add_logentry
34	Can change log entry	9	change_logentry
35	Can delete log entry	9	delete_logentry
36	Can view log entry	9	view_logentry
37	Can add permission	10	add_permission
38	Can change permission	10	change_permission
39	Can delete permission	10	delete_permission
40	Can view permission	10	view_permission
41	Can add group	11	add_group
42	Can change group	11	change_group
43	Can delete group	11	delete_group
44	Can view group	11	view_group
45	Can add user	12	add_user
46	Can change user	12	change_user
47	Can delete user	12	delete_user
48	Can view user	12	view_user
49	Can add content type	13	add_contenttype
50	Can change content type	13	change_contenttype
51	Can delete content type	13	delete_contenttype
52	Can view content type	13	view_contenttype
53	Can add session	14	add_session
54	Can change session	14	change_session
55	Can delete session	14	delete_session
56	Can view session	14	view_session
57	Can add application	15	add_application
58	Can change application	15	change_application
59	Can delete application	15	delete_application
60	Can view application	15	view_application
61	Can add access token	16	add_accesstoken
62	Can change access token	16	change_accesstoken
63	Can delete access token	16	delete_accesstoken
64	Can view access token	16	view_accesstoken
65	Can add grant	17	add_grant
66	Can change grant	17	change_grant
67	Can delete grant	17	delete_grant
68	Can view grant	17	view_grant
69	Can add refresh token	18	add_refreshtoken
70	Can change refresh token	18	change_refreshtoken
71	Can delete refresh token	18	delete_refreshtoken
72	Can view refresh token	18	view_refreshtoken
73	Can add cors model	19	add_corsmodel
74	Can change cors model	19	change_corsmodel
75	Can delete cors model	19	delete_corsmodel
76	Can view cors model	19	view_corsmodel
77	Can add nfl team	20	add_nflteam
78	Can change nfl team	20	change_nflteam
79	Can delete nfl team	20	delete_nflteam
80	Can view nfl team	20	view_nflteam
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$120000$AYfKZYwCfjvd$XvH9uaQ19xSF4fIc1BPFXTu0+MjZolvWIMFhYlzYocQ=	2018-11-08 03:55:02.582426+00	t	admin			matt.cappleman@gmail.com	t	t	2018-11-08 03:54:08.299123+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2018-11-08 13:52:10.041889+00	1	Trevor	1	[{"added": {}}]	4	1
2	2018-11-08 13:52:13.212477+00	2	Matt	1	[{"added": {}}]	4	1
3	2018-11-08 13:52:17.185965+00	3	Basil	1	[{"added": {}}]	4	1
4	2018-11-08 13:52:21.513811+00	4	Chaz	1	[{"added": {}}]	4	1
5	2018-11-08 13:52:24.662312+00	5	Ean	1	[{"added": {}}]	4	1
6	2018-11-08 13:52:33.779647+00	6	Hunter	1	[{"added": {}}]	4	1
7	2018-11-08 13:52:39.35534+00	7	Jared	1	[{"added": {}}]	4	1
8	2018-11-08 13:52:48.375439+00	8	Majors	1	[{"added": {}}]	4	1
9	2018-11-08 13:52:52.251214+00	9	Sam	1	[{"added": {}}]	4	1
10	2018-11-08 13:52:55.030522+00	10	Ross	1	[{"added": {}}]	4	1
11	2018-11-08 13:52:58.304898+00	11	Willis	1	[{"added": {}}]	4	1
12	2018-11-08 13:53:09.718804+00	12	Sawyer	1	[{"added": {}}]	4	1
13	2018-11-08 13:53:23.627467+00	1	QB	1	[{"added": {}}]	5	1
14	2018-11-08 13:53:34.433807+00	2	RB	1	[{"added": {}}]	5	1
15	2018-11-08 13:53:36.699777+00	3	WR	1	[{"added": {}}]	5	1
16	2018-11-08 13:53:38.953486+00	4	TE	1	[{"added": {}}]	5	1
17	2018-11-08 13:53:43.361368+00	5	FLEX	1	[{"added": {}}]	5	1
18	2018-11-08 13:54:19.604095+00	6	DST	1	[{"added": {}}]	5	1
19	2018-11-08 13:54:24.80805+00	7	K	1	[{"added": {}}]	5	1
20	2018-11-08 13:54:29.773531+00	8	BEN	1	[{"added": {}}]	5	1
21	2018-11-08 13:54:32.829833+00	9	IR	1	[{"added": {}}]	5	1
22	2018-11-08 13:55:57.878155+00	1	Alex Smith, QB	1	[{"added": {}}]	1	1
23	2018-11-08 13:56:14.074136+00	1	Matt, 2018, 1	1	[{"added": {}}, {"added": {"name": "player week", "object": "Alex Smith, 2018, 1, 19.6"}}]	3	1
24	2018-11-08 13:58:20.825486+00	1	WAS	1	[{"added": {}}]	20	1
25	2018-11-08 13:58:23.551196+00	1	Alex Smith, 2018, 1, 19.6	2	[{"changed": {"fields": ["nfl_team"]}}]	2	1
26	2018-11-08 13:59:21.938652+00	2	Corey Davis, WR	1	[{"added": {}}]	1	1
27	2018-11-08 13:59:39.481734+00	2	TEN	1	[{"added": {}}]	20	1
28	2018-11-08 13:59:54.420468+00	3	DeAndre Hopkins, WR	1	[{"added": {}}]	1	1
29	2018-11-08 14:00:03.564995+00	3	HOU	1	[{"added": {}}]	20	1
30	2018-11-08 14:00:30.311723+00	1	Matt, 2018, 1	2	[{"added": {"name": "player week", "object": "Corey Davis, 2018, 1, 6.2"}}, {"added": {"name": "player week", "object": "DeAndre Hopkins, 2018, 1, 7.1"}}]	3	1
31	2018-11-08 14:01:47.112735+00	4	Todd Gurley II, RB	1	[{"added": {}}]	1	1
32	2018-11-08 14:02:03.453234+00	4	LAR	1	[{"added": {}}]	20	1
33	2018-11-08 14:02:11.756095+00	1	Matt, 2018, 1	2	[{"added": {"name": "player week", "object": "Todd Gurley II, 2018, 1, 20.7"}}]	3	1
34	2018-11-08 14:02:53.47093+00	5	Adrian Peterson, RB	1	[{"added": {}}]	1	1
35	2018-11-08 14:03:08.49867+00	1	Matt, 2018, 1	2	[{"added": {"name": "player week", "object": "Adrian Peterson, 2018, 1, 20.6"}}]	3	1
36	2018-11-08 14:03:22.314112+00	6	Rob Gronkowski, TE	1	[{"added": {}}]	1	1
37	2018-11-08 14:03:34.229253+00	5	NE	1	[{"added": {}}]	20	1
38	2018-11-08 14:03:51.36998+00	7	James Conner, RB	1	[{"added": {}}]	1	1
39	2018-11-08 14:04:05.109147+00	6	PIT	1	[{"added": {}}]	20	1
40	2018-11-08 14:04:28.013503+00	8	Graham Gano, K	1	[{"added": {}}]	1	1
41	2018-11-08 14:05:10.174869+00	7	CAR	1	[{"added": {}}]	20	1
42	2018-11-08 14:05:33.620707+00	9	Detroit, DST	1	[{"added": {}}]	1	1
43	2018-11-08 14:05:51.302665+00	8	DET	1	[{"added": {}}]	20	1
44	2018-11-08 14:06:05.559111+00	1	Matt, 2018, 1	2	[{"added": {"name": "player week", "object": "Rob Gronkowski, 2018, 1, 16.3"}}, {"added": {"name": "player week", "object": "James Conner, 2018, 1, 29.2"}}, {"added": {"name": "player week", "object": "Graham Gano, 2018, 1, 4.0"}}, {"added": {"name": "player week", "object": "Detroit, 2018, 1, 8.0"}}]	3	1
45	2018-11-08 14:07:14.60407+00	10	Sterling Sherpard, WR	1	[{"added": {}}]	1	1
46	2018-11-08 14:07:26.231375+00	9	NYG	1	[{"added": {}}]	20	1
47	2018-11-08 14:07:36.168463+00	1	Matt, 2018, 1	2	[{"added": {"name": "player week", "object": "Sterling Sherpard, 2018, 1, 4.8"}}]	3	1
48	2018-11-08 14:08:35.75776+00	11	Josh Doctson, WR	1	[{"added": {}}]	1	1
49	2018-11-08 14:08:45.111763+00	1	Matt, 2018, 1	2	[{"added": {"name": "player week", "object": "Josh Doctson, 2018, 1, 1.1"}}]	3	1
50	2018-11-08 14:09:08.207317+00	12	Marlon Mack, RB	1	[{"added": {}}]	1	1
51	2018-11-08 14:09:23.202085+00	10	IND	1	[{"added": {}}]	20	1
52	2018-11-08 14:09:31.698364+00	1	Matt, 2018, 1	2	[{"added": {"name": "player week", "object": "Marlon Mack, 2018, 1, 0.0"}}]	3	1
53	2018-11-08 14:10:15.757595+00	13	Kelvin Benjamin, WR	1	[{"added": {}}]	1	1
54	2018-11-08 14:16:57.536919+00	11	BUF	1	[{"added": {}}]	20	1
55	2018-11-08 14:17:18.494096+00	14	Michael Gallup, WR	1	[{"added": {}}]	1	1
56	2018-11-08 14:17:31.324393+00	12	DAL	1	[{"added": {}}]	20	1
57	2018-11-08 14:17:58.615542+00	1	Matt, 2018, 1	2	[{"added": {"name": "player week", "object": "Kelvin Benjamin, 2018, 1, 1.0"}}, {"added": {"name": "player week", "object": "Michael Gallup, 2018, 1, 0.9"}}]	3	1
58	2018-11-08 14:18:39.416094+00	15	LeGarrette Blount, RB	1	[{"added": {}}]	1	1
59	2018-11-08 14:18:56.959209+00	1	Matt, 2018, 1	2	[{"added": {"name": "player week", "object": "LeGarrette Blount, 2018, 1, -0.3"}}]	3	1
60	2018-11-08 14:19:54.890637+00	1	Matt, 2018, 1	2	[]	3	1
61	2018-11-08 14:20:29.083864+00	16	Tom Brady, QB	1	[{"added": {}}]	1	1
62	2018-11-08 14:20:53.258793+00	17	Odell Beckham Jr, WR	1	[{"added": {}}]	1	1
63	2018-11-08 14:21:11.020827+00	18	Mike Evans, WR	1	[{"added": {}}]	1	1
64	2018-11-08 14:21:37.886898+00	13	TB	1	[{"added": {}}]	20	1
65	2018-11-08 14:21:49.108655+00	2	Sam, 2018, 1	1	[{"added": {}}, {"added": {"name": "player week", "object": "Tom Brady, 2018, 1, 22.28"}}, {"added": {"name": "player week", "object": "Odell Beckham Jr, 2018, 1, 11.0"}}, {"added": {"name": "player week", "object": "Mike Evans, 2018, 1, 20.7"}}]	3	1
66	2018-11-08 14:22:08.457765+00	19	LeSean McCoy, RB	1	[{"added": {}}]	1	1
67	2018-11-08 14:22:40.929576+00	20	Marshawn Lynch, RB	1	[{"added": {}}]	1	1
68	2018-11-08 14:23:02.255035+00	14	OAK	1	[{"added": {}}]	20	1
69	2018-11-08 14:23:25.099316+00	2	Sam, 2018, 1	2	[{"added": {"name": "player week", "object": "LeSean McCoy, 2018, 1, 2.1"}}, {"added": {"name": "player week", "object": "Marshawn Lynch, 2018, 1, 10.9"}}]	3	1
70	2018-11-08 14:23:57.129158+00	21	Delanie Walker, TE	1	[{"added": {}}]	1	1
71	2018-11-08 14:24:13.302182+00	2	Sam, 2018, 1	2	[{"added": {"name": "player week", "object": "Delanie Walker, 2018, 1, 5.2"}}]	3	1
72	2018-11-08 14:24:32.455683+00	22	Tyreek Hill, WR	1	[{"added": {}}]	1	1
73	2018-11-08 14:27:42.009386+00	15	KC	1	[{"added": {}}]	20	1
74	2018-11-08 14:27:52.638111+00	2	Sam, 2018, 1	2	[{"added": {"name": "player week", "object": "Tyreek Hill, 2018, 1, 34.3"}}]	3	1
75	2018-11-08 14:28:15.805476+00	23	Chris Boswell, K	1	[{"added": {}}]	1	1
76	2018-11-08 14:28:40.416658+00	24	New England, DST	1	[{"added": {}}]	1	1
77	2018-11-08 14:28:53.745698+00	2	Sam, 2018, 1	2	[{"added": {"name": "player week", "object": "Chris Boswell, 2018, 1, 3.0"}}, {"added": {"name": "player week", "object": "New England, 2018, 1, 8.0"}}]	3	1
78	2018-11-08 14:31:00.061427+00	25	Ronald Jones II, RB	1	[{"added": {}}]	1	1
79	2018-11-08 14:31:21.874614+00	26	Dion Lewis, RB	1	[{"added": {}}]	1	1
80	2018-11-08 14:31:31.376408+00	2	Sam, 2018, 1	2	[{"added": {"name": "player week", "object": "Ronald Jones II, 2018, 1, 0.0"}}, {"added": {"name": "player week", "object": "Dion Lewis, 2018, 1, 0.0"}}]	3	1
81	2018-11-08 14:34:22.856998+00	27	Julian Edelman, WR	1	[{"added": {}}]	1	1
82	2018-11-08 14:34:51.698362+00	28	Pierre Garcon, WR	1	[{"added": {}}]	1	1
83	2018-11-08 14:35:04.328218+00	16	SF	1	[{"added": {}}]	20	1
84	2018-11-08 14:35:12.150779+00	2	Sam, 2018, 1	2	[{"added": {"name": "player week", "object": "Julian Edelman, 2018, 1, 0.0"}}, {"added": {"name": "player week", "object": "Pierre Garcon, 2018, 1, 2.1"}}]	3	1
85	2018-11-08 14:35:34.109112+00	29	Nelson Agholor, WR	1	[{"added": {}}]	1	1
86	2018-11-08 14:35:48.261776+00	17	PHI	1	[{"added": {}}]	20	1
87	2018-11-08 14:36:08.997103+00	30	Antonio Gates, TE	1	[{"added": {}}]	1	1
88	2018-11-08 14:36:33.193426+00	18	LAC	1	[{"added": {}}]	20	1
89	2018-11-08 14:36:41.804549+00	2	Sam, 2018, 1	2	[{"added": {"name": "player week", "object": "Nelson Agholor, 2018, 1, 5.5"}}, {"added": {"name": "player week", "object": "Antonio Gates, 2018, 1, 3.6"}}]	3	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	players	player
2	players	playerweek
3	teams	lineup
4	teams	team
5	teams	lineupposition
6	matchups	matchup
7	polls	choice
8	polls	question
9	admin	logentry
10	auth	permission
11	auth	group
12	auth	user
13	contenttypes	contenttype
14	sessions	session
15	oauth2_provider	application
16	oauth2_provider	accesstoken
17	oauth2_provider	grant
18	oauth2_provider	refreshtoken
19	corsheaders	corsmodel
20	teams	nflteam
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2018-11-08 03:52:32.310607+00
2	auth	0001_initial	2018-11-08 03:52:33.36396+00
3	admin	0001_initial	2018-11-08 03:52:33.683435+00
4	admin	0002_logentry_remove_auto_add	2018-11-08 03:52:33.758413+00
5	admin	0003_logentry_add_action_flag_choices	2018-11-08 03:52:33.832187+00
6	contenttypes	0002_remove_content_type_name	2018-11-08 03:52:34.007046+00
7	auth	0002_alter_permission_name_max_length	2018-11-08 03:52:34.081943+00
8	auth	0003_alter_user_email_max_length	2018-11-08 03:52:34.183723+00
9	auth	0004_alter_user_username_opts	2018-11-08 03:52:34.288933+00
10	auth	0005_alter_user_last_login_null	2018-11-08 03:52:34.392077+00
11	auth	0006_require_contenttypes_0002	2018-11-08 03:52:34.422515+00
12	auth	0007_alter_validators_add_error_messages	2018-11-08 03:52:34.496244+00
13	auth	0008_alter_user_username_max_length	2018-11-08 03:52:34.61347+00
14	auth	0009_alter_user_last_name_max_length	2018-11-08 03:52:34.713319+00
15	players	0001_initial	2018-11-08 03:52:34.920558+00
16	teams	0001_initial	2018-11-08 03:52:36.233578+00
17	matchups	0001_initial	2018-11-08 03:52:36.526115+00
18	matchups	0002_auto_20180905_1850	2018-11-08 03:52:36.594409+00
19	matchups	0003_auto_20180906_2007	2018-11-08 03:52:36.7245+00
20	oauth2_provider	0001_initial	2018-11-08 03:52:37.513961+00
21	oauth2_provider	0002_08_updates	2018-11-08 03:52:37.91885+00
22	oauth2_provider	0003_auto_20160316_1503	2018-11-08 03:52:38.083463+00
23	oauth2_provider	0004_auto_20160525_1623	2018-11-08 03:52:38.517261+00
24	oauth2_provider	0005_auto_20170514_1141	2018-11-08 03:52:40.686047+00
25	oauth2_provider	0006_auto_20171214_2232	2018-11-08 03:52:41.278929+00
26	teams	0002_auto_20180904_1841	2018-11-08 03:52:42.276213+00
27	teams	0003_lineupposition	2018-11-08 03:52:42.332072+00
28	players	0002_auto_20180904_1841	2018-11-08 03:52:42.465027+00
29	players	0003_auto_20180904_1903	2018-11-08 03:52:42.64826+00
30	players	0004_auto_20180904_1909	2018-11-08 03:52:42.720039+00
31	players	0005_auto_20180904_1919	2018-11-08 03:52:42.851484+00
32	players	0006_remove_playerweek_lineup_position	2018-11-08 03:52:42.923158+00
33	players	0007_remove_playerweek_lineup	2018-11-08 03:52:42.984724+00
34	players	0008_auto_20180904_2001	2018-11-08 03:52:43.107244+00
35	players	0009_auto_20180905_1905	2018-11-08 03:52:43.250452+00
36	polls	0001_initial	2018-11-08 03:52:43.375345+00
37	sessions	0001_initial	2018-11-08 03:52:43.46691+00
38	teams	0004_auto_20180907_1413	2018-11-08 03:52:43.560326+00
39	teams	0005_nflteam	2018-11-08 13:42:45.33766+00
40	players	0010_player_active	2018-11-08 13:42:45.424148+00
41	players	0011_playerweek_nfl_team	2018-11-08 13:42:45.580637+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
t96v5l88ml7uhag2u20wsmmxt90bd3w6	MjFjMzI5YWM1Y2JlM2RmZDg4ZTE1ZTYzOGU3OTU2MGIxNDVkMzBhNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZmJhYTY0Yzg0MWViZWM4MGY3NzhjYTQ0NmRmODIzMmM1NGVlNTUxIn0=	2018-11-22 03:55:02.614591+00
\.


--
-- Data for Name: matchups_matchup; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.matchups_matchup (id, loser_id, winner_id) FROM stdin;
\.


--
-- Data for Name: oauth2_provider_accesstoken; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.oauth2_provider_accesstoken (id, token, expires, scope, application_id, user_id, created, updated, source_refresh_token_id) FROM stdin;
\.


--
-- Data for Name: oauth2_provider_application; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.oauth2_provider_application (id, client_id, redirect_uris, client_type, authorization_grant_type, client_secret, name, user_id, skip_authorization, created, updated) FROM stdin;
\.


--
-- Data for Name: oauth2_provider_grant; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.oauth2_provider_grant (id, code, expires, redirect_uri, scope, application_id, user_id, created, updated) FROM stdin;
\.


--
-- Data for Name: oauth2_provider_refreshtoken; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.oauth2_provider_refreshtoken (id, token, access_token_id, application_id, user_id, created, updated, revoked) FROM stdin;
\.


--
-- Data for Name: players_player; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.players_player (id, name, "position", active) FROM stdin;
1	Alex Smith	QB	t
2	Corey Davis	WR	t
3	DeAndre Hopkins	WR	t
4	Todd Gurley II	RB	t
5	Adrian Peterson	RB	t
6	Rob Gronkowski	TE	t
7	James Conner	RB	t
8	Graham Gano	K	t
9	Detroit	DST	t
10	Sterling Sherpard	WR	t
11	Josh Doctson	WR	t
12	Marlon Mack	RB	t
13	Kelvin Benjamin	WR	t
14	Michael Gallup	WR	t
15	LeGarrette Blount	RB	t
16	Tom Brady	QB	t
17	Odell Beckham Jr	WR	t
18	Mike Evans	WR	t
19	LeSean McCoy	RB	t
20	Marshawn Lynch	RB	t
21	Delanie Walker	TE	t
22	Tyreek Hill	WR	t
23	Chris Boswell	K	t
24	New England	DST	t
25	Ronald Jones II	RB	t
26	Dion Lewis	RB	t
27	Julian Edelman	WR	t
28	Pierre Garcon	WR	t
29	Nelson Agholor	WR	t
30	Antonio Gates	TE	t
\.


--
-- Data for Name: players_playerweek; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.players_playerweek (id, year, week, points, player_id, lineup_id, lineup_position_id, nfl_team_id) FROM stdin;
1	2018	1	19.6000000000000014	1	1	1	1
2	2018	1	6.20000000000000018	2	1	3	2
3	2018	1	7.09999999999999964	3	1	3	3
4	2018	1	20.6999999999999993	4	1	2	4
5	2018	1	20.6000000000000014	5	1	2	1
6	2018	1	16.3000000000000007	6	1	4	5
7	2018	1	29.1999999999999993	7	1	5	6
8	2018	1	4	8	1	7	7
9	2018	1	8	9	1	6	8
10	2018	1	4.79999999999999982	10	1	8	9
11	2018	1	1.10000000000000009	11	1	8	1
12	2018	1	0	12	1	8	10
13	2018	1	1	13	1	8	11
14	2018	1	0.900000000000000022	14	1	8	12
15	2018	1	-0.299999999999999989	15	1	8	8
16	2018	1	22.2800000000000011	16	2	1	5
17	2018	1	11	17	2	3	9
18	2018	1	20.6999999999999993	18	2	3	13
19	2018	1	2.10000000000000009	19	2	2	11
20	2018	1	10.9000000000000004	20	2	2	14
21	2018	1	5.20000000000000018	21	2	4	2
22	2018	1	34.2999999999999972	22	2	5	15
23	2018	1	3	23	2	7	6
24	2018	1	8	24	2	6	5
25	2018	1	0	25	2	8	13
26	2018	1	0	26	2	8	2
27	2018	1	0	27	2	8	5
28	2018	1	2.10000000000000009	28	2	8	16
29	2018	1	5.5	29	2	8	17
30	2018	1	3.60000000000000009	30	2	8	18
\.


--
-- Data for Name: polls_choice; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.polls_choice (id, choice_text, votes, question_id) FROM stdin;
\.


--
-- Data for Name: polls_question; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.polls_question (id, question_text, pub_date) FROM stdin;
\.


--
-- Data for Name: teams_lineup; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teams_lineup (id, year, week, team_id, points) FROM stdin;
1	2018	1	2	131.699999999999989
2	2018	1	9	118.480000000000004
\.


--
-- Data for Name: teams_lineupposition; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teams_lineupposition (id, name) FROM stdin;
1	QB
2	RB
3	WR
4	TE
5	FLEX
6	DST
7	K
8	BEN
9	IR
\.


--
-- Data for Name: teams_nflteam; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teams_nflteam (id, name, conference, division) FROM stdin;
1	WAS	NFC	East
2	TEN	AFC	South
3	HOU	AFC	South
4	LAR	NFC	West
5	NE	AFC	East
6	PIT	AFC	North
7	CAR	NFC	South
8	DET	NFC	North
9	NYG	NFC	East
10	IND	AFC	South
11	BUF	AFC	East
12	DAL	NFC	East
13	TB	NFC	South
14	OAK	AFC	West
15	KC	AFC	West
16	SF	NFC	West
17	PHI	NFC	East
18	LAC	AFC	West
\.


--
-- Data for Name: teams_team; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teams_team (id, name, wins, losses, ties) FROM stdin;
1	Trevor	0	0	0
2	Matt	0	0	0
3	Basil	0	0	0
4	Chaz	0	0	0
5	Ean	0	0	0
6	Hunter	0	0	0
7	Jared	0	0	0
8	Majors	0	0	0
9	Sam	0	0	0
10	Ross	0	0	0
11	Willis	0	0	0
12	Sawyer	0	0	0
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 80, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 89, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 20, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 41, true);


--
-- Name: matchups_matchup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.matchups_matchup_id_seq', 1, false);


--
-- Name: oauth2_provider_accesstoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.oauth2_provider_accesstoken_id_seq', 1, false);


--
-- Name: oauth2_provider_application_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.oauth2_provider_application_id_seq', 1, false);


--
-- Name: oauth2_provider_grant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.oauth2_provider_grant_id_seq', 1, false);


--
-- Name: oauth2_provider_refreshtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.oauth2_provider_refreshtoken_id_seq', 1, false);


--
-- Name: players_player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.players_player_id_seq', 30, true);


--
-- Name: players_playerweek_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.players_playerweek_id_seq', 30, true);


--
-- Name: polls_choice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.polls_choice_id_seq', 1, false);


--
-- Name: polls_question_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.polls_question_id_seq', 1, false);


--
-- Name: teams_lineup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teams_lineup_id_seq', 2, true);


--
-- Name: teams_lineupposition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teams_lineupposition_id_seq', 9, true);


--
-- Name: teams_nflteam_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teams_nflteam_id_seq', 18, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 12, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: matchups_matchup matchups_matchup_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matchups_matchup
    ADD CONSTRAINT matchups_matchup_pkey PRIMARY KEY (id);


--
-- Name: oauth2_provider_accesstoken oauth2_provider_accesstoken_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oauth2_provider_accesstoken
    ADD CONSTRAINT oauth2_provider_accesstoken_pkey PRIMARY KEY (id);


--
-- Name: oauth2_provider_accesstoken oauth2_provider_accesstoken_source_refresh_token_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oauth2_provider_accesstoken
    ADD CONSTRAINT oauth2_provider_accesstoken_source_refresh_token_id_key UNIQUE (source_refresh_token_id);


--
-- Name: oauth2_provider_accesstoken oauth2_provider_accesstoken_token_8af090f8_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oauth2_provider_accesstoken
    ADD CONSTRAINT oauth2_provider_accesstoken_token_8af090f8_uniq UNIQUE (token);


--
-- Name: oauth2_provider_application oauth2_provider_application_client_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oauth2_provider_application
    ADD CONSTRAINT oauth2_provider_application_client_id_key UNIQUE (client_id);


--
-- Name: oauth2_provider_application oauth2_provider_application_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oauth2_provider_application
    ADD CONSTRAINT oauth2_provider_application_pkey PRIMARY KEY (id);


--
-- Name: oauth2_provider_grant oauth2_provider_grant_code_49ab4ddf_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oauth2_provider_grant
    ADD CONSTRAINT oauth2_provider_grant_code_49ab4ddf_uniq UNIQUE (code);


--
-- Name: oauth2_provider_grant oauth2_provider_grant_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oauth2_provider_grant
    ADD CONSTRAINT oauth2_provider_grant_pkey PRIMARY KEY (id);


--
-- Name: oauth2_provider_refreshtoken oauth2_provider_refreshtoken_access_token_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refreshtoken_access_token_id_key UNIQUE (access_token_id);


--
-- Name: oauth2_provider_refreshtoken oauth2_provider_refreshtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refreshtoken_pkey PRIMARY KEY (id);


--
-- Name: oauth2_provider_refreshtoken oauth2_provider_refreshtoken_token_revoked_af8a5134_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refreshtoken_token_revoked_af8a5134_uniq UNIQUE (token, revoked);


--
-- Name: players_player players_player_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.players_player
    ADD CONSTRAINT players_player_pkey PRIMARY KEY (id);


--
-- Name: players_playerweek players_playerweek_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.players_playerweek
    ADD CONSTRAINT players_playerweek_pkey PRIMARY KEY (id);


--
-- Name: polls_choice polls_choice_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.polls_choice
    ADD CONSTRAINT polls_choice_pkey PRIMARY KEY (id);


--
-- Name: polls_question polls_question_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.polls_question
    ADD CONSTRAINT polls_question_pkey PRIMARY KEY (id);


--
-- Name: teams_lineup teams_lineup_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teams_lineup
    ADD CONSTRAINT teams_lineup_pkey PRIMARY KEY (id);


--
-- Name: teams_lineupposition teams_lineupposition_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teams_lineupposition
    ADD CONSTRAINT teams_lineupposition_pkey PRIMARY KEY (id);


--
-- Name: teams_nflteam teams_nflteam_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teams_nflteam
    ADD CONSTRAINT teams_nflteam_pkey PRIMARY KEY (id);


--
-- Name: teams_team teams_team_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teams_team
    ADD CONSTRAINT teams_team_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: matchups_matchup_loser_id_089788b7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX matchups_matchup_loser_id_089788b7 ON public.matchups_matchup USING btree (loser_id);


--
-- Name: matchups_matchup_winner_id_5ba4ae5b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX matchups_matchup_winner_id_5ba4ae5b ON public.matchups_matchup USING btree (winner_id);


--
-- Name: oauth2_provider_accesstoken_application_id_b22886e1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth2_provider_accesstoken_application_id_b22886e1 ON public.oauth2_provider_accesstoken USING btree (application_id);


--
-- Name: oauth2_provider_accesstoken_token_8af090f8_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth2_provider_accesstoken_token_8af090f8_like ON public.oauth2_provider_accesstoken USING btree (token varchar_pattern_ops);


--
-- Name: oauth2_provider_accesstoken_user_id_6e4c9a65; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth2_provider_accesstoken_user_id_6e4c9a65 ON public.oauth2_provider_accesstoken USING btree (user_id);


--
-- Name: oauth2_provider_application_client_id_03f0cc84_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth2_provider_application_client_id_03f0cc84_like ON public.oauth2_provider_application USING btree (client_id varchar_pattern_ops);


--
-- Name: oauth2_provider_application_client_secret_53133678; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth2_provider_application_client_secret_53133678 ON public.oauth2_provider_application USING btree (client_secret);


--
-- Name: oauth2_provider_application_client_secret_53133678_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth2_provider_application_client_secret_53133678_like ON public.oauth2_provider_application USING btree (client_secret varchar_pattern_ops);


--
-- Name: oauth2_provider_application_user_id_79829054; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth2_provider_application_user_id_79829054 ON public.oauth2_provider_application USING btree (user_id);


--
-- Name: oauth2_provider_grant_application_id_81923564; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth2_provider_grant_application_id_81923564 ON public.oauth2_provider_grant USING btree (application_id);


--
-- Name: oauth2_provider_grant_code_49ab4ddf_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth2_provider_grant_code_49ab4ddf_like ON public.oauth2_provider_grant USING btree (code varchar_pattern_ops);


--
-- Name: oauth2_provider_grant_user_id_e8f62af8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth2_provider_grant_user_id_e8f62af8 ON public.oauth2_provider_grant USING btree (user_id);


--
-- Name: oauth2_provider_refreshtoken_application_id_2d1c311b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth2_provider_refreshtoken_application_id_2d1c311b ON public.oauth2_provider_refreshtoken USING btree (application_id);


--
-- Name: oauth2_provider_refreshtoken_user_id_da837fce; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth2_provider_refreshtoken_user_id_da837fce ON public.oauth2_provider_refreshtoken USING btree (user_id);


--
-- Name: players_playerweek_lineup_id_64c2d733; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX players_playerweek_lineup_id_64c2d733 ON public.players_playerweek USING btree (lineup_id);


--
-- Name: players_playerweek_lineup_position_id_efa0f7a9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX players_playerweek_lineup_position_id_efa0f7a9 ON public.players_playerweek USING btree (lineup_position_id);


--
-- Name: players_playerweek_nfl_team_id_cbee214d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX players_playerweek_nfl_team_id_cbee214d ON public.players_playerweek USING btree (nfl_team_id);


--
-- Name: players_playerweek_player_id_22650cbf; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX players_playerweek_player_id_22650cbf ON public.players_playerweek USING btree (player_id);


--
-- Name: polls_choice_question_id_c5b4b260; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX polls_choice_question_id_c5b4b260 ON public.polls_choice USING btree (question_id);


--
-- Name: teams_lineup_team_id_89e2cbd9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX teams_lineup_team_id_89e2cbd9 ON public.teams_lineup USING btree (team_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: matchups_matchup matchups_matchup_loser_id_089788b7_fk_teams_lineup_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matchups_matchup
    ADD CONSTRAINT matchups_matchup_loser_id_089788b7_fk_teams_lineup_id FOREIGN KEY (loser_id) REFERENCES public.teams_lineup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: matchups_matchup matchups_matchup_winner_id_5ba4ae5b_fk_teams_lineup_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matchups_matchup
    ADD CONSTRAINT matchups_matchup_winner_id_5ba4ae5b_fk_teams_lineup_id FOREIGN KEY (winner_id) REFERENCES public.teams_lineup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oauth2_provider_accesstoken oauth2_provider_acce_source_refresh_token_e66fbc72_fk_oauth2_pr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oauth2_provider_accesstoken
    ADD CONSTRAINT oauth2_provider_acce_source_refresh_token_e66fbc72_fk_oauth2_pr FOREIGN KEY (source_refresh_token_id) REFERENCES public.oauth2_provider_refreshtoken(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oauth2_provider_accesstoken oauth2_provider_accesstoken_application_id_b22886e1_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oauth2_provider_accesstoken
    ADD CONSTRAINT oauth2_provider_accesstoken_application_id_b22886e1_fk FOREIGN KEY (application_id) REFERENCES public.oauth2_provider_application(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oauth2_provider_accesstoken oauth2_provider_accesstoken_user_id_6e4c9a65_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oauth2_provider_accesstoken
    ADD CONSTRAINT oauth2_provider_accesstoken_user_id_6e4c9a65_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oauth2_provider_application oauth2_provider_application_user_id_79829054_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oauth2_provider_application
    ADD CONSTRAINT oauth2_provider_application_user_id_79829054_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oauth2_provider_grant oauth2_provider_grant_application_id_81923564_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oauth2_provider_grant
    ADD CONSTRAINT oauth2_provider_grant_application_id_81923564_fk FOREIGN KEY (application_id) REFERENCES public.oauth2_provider_application(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oauth2_provider_grant oauth2_provider_grant_user_id_e8f62af8_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oauth2_provider_grant
    ADD CONSTRAINT oauth2_provider_grant_user_id_e8f62af8_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oauth2_provider_refreshtoken oauth2_provider_refr_access_token_id_775e84e8_fk_oauth2_pr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refr_access_token_id_775e84e8_fk_oauth2_pr FOREIGN KEY (access_token_id) REFERENCES public.oauth2_provider_accesstoken(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oauth2_provider_refreshtoken oauth2_provider_refreshtoken_application_id_2d1c311b_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refreshtoken_application_id_2d1c311b_fk FOREIGN KEY (application_id) REFERENCES public.oauth2_provider_application(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oauth2_provider_refreshtoken oauth2_provider_refreshtoken_user_id_da837fce_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refreshtoken_user_id_da837fce_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: players_playerweek players_playerweek_lineup_id_64c2d733_fk_teams_lineup_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.players_playerweek
    ADD CONSTRAINT players_playerweek_lineup_id_64c2d733_fk_teams_lineup_id FOREIGN KEY (lineup_id) REFERENCES public.teams_lineup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: players_playerweek players_playerweek_lineup_position_id_efa0f7a9_fk_teams_lin; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.players_playerweek
    ADD CONSTRAINT players_playerweek_lineup_position_id_efa0f7a9_fk_teams_lin FOREIGN KEY (lineup_position_id) REFERENCES public.teams_lineupposition(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: players_playerweek players_playerweek_nfl_team_id_cbee214d_fk_teams_nflteam_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.players_playerweek
    ADD CONSTRAINT players_playerweek_nfl_team_id_cbee214d_fk_teams_nflteam_id FOREIGN KEY (nfl_team_id) REFERENCES public.teams_nflteam(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: players_playerweek players_playerweek_player_id_22650cbf_fk_players_player_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.players_playerweek
    ADD CONSTRAINT players_playerweek_player_id_22650cbf_fk_players_player_id FOREIGN KEY (player_id) REFERENCES public.players_player(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: polls_choice polls_choice_question_id_c5b4b260_fk_polls_question_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.polls_choice
    ADD CONSTRAINT polls_choice_question_id_c5b4b260_fk_polls_question_id FOREIGN KEY (question_id) REFERENCES public.polls_question(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: teams_lineup teams_lineup_team_id_89e2cbd9_fk_teams_team_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teams_lineup
    ADD CONSTRAINT teams_lineup_team_id_89e2cbd9_fk_teams_team_id FOREIGN KEY (team_id) REFERENCES public.teams_team(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

