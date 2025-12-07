--
-- PostgreSQL database dump
--

\restrict FVrmwetGhG2LfEBGSOrYuTOFLpS21iSuPC5BAqbru6NHim2UTztCHkkFtDaa81B

-- Dumped from database version 17.6 (Debian 17.6-1.pgdg13+1)
-- Dumped by pg_dump version 17.6 (Debian 17.6-1.pgdg13+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: apps; Type: TABLE; Schema: public; Owner: jpassano
--

CREATE TABLE public.apps (
    id integer NOT NULL,
    name character varying(255) DEFAULT ''::character varying NOT NULL,
    release character varying(255) DEFAULT ''::character varying,
    path character varying(255) DEFAULT ''::character varying,
    init character varying(255) DEFAULT ''::character varying,
    web character varying(255) DEFAULT ''::character varying,
    title character varying(255) DEFAULT ''::character varying,
    created integer DEFAULT 0 NOT NULL,
    updated integer DEFAULT 0 NOT NULL,
    description text DEFAULT ''::text,
    positioning_stmt text DEFAULT ''::text,
    logo character varying(255) DEFAULT ''::character varying,
    category character varying(255) DEFAULT ''::character varying,
    platform text[] DEFAULT '{}'::text[],
    developer character varying(255) DEFAULT ''::character varying,
    license_type character varying(255) DEFAULT ''::character varying,
    size bigint DEFAULT 0,
    compatibility text[] DEFAULT '{}'::text[],
    integration_capabilities text[] DEFAULT '{}'::text[],
    development_stack text[] DEFAULT '{}'::text[],
    api_documentation character varying(255) DEFAULT ''::character varying,
    security_features text[] DEFAULT '{}'::text[],
    regulatory_compliance text[] DEFAULT '{}'::text[],
    revenue_streams text[] DEFAULT '{}'::text[],
    customer_segments text[] DEFAULT '{}'::text[],
    channels text[] DEFAULT '{}'::text[],
    value_proposition text DEFAULT ''::text,
    pricing_tiers text[] DEFAULT '{}'::text[],
    partnerships text[] DEFAULT '{}'::text[],
    cost_structure text[] DEFAULT '{}'::text[],
    customer_relationships text[] DEFAULT '{}'::text[],
    unfair_advantage text DEFAULT ''::text,
    roadmap character varying(255) DEFAULT ''::character varying,
    version_control character varying(255) DEFAULT ''::character varying,
    error_rate integer DEFAULT 0,
    average_response_time integer DEFAULT 0,
    uptime_percentage integer DEFAULT 0,
    key_activities text[] DEFAULT '{}'::text[],
    active_users integer DEFAULT 0,
    user_retention_rate integer DEFAULT 0,
    user_acquisition_cost integer DEFAULT 0,
    churn_rate integer DEFAULT 0,
    monthly_recurring_revenue integer DEFAULT 0,
    user_feedback text[] DEFAULT '{}'::text[],
    backup_recovery_options text[] DEFAULT '{}'::text[],
    localization_support text[] DEFAULT '{}'::text[],
    accessibility_features text[] DEFAULT '{}'::text[],
    team_structure text[] DEFAULT '{}'::text[],
    data_backup_location character varying(255) DEFAULT ''::character varying,
    environmental_impact text DEFAULT ''::text,
    social_impact text DEFAULT ''::text,
    intellectual_property text[] DEFAULT '{}'::text[],
    fundings_investment integer DEFAULT 0,
    exit_strategy text DEFAULT ''::text,
    analytics_tools text[] DEFAULT '{}'::text[],
    key_metrics text[] DEFAULT '{}'::text[],
    url character varying(255) DEFAULT ''::character varying,
    landing_page character varying(255) DEFAULT ''::character varying
);


ALTER TABLE public.apps OWNER TO jpassano;

--
-- Name: apps_id_seq; Type: SEQUENCE; Schema: public; Owner: jpassano
--

ALTER TABLE public.apps ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.apps_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: companies; Type: TABLE; Schema: public; Owner: jpassano
--

CREATE TABLE public.companies (
    id integer NOT NULL,
    name character varying(255),
    created integer,
    updated integer
);


ALTER TABLE public.companies OWNER TO jpassano;

--
-- Name: companies_id_seq; Type: SEQUENCE; Schema: public; Owner: jpassano
--

ALTER TABLE public.companies ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.companies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: config; Type: TABLE; Schema: public; Owner: jpassano
--

CREATE TABLE public.config (
    id integer NOT NULL,
    name character varying(255),
    value character varying(255),
    created integer,
    updated integer
);


ALTER TABLE public.config OWNER TO jpassano;

--
-- Name: config_id_seq; Type: SEQUENCE; Schema: public; Owner: jpassano
--

ALTER TABLE public.config ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.config_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: dbs; Type: TABLE; Schema: public; Owner: jpassano
--

CREATE TABLE public.dbs (
    id integer NOT NULL,
    dsn character varying(255),
    options character varying(255),
    alt_dsn character varying(255),
    created integer,
    updated integer
);


ALTER TABLE public.dbs OWNER TO jpassano;

--
-- Name: dbs_id_seq; Type: SEQUENCE; Schema: public; Owner: jpassano
--

ALTER TABLE public.dbs ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.dbs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: dbsauth; Type: TABLE; Schema: public; Owner: jpassano
--

CREATE TABLE public.dbsauth (
    id integer NOT NULL,
    name character varying(255),
    db_id integer,
    grants character varying(255),
    user_id integer,
    group_id integer,
    grants_options integer,
    created integer,
    updated integer
);


ALTER TABLE public.dbsauth OWNER TO jpassano;

--
-- Name: dbsauth_id_seq; Type: SEQUENCE; Schema: public; Owner: jpassano
--

ALTER TABLE public.dbsauth ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.dbsauth_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: groups; Type: TABLE; Schema: public; Owner: jpassano
--

CREATE TABLE public.groups (
    id integer NOT NULL,
    name character varying(255),
    profile_id integer,
    dbsauth_id integer,
    is_public boolean DEFAULT false NOT NULL,
    leader integer,
    expiration_date timestamp with time zone,
    lan character varying(255) DEFAULT 'es'::character varying NOT NULL,
    company_id integer,
    created integer,
    updated integer
);


ALTER TABLE public.groups OWNER TO jpassano;

--
-- Name: groups_id_seq; Type: SEQUENCE; Schema: public; Owner: jpassano
--

ALTER TABLE public.groups ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: invitations; Type: TABLE; Schema: public; Owner: jpassano
--

CREATE TABLE public.invitations (
    id integer NOT NULL,
    used boolean DEFAULT false NOT NULL,
    code character varying(255),
    created integer,
    updated integer
);


ALTER TABLE public.invitations OWNER TO jpassano;

--
-- Name: invitations_id_seq; Type: SEQUENCE; Schema: public; Owner: jpassano
--

ALTER TABLE public.invitations ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.invitations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: password_requests; Type: TABLE; Schema: public; Owner: jpassano
--

CREATE TABLE public.password_requests (
    id integer NOT NULL,
    user_id integer NOT NULL,
    code character varying(255),
    used boolean DEFAULT false NOT NULL,
    date timestamp with time zone,
    created integer,
    updated integer
);


ALTER TABLE public.password_requests OWNER TO jpassano;

--
-- Name: password_requests_id_seq; Type: SEQUENCE; Schema: public; Owner: jpassano
--

ALTER TABLE public.password_requests ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.password_requests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: profiles; Type: TABLE; Schema: public; Owner: jpassano
--

CREATE TABLE public.profiles (
    id integer NOT NULL,
    name character varying(255),
    app_ids character varying(255),
    db_ids character varying(255),
    created integer,
    updated integer
);


ALTER TABLE public.profiles OWNER TO jpassano;

--
-- Name: profiles_id_seq; Type: SEQUENCE; Schema: public; Owner: jpassano
--

ALTER TABLE public.profiles ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.profiles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: security_image; Type: TABLE; Schema: public; Owner: jpassano
--

CREATE TABLE public.security_image (
    random_id integer NOT NULL,
    real_text character varying(255),
    date timestamp with time zone,
    created integer,
    updated integer
);


ALTER TABLE public.security_image OWNER TO jpassano;

--
-- Name: sessions; Type: TABLE; Schema: public; Owner: jpassano
--

CREATE TABLE public.sessions (
    id character varying(255),
    value character varying(255),
    "time" time without time zone,
    db character varying(255),
    created integer,
    updated integer
);


ALTER TABLE public.sessions OWNER TO jpassano;

--
-- Name: users; Type: TABLE; Schema: public; Owner: jpassano
--

CREATE TABLE public.users (
    id integer NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) DEFAULT ''::character varying NOT NULL,
    password character varying(255) NOT NULL,
    code character varying(255),
    active boolean DEFAULT true NOT NULL,
    last_login integer,
    last_session character varying(255) DEFAULT ''::character varying NOT NULL,
    blocked boolean DEFAULT false,
    tries integer DEFAULT 0 NOT NULL,
    last_try integer,
    email character varying(255),
    profile_id integer,
    role character varying(255) DEFAULT 'user'::character varying NOT NULL,
    group_id integer,
    dbsauth_id integer,
    activation_time integer,
    last_action timestamp with time zone,
    last_app integer,
    last_db integer,
    lan character varying(255) DEFAULT 'es'::character varying NOT NULL,
    company_id integer,
    created integer,
    updated integer
);


ALTER TABLE public.users OWNER TO jpassano;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: jpassano
--

ALTER TABLE public.users ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: security_image_idx; Type: INDEX; Schema: public; Owner: jpassano
--

CREATE UNIQUE INDEX security_image_idx ON public.security_image USING btree (real_text, date);


--
-- Name: sessions_idx; Type: INDEX; Schema: public; Owner: jpassano
--

CREATE UNIQUE INDEX sessions_idx ON public.sessions USING btree (value) INCLUDE ("time");


--
-- PostgreSQL database dump complete
--

\unrestrict FVrmwetGhG2LfEBGSOrYuTOFLpS21iSuPC5BAqbru6NHim2UTztCHkkFtDaa81B

