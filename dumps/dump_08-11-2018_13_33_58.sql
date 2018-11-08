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
90	2018-11-08 14:42:14.659878+00	31	Andrew Luck, QB	1	[{"added": {}}]	1	1
91	2018-11-08 14:42:37.450413+00	32	A.J. Green, WR	1	[{"added": {}}]	1	1
92	2018-11-08 14:42:53.51257+00	19	CIN	1	[{"added": {}}]	20	1
93	2018-11-08 14:43:17.848349+00	33	Brandin Cooks, WR	1	[{"added": {}}]	1	1
94	2018-11-08 14:43:32.622002+00	34	Ezekiel Elliott, RB	1	[{"added": {}}]	1	1
95	2018-11-08 14:43:53.408807+00	3	Majors, 2018, 1	1	[{"added": {}}, {"added": {"name": "player week", "object": "Andrew Luck, 2018, 1, 20.46"}}, {"added": {"name": "player week", "object": "A.J. Green, 2018, 1, 13.2"}}, {"added": {"name": "player week", "object": "Brandin Cooks, 2018, 1, 9.3"}}, {"added": {"name": "player week", "object": "Ezekiel Elliott, 2018, 1, 14.6"}}]	3	1
96	2018-11-08 14:44:34.222572+00	35	Alvin Kamara, RB	1	[{"added": {}}]	1	1
97	2018-11-08 14:44:51.98416+00	20	NO	1	[{"added": {}}]	20	1
98	2018-11-08 14:45:05.190329+00	3	Majors, 2018, 1	2	[{"added": {"name": "player week", "object": "Alvin Kamara, 2018, 1, 34.1"}}]	3	1
99	2018-11-08 14:45:20.129225+00	36	David Njoku, TE	1	[{"added": {}}]	1	1
100	2018-11-08 14:45:30.066651+00	21	CLE	1	[{"added": {}}]	20	1
101	2018-11-08 14:45:38.142206+00	3	Majors, 2018, 1	2	[{"added": {"name": "player week", "object": "David Njoku, 2018, 1, 1.3"}}]	3	1
102	2018-11-08 14:46:42.22656+00	37	Kerryon Johnson, RB	1	[{"added": {}}]	1	1
103	2018-11-08 14:47:07.611638+00	38	Matt Bryant, K	1	[{"added": {}}]	1	1
104	2018-11-08 14:47:20.360909+00	22	ATL	1	[{"added": {}}]	20	1
105	2018-11-08 14:47:28.410799+00	3	Majors, 2018, 1	2	[{"added": {"name": "player week", "object": "Kerryon Johnson, 2018, 1, 3.7"}}, {"added": {"name": "player week", "object": "Matt Bryant, 2018, 1, 8.0"}}]	3	1
106	2018-11-08 14:47:43.198877+00	39	Carolina, DST	1	[{"added": {}}]	1	1
107	2018-11-08 14:47:51.136122+00	3	Majors, 2018, 1	2	[{"added": {"name": "player week", "object": "Carolina, 2018, 1, 12.0"}}]	3	1
108	2018-11-08 14:48:13.720737+00	40	Rashaad Penny, RB	1	[{"added": {}}]	1	1
109	2018-11-08 14:48:29.864396+00	23	SEA	1	[{"added": {}}]	20	1
110	2018-11-08 14:48:37.470708+00	3	Majors, 2018, 1	2	[{"added": {"name": "player week", "object": "Rashaad Penny, 2018, 1, 4.3"}}]	3	1
111	2018-11-08 14:49:12.854644+00	41	Sony Michel, RB	1	[{"added": {}}]	1	1
112	2018-11-08 14:49:31.359942+00	42	Alshon Jeffery, WR	1	[{"added": {}}]	1	1
113	2018-11-08 14:49:54.418404+00	43	Kenny Golladay, WR	1	[{"added": {}}]	1	1
114	2018-11-08 14:50:19.497807+00	44	Mike Williams, WR	1	[{"added": {}}]	1	1
115	2018-11-08 14:50:40.176477+00	45	Case Keenum, QB	1	[{"added": {}}]	1	1
116	2018-11-08 14:50:51.464552+00	24	DEN	1	[{"added": {}}]	20	1
117	2018-11-08 14:51:00.919554+00	3	Majors, 2018, 1	2	[{"added": {"name": "player week", "object": "Sony Michel, 2018, 1, 0.0"}}, {"added": {"name": "player week", "object": "Alshon Jeffery, 2018, 1, 0.0"}}, {"added": {"name": "player week", "object": "Kenny Golladay, 2018, 1, 11.4"}}, {"added": {"name": "player week", "object": "Mike Williams, 2018, 1, 8.1"}}, {"added": {"name": "player week", "object": "Case Keenum, 2018, 1, 22.16"}}]	3	1
118	2018-11-08 14:52:19.949409+00	46	Jared Goff, QB	1	[{"added": {}}]	1	1
119	2018-11-08 14:52:47.341537+00	47	Julio Jones, WR	1	[{"added": {}}]	1	1
120	2018-11-08 14:53:19.927386+00	48	Robert Woods, WR	1	[{"added": {}}]	1	1
121	2018-11-08 14:53:51.617887+00	49	Kareem Hunt, RB	1	[{"added": {}}]	1	1
122	2018-11-08 14:54:07.708848+00	50	Jay Ajayi, RB	1	[{"added": {}}]	1	1
123	2018-11-08 14:54:40.706958+00	51	Benjamin Watson, TE	1	[{"added": {}}]	1	1
124	2018-11-08 14:56:00.833521+00	52	Isaiah Crowell, RB	1	[{"added": {}}]	1	1
125	2018-11-08 14:56:12.806746+00	25	NYJ	1	[{"added": {}}]	20	1
126	2018-11-08 14:56:32.618872+00	53	Jake Elliott, K	1	[{"added": {}}]	1	1
127	2018-11-08 14:56:52.425283+00	54	New Orleans, DST	1	[{"added": {}}]	1	1
128	2018-11-08 14:57:04.743995+00	4	Willis, 2018, 1	1	[{"added": {}}, {"added": {"name": "player week", "object": "Jared Goff, 2018, 1, 17.22"}}, {"added": {"name": "player week", "object": "Julio Jones, 2018, 1, 18.0"}}, {"added": {"name": "player week", "object": "Robert Woods, 2018, 1, 4.3"}}, {"added": {"name": "player week", "object": "Kareem Hunt, 2018, 1, 4.9"}}, {"added": {"name": "player week", "object": "Jay Ajayi, 2018, 1, 20.2"}}, {"added": {"name": "player week", "object": "Benjamin Watson, 2018, 1, 4.4"}}, {"added": {"name": "player week", "object": "Isaiah Crowell, 2018, 1, 22.2"}}, {"added": {"name": "player week", "object": "Jake Elliott, 2018, 1, 4.0"}}, {"added": {"name": "player week", "object": "New Orleans, 2018, 1, -4.0"}}]	3	1
129	2018-11-08 14:58:25.576564+00	55	Brandon Marshall, WR	1	[{"added": {}}]	1	1
130	2018-11-08 15:01:07.941906+00	56	Nick Chubb, RB	1	[{"added": {}}]	1	1
131	2018-11-08 15:01:27.738357+00	57	Calvin Ridley, WR	1	[{"added": {}}]	1	1
132	2018-11-08 15:02:00.719341+00	58	Kenny Stills, WR	1	[{"added": {}}]	1	1
133	2018-11-08 15:02:13.757786+00	26	MIA	1	[{"added": {}}]	20	1
134	2018-11-08 15:02:36.249542+00	59	Chris Ivory, RB	1	[{"added": {}}]	1	1
135	2018-11-08 15:03:20.199645+00	60	Taywan Taylor, WR	1	[{"added": {}}]	1	1
136	2018-11-08 15:03:38.415969+00	61	Derrius Guice, RB	1	[{"added": {}}]	1	1
186	2018-11-08 15:36:36.278639+00	102	Mark Ingram, RB	1	[{"added": {}}]	1	1
187	2018-11-08 15:36:49.036764+00	103	Dak Prescott, QB	1	[{"added": {}}]	1	1
188	2018-11-08 15:37:05.338281+00	104	Charles Clay, TE	1	[{"added": {}}]	1	1
189	2018-11-08 15:37:21.557117+00	105	Tyler Lockett, WR	1	[{"added": {}}]	1	1
137	2018-11-08 15:03:50.136418+00	4	Willis, 2018, 1	2	[{"added": {"name": "player week", "object": "Brandon Marshall, 2018, 1, 10.6"}}, {"added": {"name": "player week", "object": "Nick Chubb, 2018, 1, 2.1"}}, {"added": {"name": "player week", "object": "Calvin Ridley, 2018, 1, 0.0"}}, {"added": {"name": "player week", "object": "Kenny Stills, 2018, 1, 22.6"}}, {"added": {"name": "player week", "object": "Chris Ivory, 2018, 1, 0.3"}}, {"added": {"name": "player week", "object": "Taywan Taylor, 2018, 1, 0.0"}}, {"added": {"name": "player week", "object": "Derrius Guice, 2018, 1, 0.0"}}]	3	1
138	2018-11-08 15:05:45.228203+00	62	Drew Brees, QB	1	[{"added": {}}]	1	1
139	2018-11-08 15:08:27.06723+00	63	Golden Tate, WR	1	[{"added": {}}]	1	1
140	2018-11-08 15:11:44.721718+00	64	Sammy Watkins, WR	1	[{"added": {}}]	1	1
141	2018-11-08 15:13:45.919729+00	65	Derrick Henry, RB	1	[{"added": {}}]	1	1
142	2018-11-08 15:14:08.531495+00	66	Lamar Miller, RB	1	[{"added": {}}]	1	1
143	2018-11-08 15:14:44.582314+00	67	Zach Ertz, TE	1	[{"added": {}}]	1	1
144	2018-11-08 15:15:09.518196+00	68	Cooper Kupp, WR	1	[{"added": {}}]	1	1
145	2018-11-08 15:15:27.486756+00	69	Justin Tucker, K	1	[{"added": {}}]	1	1
146	2018-11-08 15:15:37.418678+00	27	BAL	1	[{"added": {}}]	20	1
147	2018-11-08 15:15:54.093096+00	70	Los Angeles Rams, DST	1	[{"added": {}}]	1	1
148	2018-11-08 15:16:04.119655+00	5	Jared, 2018, 1	1	[{"added": {}}, {"added": {"name": "player week", "object": "Drew Brees, 2018, 1, 31.56"}}, {"added": {"name": "player week", "object": "Golden Tate, 2018, 1, 13.9"}}, {"added": {"name": "player week", "object": "Sammy Watkins, 2018, 1, 2.1"}}, {"added": {"name": "player week", "object": "Derrick Henry, 2018, 1, 3.1"}}, {"added": {"name": "player week", "object": "Lamar Miller, 2018, 1, 10.9"}}, {"added": {"name": "player week", "object": "Zach Ertz, 2018, 1, 4.8"}}, {"added": {"name": "player week", "object": "Cooper Kupp, 2018, 1, 12.8"}}, {"added": {"name": "player week", "object": "Justin Tucker, 2018, 1, 12.0"}}, {"added": {"name": "player week", "object": "Los Angeles Rams, 2018, 1, 17.0"}}]	3	1
149	2018-11-08 15:17:20.142405+00	71	Demaryius Thomas, WR	1	[{"added": {}}]	1	1
150	2018-11-08 15:17:43.500572+00	72	Duke Johnson Jr, RB	1	[{"added": {}}]	1	1
151	2018-11-08 15:18:11.738243+00	73	Matt Ryan, QB	1	[{"added": {}}]	1	1
152	2018-11-08 15:18:34.275262+00	74	George Kittle, TE	1	[{"added": {}}]	1	1
153	2018-11-08 15:19:05.085527+00	75	Josh Gordon, WR	1	[{"added": {}}]	1	1
154	2018-11-08 15:19:31.106324+00	76	Los Angeles Chargers, DST	1	[{"added": {}}]	1	1
155	2018-11-08 15:19:45.431846+00	5	Jared, 2018, 1	2	[{"added": {"name": "player week", "object": "Demaryius Thomas, 2018, 1, 12.3"}}, {"added": {"name": "player week", "object": "Duke Johnson Jr, 2018, 1, 2.5"}}, {"added": {"name": "player week", "object": "Matt Ryan, 2018, 1, 9.84"}}, {"added": {"name": "player week", "object": "George Kittle, 2018, 1, 9.0"}}, {"added": {"name": "player week", "object": "Josh Gordon, 2018, 1, 7.7"}}, {"added": {"name": "player week", "object": "Los Angeles Chargers, 2018, 1, -3.0"}}]	3	1
156	2018-11-08 15:24:15.035104+00	77	Ben Roethlisberger, QB	1	[{"added": {}}]	1	1
157	2018-11-08 15:24:32.072488+00	78	Chris Hogan, WR	1	[{"added": {}}]	1	1
158	2018-11-08 15:24:50.193788+00	79	Allen Robinson II, WR	1	[{"added": {}}]	1	1
159	2018-11-08 15:25:02.16929+00	28	CHI	1	[{"added": {}}]	20	1
160	2018-11-08 15:25:23.827735+00	80	Christian McCaffrey, RB	1	[{"added": {}}]	1	1
161	2018-11-08 15:25:45.716837+00	81	Devonta Freeman, RB	1	[{"added": {}}]	1	1
162	2018-11-08 15:26:14.315985+00	82	Jordan Reed, TE	1	[{"added": {}}]	1	1
163	2018-11-08 15:26:34.896102+00	83	Alex Collins, RB	1	[{"added": {}}]	1	1
164	2018-11-08 15:26:58.247275+00	84	Robbie Gould, K	1	[{"added": {}}]	1	1
165	2018-11-08 15:27:19.990235+00	85	Denver, DST	1	[{"added": {}}]	1	1
166	2018-11-08 15:27:27.850647+00	6	Ross, 2018, 1	1	[{"added": {}}, {"added": {"name": "player week", "object": "Ben Roethlisberger, 2018, 1, 12.0"}}, {"added": {"name": "player week", "object": "Chris Hogan, 2018, 1, 1.1"}}, {"added": {"name": "player week", "object": "Allen Robinson II, 2018, 1, 6.1"}}, {"added": {"name": "player week", "object": "Christian McCaffrey, 2018, 1, 7.5"}}, {"added": {"name": "player week", "object": "Devonta Freeman, 2018, 1, 5.0"}}, {"added": {"name": "player week", "object": "Jordan Reed, 2018, 1, 10.8"}}, {"added": {"name": "player week", "object": "Alex Collins, 2018, 1, 5.9"}}, {"added": {"name": "player week", "object": "Robbie Gould, 2018, 1, 11.0"}}, {"added": {"name": "player week", "object": "Denver, 2018, 1, 12.0"}}]	3	1
167	2018-11-08 15:28:03.901304+00	86	Marquise Goodwin, WR	1	[{"added": {}}]	1	1
168	2018-11-08 15:28:24.524956+00	87	Carson Wentz, QB	1	[{"added": {}}]	1	1
169	2018-11-08 15:28:45.463646+00	88	Michael Crabtree, WR	1	[{"added": {}}]	1	1
170	2018-11-08 15:29:07.560924+00	89	Jack Doyle, TE	1	[{"added": {}}]	1	1
171	2018-11-08 15:29:33.776635+00	90	Peyton Barber, RB	1	[{"added": {}}]	1	1
172	2018-11-08 15:30:24.54023+00	91	Rishard Matthews, WR	1	[{"added": {}}]	1	1
173	2018-11-08 15:30:57.099689+00	6	Ross, 2018, 1	2	[{"added": {"name": "player week", "object": "Marquise Goodwin, 2018, 1, 0.0"}}, {"added": {"name": "player week", "object": "Carson Wentz, 2018, 1, 0.0"}}, {"added": {"name": "player week", "object": "Michael Crabtree, 2018, 1, 9.8"}}, {"added": {"name": "player week", "object": "Jack Doyle, 2018, 1, 4.0"}}, {"added": {"name": "player week", "object": "Peyton Barber, 2018, 1, 6.9"}}, {"added": {"name": "player week", "object": "Rishard Matthews, 2018, 1, 0.0"}}]	3	1
174	2018-11-08 15:32:11.737105+00	92	Matthew Stafford, QB	1	[{"added": {}}]	1	1
175	2018-11-08 15:32:35.296002+00	93	Antonio Brown, WR	1	[{"added": {}}]	1	1
176	2018-11-08 15:32:59.821951+00	94	Stefon Diggs, WR	1	[{"added": {}}]	1	1
177	2018-11-08 15:33:14.033098+00	29	MIN	1	[{"added": {}}]	20	1
178	2018-11-08 15:33:30.006415+00	95	Joe Mixon, RB	1	[{"added": {}}]	1	1
179	2018-11-08 15:33:54.721347+00	96	Jordan Wilkins, RB	1	[{"added": {}}]	1	1
180	2018-11-08 15:34:25.348471+00	97	Trey Burton, TE	1	[{"added": {}}]	1	1
181	2018-11-08 15:34:46.188742+00	98	Robby Anderson, WR	1	[{"added": {}}]	1	1
182	2018-11-08 15:35:12.210552+00	99	Stephen Gostkowski, K	1	[{"added": {}}]	1	1
183	2018-11-08 15:35:32.748678+00	100	Philadelphia, DST	1	[{"added": {}}]	1	1
184	2018-11-08 15:35:43.177956+00	7	Hunter, 2018, 1	1	[{"added": {}}, {"added": {"name": "player week", "object": "Matthew Stafford, 2018, 1, 12.04"}}, {"added": {"name": "player week", "object": "Antonio Brown, 2018, 1, 15.3"}}, {"added": {"name": "player week", "object": "Stefon Diggs, 2018, 1, 11.1"}}, {"added": {"name": "player week", "object": "Joe Mixon, 2018, 1, 20.9"}}, {"added": {"name": "player week", "object": "Jordan Wilkins, 2018, 1, 6.1"}}, {"added": {"name": "player week", "object": "Trey Burton, 2018, 1, 1.5"}}, {"added": {"name": "player week", "object": "Robby Anderson, 2018, 1, 9.2"}}, {"added": {"name": "player week", "object": "Stephen Gostkowski, 2018, 1, 9.0"}}, {"added": {"name": "player week", "object": "Philadelphia, 2018, 1, 10.0"}}]	3	1
185	2018-11-08 15:36:20.003989+00	101	Le'Veon Bell, RB	1	[{"added": {}}]	1	1
190	2018-11-08 15:37:46.518037+00	106	Jeremy Hill, RB	1	[{"added": {}}]	1	1
191	2018-11-08 15:37:59.884694+00	7	Hunter, 2018, 1	2	[{"added": {"name": "player week", "object": "Le'Veon Bell, 2018, 1, 0.0"}}, {"added": {"name": "player week", "object": "Mark Ingram, 2018, 1, 0.0"}}, {"added": {"name": "player week", "object": "Dak Prescott, 2018, 1, 8.7"}}, {"added": {"name": "player week", "object": "Charles Clay, 2018, 1, 0.0"}}, {"added": {"name": "player week", "object": "Tyler Lockett, 2018, 1, 11.9"}}, {"added": {"name": "player week", "object": "Jeremy Hill, 2018, 1, 3.1"}}]	3	1
192	2018-11-08 15:39:35.979406+00	107	Deshaun Watson, QB	1	[{"added": {}}]	1	1
193	2018-11-08 15:39:49.231619+00	108	Amari Cooper, WR	1	[{"added": {}}]	1	1
194	2018-11-08 15:40:13.158101+00	109	Davante Adams, WR	1	[{"added": {}}]	1	1
195	2018-11-08 15:40:29.140291+00	30	GB	1	[{"added": {}}]	20	1
196	2018-11-08 15:40:49.19786+00	110	Leonard Fournette, RB	1	[{"added": {}}]	1	1
197	2018-11-08 15:41:04.415798+00	31	JAX	1	[{"added": {}}]	20	1
198	2018-11-08 15:41:25.551873+00	111	Royce Freeman, RB	1	[{"added": {}}]	1	1
199	2018-11-08 15:41:51.635757+00	112	Evan Engram, TE	1	[{"added": {}}]	1	1
200	2018-11-08 15:42:13.566319+00	113	Chris Carson, RB	1	[{"added": {}}]	1	1
201	2018-11-08 15:42:38.402455+00	114	Greg Zuerlein, K	1	[{"added": {}}]	1	1
202	2018-11-08 15:42:57.392381+00	115	Green Bay, DST	1	[{"added": {}}]	1	1
203	2018-11-08 15:43:20.983138+00	8	Trevor, 2018, 1	1	[{"added": {}}, {"added": {"name": "player week", "object": "Deshaun Watson, 2018, 1, 12.04"}}, {"added": {"name": "player week", "object": "Amari Cooper, 2018, 1, 1.8"}}, {"added": {"name": "player week", "object": "Davante Adams, 2018, 1, 14.8"}}, {"added": {"name": "player week", "object": "Leonard Fournette, 2018, 1, 5.5"}}, {"added": {"name": "player week", "object": "Royce Freeman, 2018, 1, 7.1"}}, {"added": {"name": "player week", "object": "Evan Engram, 2018, 1, 1.8"}}, {"added": {"name": "player week", "object": "Chris Carson, 2018, 1, 5.9"}}, {"added": {"name": "player week", "object": "Greg Zuerlein, 2018, 1, 17.0"}}, {"added": {"name": "player week", "object": "Green Bay, 2018, 1, 7.0"}}]	3	1
204	2018-11-08 15:43:31.663134+00	8	Trevor, 2018, 1	2	[{"changed": {"name": "player week", "object": "Green Bay, 2018, 1, 7.0", "fields": ["nfl_team"]}}]	3	1
205	2018-11-08 15:43:48.536531+00	116	Jarvis Landry, WR	1	[{"added": {}}]	1	1
206	2018-11-08 15:44:08.241973+00	117	Tyler Eifert, TE	1	[{"added": {}}]	1	1
207	2018-11-08 15:44:36.453973+00	118	Tevin Coleman, RB	1	[{"added": {}}]	1	1
208	2018-11-08 15:44:56.187377+00	119	Patrick Mahomes, QB	1	[{"added": {}}]	1	1
209	2018-11-08 15:45:19.674156+00	120	Latavius Murray, RB	1	[{"added": {}}]	1	1
210	2018-11-08 15:45:40.621611+00	121	Keelan Cole, WR	1	[{"added": {}}]	1	1
211	2018-11-08 15:45:52.917486+00	8	Trevor, 2018, 1	2	[{"added": {"name": "player week", "object": "Jarvis Landry, 2018, 1, 10.6"}}, {"added": {"name": "player week", "object": "Tyler Eifert, 2018, 1, 4.4"}}, {"added": {"name": "player week", "object": "Tevin Coleman, 2018, 1, 10.5"}}, {"added": {"name": "player week", "object": "Patrick Mahomes, 2018, 1, 28.34"}}, {"added": {"name": "player week", "object": "Latavius Murray, 2018, 1, 4.2"}}, {"added": {"name": "player week", "object": "Keelan Cole, 2018, 1, 5.4"}}]	3	1
212	2018-11-08 18:11:51.015704+00	122	Philip Rivers, QB	1	[{"added": {}}]	1	1
213	2018-11-08 18:12:13.116297+00	123	Doug Baldwin, WR	1	[{"added": {}}]	1	1
214	2018-11-08 18:12:35.661357+00	124	Larry Fitzgerald, WR	1	[{"added": {}}]	1	1
215	2018-11-08 18:12:47.575468+00	32	ARI	1	[{"added": {}}]	20	1
216	2018-11-08 18:12:56.070044+00	9	Ean, 2018, 1	1	[{"added": {}}, {"added": {"name": "player week", "object": "Philip Rivers, 2018, 1, 29.96"}}, {"added": {"name": "player week", "object": "Doug Baldwin, 2018, 1, 0.0"}}, {"added": {"name": "player week", "object": "Larry Fitzgerald, 2018, 1, 7.6"}}]	3	1
217	2018-11-08 18:13:37.246094+00	125	Carlos Hyde, RB	1	[{"added": {}}]	1	1
218	2018-11-08 18:14:02.111629+00	126	Rex Burkhead, RB	1	[{"added": {}}]	1	1
219	2018-11-08 18:14:24.180614+00	127	Travis Kelce, TE	1	[{"added": {}}]	1	1
220	2018-11-08 18:14:46.611287+00	128	Chris Thompson, RB	1	[{"added": {}}]	1	1
221	2018-11-08 18:15:13.747962+00	129	Harrison Butker, K	1	[{"added": {}}]	1	1
222	2018-11-08 18:15:30.044497+00	130	Baltimore, DST	1	[{"added": {}}]	1	1
223	2018-11-08 18:15:41.029569+00	9	Ean, 2018, 1	2	[{"added": {"name": "player week", "object": "Carlos Hyde, 2018, 1, 12.5"}}, {"added": {"name": "player week", "object": "Rex Burkhead, 2018, 1, 6.9"}}, {"added": {"name": "player week", "object": "Travis Kelce, 2018, 1, 0.6"}}, {"added": {"name": "player week", "object": "Chris Thompson, 2018, 1, 18.8"}}, {"added": {"name": "player week", "object": "Harrison Butker, 2018, 1, 9.0"}}, {"added": {"name": "player week", "object": "Baltimore, 2018, 1, 17.0"}}]	3	1
224	2018-11-08 18:16:20.216505+00	131	Matt Breida, RB	1	[{"added": {}}]	1	1
225	2018-11-08 18:16:42.473242+00	132	Devin Funchess, WR	1	[{"added": {}}]	1	1
226	2018-11-08 18:17:44.806686+00	133	Emmanuel Sanders, WR	1	[{"added": {}}]	1	1
227	2018-11-08 18:18:16.713875+00	134	Allen Hurns, WR	1	[{"added": {}}]	1	1
228	2018-11-08 18:18:31.186741+00	135	Jimmy Garoppolo, QB	1	[{"added": {}}]	1	1
229	2018-11-08 18:19:02.971557+00	136	James White, RB	1	[{"added": {}}]	1	1
230	2018-11-08 18:19:20.026679+00	137	Jerick McKinnon, RB	1	[{"added": {}}]	1	1
231	2018-11-08 18:19:59.964891+00	9	Ean, 2018, 1	2	[{"added": {"name": "player week", "object": "Matt Breida, 2018, 1, 5.1"}}, {"added": {"name": "player week", "object": "Devin Funchess, 2018, 1, 4.1"}}, {"added": {"name": "player week", "object": "Emmanuel Sanders, 2018, 1, 19.5"}}, {"added": {"name": "player week", "object": "Allen Hurns, 2018, 1, 2.0"}}, {"added": {"name": "player week", "object": "Jimmy Garoppolo, 2018, 1, 12.04"}}, {"added": {"name": "player week", "object": "James White, 2018, 1, 11.6"}}, {"added": {"name": "player week", "object": "Jerick McKinnon, 2018, 1, 0.0"}}]	3	1
232	2018-11-08 18:23:21.771097+00	138	Aaron Rodgers, QB	1	[{"added": {}}]	1	1
233	2018-11-08 18:23:40.94329+00	139	T.Y. Hilton, WR	1	[{"added": {}}]	1	1
234	2018-11-08 18:24:07.208247+00	140	Adam Thielen, WR	1	[{"added": {}}]	1	1
235	2018-11-08 18:24:30.442802+00	141	Saquon Barkley, RB	1	[{"added": {}}]	1	1
236	2018-11-08 18:24:43.33004+00	10	Basil, 2018, 1	1	[{"added": {}}, {"added": {"name": "player week", "object": "Aaron Rodgers, 2018, 1, 24.94"}}, {"added": {"name": "player week", "object": "T.Y. Hilton, 2018, 1, 10.6"}}, {"added": {"name": "player week", "object": "Adam Thielen, 2018, 1, 10.2"}}, {"added": {"name": "player week", "object": "Saquon Barkley, 2018, 1, 18.8"}}]	3	1
237	2018-11-08 18:25:15.255051+00	142	Melvin Gordon III, RB	1	[{"added": {}}]	1	1
238	2018-11-08 18:25:33.597873+00	143	Jimmy Graham, TE	1	[{"added": {}}]	1	1
239	2018-11-08 18:25:54.103855+00	144	Tarik Cohen, RB	1	[{"added": {}}]	1	1
240	2018-11-08 18:26:21.884339+00	145	Daniel Carlson, K	1	[{"added": {}}]	1	1
241	2018-11-08 18:26:49.327217+00	146	Pittsburgh, DST	1	[{"added": {}}]	1	1
242	2018-11-08 18:26:57.985165+00	10	Basil, 2018, 1	2	[{"added": {"name": "player week", "object": "Melvin Gordon III, 2018, 1, 18.6"}}, {"added": {"name": "player week", "object": "Jimmy Graham, 2018, 1, 0.8"}}, {"added": {"name": "player week", "object": "Tarik Cohen, 2018, 1, 4.1"}}, {"added": {"name": "player week", "object": "Daniel Carlson, 2018, 1, 7.0"}}, {"added": {"name": "player week", "object": "Pittsburgh, 2018, 1, 11.0"}}]	3	1
243	2018-11-08 18:27:49.14367+00	147	Will Fuller V, WR	1	[{"added": {}}]	1	1
244	2018-11-08 18:28:06.381975+00	148	Jamison Crowder, WR	1	[{"added": {}}]	1	1
245	2018-11-08 18:28:29.437803+00	149	D.J. Moore, WR	1	[{"added": {}}]	1	1
246	2018-11-08 18:28:51.294863+00	150	Marcus Mariota, QB	1	[{"added": {}}]	1	1
247	2018-11-08 18:29:14.697659+00	151	Dez Bryant, WR	1	[{"added": {}}]	1	1
248	2018-11-08 18:29:29.63597+00	152	Anthony Miller, WR	1	[{"added": {}}]	1	1
249	2018-11-08 18:29:40.889936+00	10	Basil, 2018, 1	2	[{"added": {"name": "player week", "object": "Will Fuller V, 2018, 1, 0.0"}}, {"added": {"name": "player week", "object": "Jamison Crowder, 2018, 1, 3.2"}}, {"added": {"name": "player week", "object": "D.J. Moore, 2018, 1, 0.3"}}, {"added": {"name": "player week", "object": "Marcus Mariota, 2018, 1, 3.62"}}, {"added": {"name": "player week", "object": "Dez Bryant, 2018, 1, 0.0"}}, {"added": {"name": "player week", "object": "Anthony Miller, 2018, 1, 1.4"}}]	3	1
250	2018-11-08 18:38:59.775574+00	153	Andy Dalton, QB	1	[{"added": {}}]	1	1
251	2018-11-08 18:39:25.016546+00	154	Michael Thomas, WR	1	[{"added": {}}]	1	1
252	2018-11-08 18:45:34.53129+00	155	Keenan Allen, WR	1	[{"added": {}}]	1	1
253	2018-11-08 18:45:56.931906+00	156	Dalvin Cook, RB	1	[{"added": {}}]	1	1
254	2018-11-08 18:46:35.402493+00	157	Kenyan Drake, RB	1	[{"added": {}}]	1	1
255	2018-11-08 18:46:56.829533+00	158	Kyle Rudolph, TE	1	[{"added": {}}]	1	1
256	2018-11-08 18:47:47.497914+00	159	Marvin Jones Jr., WR	1	[{"added": {}}]	1	1
257	2018-11-08 18:51:42.739713+00	160	Wil Lutz, K	1	[{"added": {}}]	1	1
258	2018-11-08 18:52:00.235388+00	161	Minnesota, DST	1	[{"added": {}}]	1	1
259	2018-11-08 18:52:11.522303+00	11	Chaz, 2018, 1	1	[{"added": {}}, {"added": {"name": "player week", "object": "Andy Dalton, 2018, 1, 17.52"}}, {"added": {"name": "player week", "object": "Michael Thomas, 2018, 1, 22.0"}}, {"added": {"name": "player week", "object": "Keenan Allen, 2018, 1, 16.8"}}, {"added": {"name": "player week", "object": "Dalvin Cook, 2018, 1, 7.5"}}, {"added": {"name": "player week", "object": "Kenyan Drake, 2018, 1, 6.6"}}, {"added": {"name": "player week", "object": "Kyle Rudolph, 2018, 1, 7.1"}}, {"added": {"name": "player week", "object": "Marvin Jones Jr., 2018, 1, 5.4"}}, {"added": {"name": "player week", "object": "Wil Lutz, 2018, 1, 6.0"}}, {"added": {"name": "player week", "object": "Minnesota, 2018, 1, 18.0"}}]	3	1
260	2018-11-08 18:54:01.468676+00	162	Russell Wilson, QB	1	[{"added": {}}]	1	1
261	2018-11-08 18:56:19.283075+00	163	C.J. Anderson, RB	1	[{"added": {}}]	1	1
262	2018-11-08 18:56:40.561458+00	164	Ty Montgomery, RB	1	[{"added": {}}]	1	1
263	2018-11-08 18:56:52.488315+00	165	Jordy Nelson, WR	1	[{"added": {}}]	1	1
264	2018-11-08 18:57:10.67675+00	166	Cameron Brate, TE	1	[{"added": {}}]	1	1
265	2018-11-08 18:57:23.326025+00	167	Alfred Morris, RB	1	[{"added": {}}]	1	1
266	2018-11-08 19:02:17.209747+00	11	Chaz, 2018, 1	2	[{"added": {"name": "player week", "object": "Russell Wilson, 2018, 1, 22.42"}}, {"added": {"name": "player week", "object": "C.J. Anderson, 2018, 1, 3.5"}}, {"added": {"name": "player week", "object": "Ty Montgomery, 2018, 1, 2.8"}}, {"added": {"name": "player week", "object": "Jordy Nelson, 2018, 1, 2.3"}}, {"added": {"name": "player week", "object": "Cameron Brate, 2018, 1, 0.0"}}, {"added": {"name": "player week", "object": "Alfred Morris, 2018, 1, 1.8"}}]	3	1
267	2018-11-08 19:12:10.310557+00	12	Sawyer, 2018, 1	1	[{"added": {}}]	3	1
268	2018-11-08 19:21:31.68642+00	168	Cam Newton, QB	1	[{"added": {}}]	1	1
269	2018-11-08 19:24:14.696642+00	169	JuJu Smith-Schuster, WR	1	[{"added": {}}]	1	1
270	2018-11-08 19:24:39.017766+00	170	Chris Godwin, WR	1	[{"added": {}}]	1	1
271	2018-11-08 19:25:03.603519+00	171	David Johnson, RB	1	[{"added": {}}]	1	1
272	2018-11-08 19:25:31.019793+00	172	Jordan Howard, RB	1	[{"added": {}}]	1	1
273	2018-11-08 19:26:02.797205+00	173	Greg Olsen, TE	1	[{"added": {}}]	1	1
274	2018-11-08 19:26:30.947794+00	174	Jamaal Williams, RB	1	[{"added": {}}]	1	1
275	2018-11-08 19:26:55.115786+00	175	Matt Prater, K	1	[{"added": {}}]	1	1
276	2018-11-08 19:27:31.619558+00	176	Jacksonville, DST	1	[{"added": {}}]	1	1
277	2018-11-08 19:27:41.778913+00	12	Sawyer, 2018, 1	2	[{"added": {"name": "player week", "object": "Cam Newton, 2018, 1, 18.24"}}, {"added": {"name": "player week", "object": "JuJu Smith-Schuster, 2018, 1, 11.9"}}, {"added": {"name": "player week", "object": "Chris Godwin, 2018, 1, 10.1"}}, {"added": {"name": "player week", "object": "David Johnson, 2018, 1, 12.7"}}, {"added": {"name": "player week", "object": "Jordan Howard, 2018, 1, 10.7"}}, {"added": {"name": "player week", "object": "Greg Olsen, 2018, 1, 3.3"}}, {"added": {"name": "player week", "object": "Jamaal Williams, 2018, 1, 4.7"}}, {"added": {"name": "player week", "object": "Matt Prater, 2018, 1, 5.0"}}, {"added": {"name": "player week", "object": "Jacksonville, 2018, 1, 13.0"}}]	3	1
278	2018-11-08 19:30:08.026491+00	177	Randall Cobb, WR	1	[{"added": {}}]	1	1
279	2018-11-08 19:30:23.390876+00	178	Kirk Cousins, QB	1	[{"added": {}}]	1	1
280	2018-11-08 19:30:35.581559+00	179	Aaron Jones, RB	1	[{"added": {}}]	1	1
281	2018-11-08 19:30:47.258145+00	180	Christian Kirk, WR	1	[{"added": {}}]	1	1
282	2018-11-08 19:31:01.128548+00	181	Bilal Powell, RB	1	[{"added": {}}]	1	1
283	2018-11-08 19:31:11.037538+00	182	O.J. Howard, TE	1	[{"added": {}}]	1	1
284	2018-11-08 19:33:38.652448+00	12	Sawyer, 2018, 1	2	[{"added": {"name": "player week", "object": "Randall Cobb, 2018, 1, 20.2"}}, {"added": {"name": "player week", "object": "Kirk Cousins, 2018, 1, 20.36"}}, {"added": {"name": "player week", "object": "Aaron Jones, 2018, 1, 0.0"}}, {"added": {"name": "player week", "object": "Christian Kirk, 2018, 1, 0.0"}}, {"added": {"name": "player week", "object": "Bilal Powell, 2018, 1, 6.5"}}, {"added": {"name": "player week", "object": "O.J. Howard, 2018, 1, 5.4"}}]	3	1
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
31	Andrew Luck	QB	t
32	A.J. Green	WR	t
33	Brandin Cooks	WR	t
34	Ezekiel Elliott	RB	t
35	Alvin Kamara	RB	t
36	David Njoku	TE	t
37	Kerryon Johnson	RB	t
38	Matt Bryant	K	t
39	Carolina	DST	t
40	Rashaad Penny	RB	t
41	Sony Michel	RB	t
42	Alshon Jeffery	WR	t
43	Kenny Golladay	WR	t
44	Mike Williams	WR	t
45	Case Keenum	QB	t
46	Jared Goff	QB	t
47	Julio Jones	WR	t
48	Robert Woods	WR	t
49	Kareem Hunt	RB	t
50	Jay Ajayi	RB	t
51	Benjamin Watson	TE	t
52	Isaiah Crowell	RB	t
53	Jake Elliott	K	t
54	New Orleans	DST	t
55	Brandon Marshall	WR	t
56	Nick Chubb	RB	t
57	Calvin Ridley	WR	t
58	Kenny Stills	WR	t
59	Chris Ivory	RB	t
60	Taywan Taylor	WR	t
61	Derrius Guice	RB	t
62	Drew Brees	QB	t
63	Golden Tate	WR	t
64	Sammy Watkins	WR	t
65	Derrick Henry	RB	t
66	Lamar Miller	RB	t
67	Zach Ertz	TE	t
68	Cooper Kupp	WR	t
69	Justin Tucker	K	t
70	Los Angeles Rams	DST	t
71	Demaryius Thomas	WR	t
72	Duke Johnson Jr	RB	t
73	Matt Ryan	QB	t
74	George Kittle	TE	t
75	Josh Gordon	WR	t
76	Los Angeles Chargers	DST	t
77	Ben Roethlisberger	QB	t
78	Chris Hogan	WR	t
79	Allen Robinson II	WR	t
80	Christian McCaffrey	RB	t
81	Devonta Freeman	RB	t
82	Jordan Reed	TE	t
83	Alex Collins	RB	t
84	Robbie Gould	K	t
85	Denver	DST	t
86	Marquise Goodwin	WR	t
87	Carson Wentz	QB	t
88	Michael Crabtree	WR	t
89	Jack Doyle	TE	t
90	Peyton Barber	RB	t
91	Rishard Matthews	WR	t
92	Matthew Stafford	QB	t
93	Antonio Brown	WR	t
94	Stefon Diggs	WR	t
95	Joe Mixon	RB	t
96	Jordan Wilkins	RB	t
97	Trey Burton	TE	t
98	Robby Anderson	WR	t
99	Stephen Gostkowski	K	t
100	Philadelphia	DST	t
101	Le'Veon Bell	RB	t
102	Mark Ingram	RB	t
103	Dak Prescott	QB	t
104	Charles Clay	TE	t
105	Tyler Lockett	WR	t
106	Jeremy Hill	RB	t
107	Deshaun Watson	QB	t
108	Amari Cooper	WR	t
109	Davante Adams	WR	t
110	Leonard Fournette	RB	t
111	Royce Freeman	RB	t
112	Evan Engram	TE	t
113	Chris Carson	RB	t
114	Greg Zuerlein	K	t
115	Green Bay	DST	t
116	Jarvis Landry	WR	t
117	Tyler Eifert	TE	t
118	Tevin Coleman	RB	t
119	Patrick Mahomes	QB	t
120	Latavius Murray	RB	t
121	Keelan Cole	WR	t
122	Philip Rivers	QB	t
123	Doug Baldwin	WR	t
124	Larry Fitzgerald	WR	t
125	Carlos Hyde	RB	t
126	Rex Burkhead	RB	t
127	Travis Kelce	TE	t
128	Chris Thompson	RB	t
129	Harrison Butker	K	t
130	Baltimore	DST	t
131	Matt Breida	RB	t
132	Devin Funchess	WR	t
133	Emmanuel Sanders	WR	t
134	Allen Hurns	WR	t
135	Jimmy Garoppolo	QB	t
136	James White	RB	t
137	Jerick McKinnon	RB	t
138	Aaron Rodgers	QB	t
139	T.Y. Hilton	WR	t
140	Adam Thielen	WR	t
141	Saquon Barkley	RB	t
142	Melvin Gordon III	RB	t
143	Jimmy Graham	TE	t
144	Tarik Cohen	RB	t
145	Daniel Carlson	K	t
146	Pittsburgh	DST	t
147	Will Fuller V	WR	t
148	Jamison Crowder	WR	t
149	D.J. Moore	WR	t
150	Marcus Mariota	QB	t
151	Dez Bryant	WR	t
152	Anthony Miller	WR	t
153	Andy Dalton	QB	t
154	Michael Thomas	WR	t
155	Keenan Allen	WR	t
156	Dalvin Cook	RB	t
157	Kenyan Drake	RB	t
158	Kyle Rudolph	TE	t
159	Marvin Jones Jr.	WR	t
160	Wil Lutz	K	t
161	Minnesota	DST	t
162	Russell Wilson	QB	t
163	C.J. Anderson	RB	t
164	Ty Montgomery	RB	t
165	Jordy Nelson	WR	t
166	Cameron Brate	TE	t
167	Alfred Morris	RB	t
168	Cam Newton	QB	t
169	JuJu Smith-Schuster	WR	t
170	Chris Godwin	WR	t
171	David Johnson	RB	t
172	Jordan Howard	RB	t
173	Greg Olsen	TE	t
174	Jamaal Williams	RB	t
175	Matt Prater	K	t
176	Jacksonville	DST	t
177	Randall Cobb	WR	t
178	Kirk Cousins	QB	t
179	Aaron Jones	RB	t
180	Christian Kirk	WR	t
181	Bilal Powell	RB	t
182	O.J. Howard	TE	t
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
31	2018	1	20.4600000000000009	31	3	1	10
32	2018	1	13.1999999999999993	32	3	3	19
33	2018	1	9.30000000000000071	33	3	3	4
34	2018	1	14.5999999999999996	34	3	2	12
35	2018	1	34.1000000000000014	35	3	2	20
36	2018	1	1.30000000000000004	36	3	4	21
37	2018	1	3.70000000000000018	37	3	5	8
38	2018	1	8	38	3	7	22
39	2018	1	12	39	3	6	7
40	2018	1	4.29999999999999982	40	3	8	23
41	2018	1	0	41	3	8	5
42	2018	1	0	42	3	8	17
43	2018	1	11.4000000000000004	43	3	8	8
44	2018	1	8.09999999999999964	44	3	8	18
45	2018	1	22.1600000000000001	45	3	8	24
46	2018	1	17.2199999999999989	46	4	1	4
47	2018	1	18	47	4	3	22
48	2018	1	4.29999999999999982	48	4	3	4
49	2018	1	4.90000000000000036	49	4	2	15
50	2018	1	20.1999999999999993	50	4	2	17
51	2018	1	4.40000000000000036	51	4	4	20
52	2018	1	22.1999999999999993	52	4	5	25
53	2018	1	4	53	4	7	17
54	2018	1	-4	54	4	6	20
55	2018	1	10.5999999999999996	55	4	8	23
56	2018	1	2.10000000000000009	56	4	8	21
57	2018	1	0	57	4	8	22
58	2018	1	22.6000000000000014	58	4	8	26
59	2018	1	0.299999999999999989	59	4	8	11
60	2018	1	0	60	4	8	2
61	2018	1	0	61	4	9	1
62	2018	1	31.5599999999999987	62	5	1	20
63	2018	1	13.9000000000000004	63	5	3	8
64	2018	1	2.10000000000000009	64	5	3	15
65	2018	1	3.10000000000000009	65	5	2	2
66	2018	1	10.9000000000000004	66	5	2	3
67	2018	1	4.79999999999999982	67	5	4	17
68	2018	1	12.8000000000000007	68	5	5	4
69	2018	1	12	69	5	7	27
70	2018	1	17	70	5	6	4
71	2018	1	12.3000000000000007	71	5	8	24
72	2018	1	2.5	72	5	8	21
73	2018	1	9.83999999999999986	73	5	8	22
74	2018	1	9	74	5	8	16
75	2018	1	7.70000000000000018	75	5	8	21
76	2018	1	-3	76	5	8	18
77	2018	1	12	77	6	1	6
78	2018	1	1.10000000000000009	78	6	3	5
79	2018	1	6.09999999999999964	79	6	3	28
80	2018	1	7.5	80	6	2	7
81	2018	1	5	81	6	2	22
82	2018	1	10.8000000000000007	82	6	4	1
83	2018	1	5.90000000000000036	83	6	5	27
84	2018	1	11	84	6	7	16
85	2018	1	12	85	6	6	24
86	2018	1	0	86	6	8	16
87	2018	1	0	87	6	8	17
88	2018	1	9.80000000000000071	88	6	8	27
89	2018	1	4	89	6	8	10
90	2018	1	6.90000000000000036	90	6	8	13
91	2018	1	0	91	6	8	2
92	2018	1	12.0399999999999991	92	7	1	8
93	2018	1	15.3000000000000007	93	7	3	6
94	2018	1	11.0999999999999996	94	7	3	29
95	2018	1	20.8999999999999986	95	7	2	19
96	2018	1	6.09999999999999964	96	7	2	10
97	2018	1	1.5	97	7	4	28
98	2018	1	9.19999999999999929	98	7	5	25
99	2018	1	9	99	7	7	5
100	2018	1	10	100	7	6	17
101	2018	1	0	101	7	8	6
102	2018	1	0	102	7	8	20
103	2018	1	8.69999999999999929	103	7	8	12
104	2018	1	0	104	7	8	11
105	2018	1	11.9000000000000004	105	7	8	23
106	2018	1	3.10000000000000009	106	7	8	5
107	2018	1	12.0399999999999991	107	8	1	3
108	2018	1	1.80000000000000004	108	8	3	14
109	2018	1	14.8000000000000007	109	8	3	30
110	2018	1	5.5	110	8	2	31
111	2018	1	7.09999999999999964	111	8	2	24
112	2018	1	1.80000000000000004	112	8	4	9
113	2018	1	5.90000000000000036	113	8	5	23
114	2018	1	17	114	8	7	4
115	2018	1	7	115	8	6	30
116	2018	1	10.5999999999999996	116	8	8	21
117	2018	1	4.40000000000000036	117	8	8	19
118	2018	1	10.5	118	8	8	22
119	2018	1	28.3399999999999999	119	8	8	15
120	2018	1	4.20000000000000018	120	8	8	29
121	2018	1	5.40000000000000036	121	8	8	31
122	2018	1	29.9600000000000009	122	9	1	18
123	2018	1	0	123	9	3	23
124	2018	1	7.59999999999999964	124	9	3	32
125	2018	1	12.5	125	9	2	21
126	2018	1	6.90000000000000036	126	9	2	5
127	2018	1	0.599999999999999978	127	9	4	15
128	2018	1	18.8000000000000007	128	9	5	1
129	2018	1	9	129	9	7	15
130	2018	1	17	130	9	6	27
131	2018	1	5.09999999999999964	131	9	8	16
132	2018	1	4.09999999999999964	132	9	8	7
133	2018	1	19.5	133	9	8	24
134	2018	1	2	134	9	8	12
135	2018	1	12.0399999999999991	135	9	8	16
136	2018	1	11.5999999999999996	136	9	8	5
137	2018	1	0	137	9	9	16
138	2018	1	24.9400000000000013	138	10	1	30
139	2018	1	10.5999999999999996	139	10	3	10
140	2018	1	10.1999999999999993	140	10	3	29
141	2018	1	18.8000000000000007	141	10	2	9
142	2018	1	18.6000000000000014	142	10	2	18
143	2018	1	0.800000000000000044	143	10	4	30
144	2018	1	4.09999999999999964	144	10	5	28
145	2018	1	7	145	10	7	14
146	2018	1	11	146	10	6	6
147	2018	1	0	147	10	8	3
148	2018	1	3.20000000000000018	148	10	8	1
149	2018	1	0.299999999999999989	149	10	8	7
150	2018	1	3.62000000000000011	150	10	8	2
151	2018	1	0	151	10	8	\N
152	2018	1	1.39999999999999991	152	10	8	28
153	2018	1	17.5199999999999996	153	11	1	19
154	2018	1	22	154	11	3	20
155	2018	1	16.8000000000000007	155	11	3	18
156	2018	1	7.5	156	11	2	29
157	2018	1	6.59999999999999964	157	11	2	26
158	2018	1	7.09999999999999964	158	11	4	29
159	2018	1	5.40000000000000036	159	11	5	8
160	2018	1	6	160	11	7	20
161	2018	1	18	161	11	6	29
162	2018	1	22.4200000000000017	162	11	8	23
163	2018	1	3.5	163	11	8	7
164	2018	1	2.79999999999999982	164	11	8	30
165	2018	1	2.29999999999999982	165	11	8	14
166	2018	1	0	166	11	8	13
167	2018	1	1.80000000000000004	167	11	8	16
168	2018	1	18.2399999999999984	168	12	1	7
169	2018	1	11.9000000000000004	169	12	3	6
170	2018	1	10.0999999999999996	170	12	3	13
171	2018	1	12.6999999999999993	171	12	2	32
172	2018	1	10.6999999999999993	172	12	2	28
173	2018	1	3.29999999999999982	173	12	4	7
174	2018	1	4.70000000000000018	174	12	5	30
175	2018	1	5	175	12	7	8
176	2018	1	13	176	12	6	31
177	2018	1	20.1999999999999993	177	12	8	30
178	2018	1	20.3599999999999994	178	12	8	29
179	2018	1	0	179	12	8	30
180	2018	1	0	180	12	8	32
181	2018	1	6.5	181	12	8	25
182	2018	1	5.40000000000000036	182	12	8	13
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
3	2018	1	8	116.659999999999997
4	2018	1	11	91.2199999999999989
5	2018	1	7	108.159999999999997
6	2018	1	10	71.4000000000000057
7	2018	1	6	95.1400000000000006
8	2018	1	1	72.9399999999999977
9	2018	1	5	102.359999999999999
10	2018	1	3	106.040000000000006
11	2018	1	4	106.920000000000002
12	2018	1	12	89.6400000000000006
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
19	CIN	AFC	North
20	NO	NFC	South
21	CLE	AFC	North
22	ATL	NFC	South
23	SEA	NFC	West
24	DEN	AFC	West
25	NYJ	AFC	East
26	MIA	AFC	East
27	BAL	AFC	North
28	CHI	NFC	North
29	MIN	NFC	North
30	GB	NFC	North
31	JAX	AFC	South
32	ARI	NFC	West
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

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 284, true);


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

SELECT pg_catalog.setval('public.players_player_id_seq', 182, true);


--
-- Name: players_playerweek_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.players_playerweek_id_seq', 182, true);


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

SELECT pg_catalog.setval('public.teams_lineup_id_seq', 12, true);


--
-- Name: teams_lineupposition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teams_lineupposition_id_seq', 9, true);


--
-- Name: teams_nflteam_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teams_nflteam_id_seq', 32, true);


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

