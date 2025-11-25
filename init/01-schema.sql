--
-- PostgreSQL database --
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
    name character varying(255) NOT NULL DEFAULT '',
    release character varying(255) DEFAULT '',
    path character varying(255) DEFAULT '',
    init character varying(255) DEFAULT '',
    web character varying(255) DEFAULT '',
    title character varying(255) DEFAULT '',
    created integer NOT NULL DEFAULT 0,
    updated integer NOT NULL DEFAULT 0,
    description text DEFAULT '',
    positioning_stmt text DEFAULT '',
    logo character varying(255) DEFAULT '',
    category character varying(255) DEFAULT '',
    platform text[] DEFAULT '{}',
    developer character varying(255) DEFAULT '',
    license_type character varying(255) DEFAULT '',
    size bigint DEFAULT 0,
    compatibility text[] DEFAULT '{}',
    integration_capabilities text[] DEFAULT '{}',
    development_stack text[] DEFAULT '{}',
    api_documentation character varying(255) DEFAULT '',
    security_features text[] DEFAULT '{}',
    regulatory_compliance text[] DEFAULT '{}',
    revenue_streams text[] DEFAULT '{}',
    customer_segments text[] DEFAULT '{}',
    channels text[] DEFAULT '{}',
    value_proposition text DEFAULT '',
    pricing_tiers text[] DEFAULT '{}',
    partnerships text[] DEFAULT '{}',
    cost_structure text[] DEFAULT '{}',
    customer_relationships text[] DEFAULT '{}',
    unfair_advantage text DEFAULT '',
    roadmap character varying(255) DEFAULT '',
    version_control character varying(255) DEFAULT '',
    error_rate integer DEFAULT 0,
    average_response_time integer DEFAULT 0,
    uptime_percentage integer DEFAULT 0,
    key_activities text[] DEFAULT '{}',
    active_users integer DEFAULT 0,
    user_retention_rate integer DEFAULT 0,
    user_acquisition_cost integer DEFAULT 0,
    churn_rate integer DEFAULT 0,
    monthly_recurring_revenue integer DEFAULT 0,
    user_feedback text[] DEFAULT '{}',
    backup_recovery_options text[] DEFAULT '{}',
    localization_support text[] DEFAULT '{}',
    accessibility_features text[] DEFAULT '{}',
    team_structure text[] DEFAULT '{}',
    data_backup_location character varying(255) DEFAULT '',
    environmental_impact text DEFAULT '',
    social_impact text DEFAULT '',
    intellectual_property text[] DEFAULT '{}',
    fundings_investment integer DEFAULT 0,
    exit_strategy text DEFAULT '',
    analytics_tools text[] DEFAULT '{}',
    key_metrics text[] DEFAULT '{}',
    url character varying(255) DEFAULT '',
    landing_page character varying(255) DEFAULT ''
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
-- BEGIN;
-- ALTER TABLE public.apps RENAME COLUMN "licensetype" TO license_type;
-- ALTER TABLE public.apps RENAME COLUMN "positioningstmt" TO positioning_stmt;
-- ALTER TABLE public.apps RENAME COLUMN "integrationcapabilities" TO integration_capabilities;
-- ALTER TABLE public.apps RENAME COLUMN "developmentstack" TO development_stack;
-- ALTER TABLE public.apps RENAME COLUMN "apidocumentation" TO api_documentation;
-- ALTER TABLE public.apps RENAME COLUMN "securityfeatures" TO security_features;
-- ALTER TABLE public.apps RENAME COLUMN "regulatorycompliance" TO regulatory_compliance;
-- ALTER TABLE public.apps RENAME COLUMN "revenuestreams" TO revenue_streams;
-- ALTER TABLE public.apps RENAME COLUMN "customersegments" TO customer_segments;
-- ALTER TABLE public.apps RENAME COLUMN "valueproposition" TO value_proposition;
-- ALTER TABLE public.apps RENAME COLUMN "pricingtiers" TO pricing_tiers;
-- ALTER TABLE public.apps RENAME COLUMN "coststructure" TO cost_structure;
-- ALTER TABLE public.apps RENAME COLUMN "customerrelationships" TO customer_relationships;
-- ALTER TABLE public.apps RENAME COLUMN "unfairadvantage" TO unfair_advantage;
-- ALTER TABLE public.apps RENAME COLUMN "versioncontrol" TO version_control;
-- ALTER TABLE public.apps RENAME COLUMN "errorrate" TO error_rate;
-- ALTER TABLE public.apps RENAME COLUMN "averageresponsetime" TO average_response_time;
-- ALTER TABLE public.apps RENAME COLUMN "uptimepercentage" TO uptime_percentage;
-- ALTER TABLE public.apps RENAME COLUMN "keyactivities" TO key_activities;
-- ALTER TABLE public.apps RENAME COLUMN "activeusers" TO active_users;
-- ALTER TABLE public.apps RENAME COLUMN "userretentionrate" TO user_retention_rate;
-- ALTER TABLE public.apps RENAME COLUMN "useracquisitioncost" TO user_acquisition_cost;
-- ALTER TABLE public.apps RENAME COLUMN "churnrate" TO churn_rate;
-- ALTER TABLE public.apps RENAME COLUMN "monthlyrecurringrevenue" TO monthly_recurring_revenue;
-- ALTER TABLE public.apps RENAME COLUMN "userfeedback" TO user_feedback;
-- ALTER TABLE public.apps RENAME COLUMN "backuprecoveryoptions" TO backup_recovery_options;
-- ALTER TABLE public.apps RENAME COLUMN "localizationsupport" TO localization_support;
-- ALTER TABLE public.apps RENAME COLUMN "accessibilityfeatures" TO accessibility_features;
-- ALTER TABLE public.apps RENAME COLUMN "teamstructure" TO team_structure;
-- ALTER TABLE public.apps RENAME COLUMN "databackuplocation" TO data_backup_location;
-- ALTER TABLE public.apps RENAME COLUMN "environmentalimpact" TO environmental_impact;
-- ALTER TABLE public.apps RENAME COLUMN "socialimpact" TO social_impact;
-- ALTER TABLE public.apps RENAME COLUMN "intellectualproperty" TO intellectual_property;
-- ALTER TABLE public.apps RENAME COLUMN "fundingsinvestment" TO fundings_investment;
-- ALTER TABLE public.apps RENAME COLUMN "exitstrategy" TO exit_strategy;
-- ALTER TABLE public.apps RENAME COLUMN "analyticstools" TO analytics_tools;
-- ALTER TABLE public.apps RENAME COLUMN "keymetrics" TO key_metrics;
-- ALTER TABLE public.apps RENAME COLUMN "landingpage" TO landing_page;

-- COMMIT;

-- Ensure description column is NOT NULL with a default empty string
-- to prevent issues with existing NULL values
-- It is valid only because the table is for use internally and not exposed to users
-- If this table were to be exposed to users, a more comprehensive migration strategy would be needed
-- to handle existing NULL values appropriately.
-- This change is made to ensure data integrity and consistency across the application.
-- If there are existing NULL values, they will be converted to empty strings.

-- UPDATE apps SET description = '', positioningStmt = '', logo = '',
-- category = '', developer = '', licenseType = '', size = 0, apiDocumentation = '',
-- valueProposition = '', unfairAdvantage = '', roadmap = '', versionControl = '', errorRate = 0,
-- averageResponseTime = 0, uptimePercentage = 0, activeUsers = 0, userRetentionRate = 0,
-- userAcquisitionCost = 0, churnRate = 0, monthlyRecurringRevenue = 0, dataBackupLocation = '',
-- environmentalImpact = '', socialImpact = '', fundingsInvestment = 0, exitStrategy = '',
-- url = '', landingPage = '';

--
-- Name: companies; Type: TABLE; Schema: public; Owner: -
--
CREATE TABLE
    public.companies (
        id integer NOT NULL,
        name character varying(255),
        created integer,
        updated integer
    );

ALTER TABLE public.companies
ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.companies_id_seq START
    WITH
        1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1
);

--
-- Name: config; Type: TABLE; Schema: public; Owner: -
--
CREATE TABLE
    public.config (
        id integer NOT NULL,
        name character varying(255),
        value character varying(255),
        created integer,
        updated integer
    );

ALTER TABLE public.config
ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.config_id_seq START
    WITH
        1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1
);

--
-- Name: dbs; Type: TABLE; Schema: public; Owner: -
--
CREATE TABLE
    public.dbs (
        id integer NOT NULL,
        dsn character varying(255),
        options character varying(255),
        alt_dsn character varying(255),
        created integer,
        updated integer
    );

ALTER TABLE public.dbs
ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.dbs_id_seq START
    WITH
        1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1
);

--
-- Name: dbsauth; Type: TABLE; Schema: public; Owner: -
--
CREATE TABLE
    public.dbsauth (
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

ALTER TABLE public.dbsauth
ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.dbsauth_id_seq START
    WITH
        1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1
);

--
-- Name: groups; Type: TABLE; Schema: public; Owner: -
--
CREATE TABLE
    public.groups (
        id integer NOT NULL,
        name character varying(255),
        profile_id integer,
        dbsauth_id integer,
        is_public boolean NOT NULL DEFAULT false,
        leader integer,
        expiration_date timestamp
        with
            time zone,
            lan character varying(255) NOT NULL DEFAULT 'es',
            company_id integer,
            created integer,
            updated integer
    );

ALTER TABLE public.groups
ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.groups_id_seq START
    WITH
        1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1
);

--
-- Name: groups; Type: TABLE; Schema: public; Owner: -
--
CREATE TABLE
    public.invitations (
        id integer NOT NULL,
        used boolean NOT NULL DEFAULT false,
        code character varying(255),
        created integer,
        updated integer
    );

ALTER TABLE public.invitations
ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.invitations_id_seq START
    WITH
        1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1
);

--
-- Name: profiles; Type: TABLE; Schema: public; Owner: -
--
CREATE TABLE
    public.profiles (
        id integer NOT NULL,
        name character varying(255),
        app_ids character varying(255),
        db_ids character varying(255),
        created integer,
        updated integer
    );

ALTER TABLE public.profiles
ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.profiles_id_seq START
    WITH
        1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1
);

--
-- Name: password_requests; Type: TABLE; Schema: public; Owner: -
--
CREATE TABLE
    public.password_requests (
        id integer NOT NULL,
        user_id integer NOT NULL,
        code character varying(255),
        used boolean NOT NULL DEFAULT false,
        date timestamp
        with
            time zone,
            created integer,
            updated integer
    );

ALTER TABLE public.password_requests
ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.password_requests_id_seq START
    WITH
        1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1
);

--
-- Name: password_requests; Type: TABLE; Schema: public; Owner: -
--
CREATE TABLE
    public.security_image (
        random_id integer NOT NULL,
        real_text character varying(255),
        date timestamp
        with
            time zone,
            created integer,
            updated integer
    );

CREATE UNIQUE INDEX security_image_idx ON public.security_image (real_text, date);

--
-- Name: public.sessions; Type: TABLE; Schema: public; Owner: -
--
CREATE TABLE
    public.sessions (
        id character varying(255),
        value character varying(255),
        time time,
        db character varying(255),
        created integer,
        updated integer
    );

CREATE UNIQUE INDEX sessions_idx ON public.sessions (value) INCLUDE (time);

--
-- Name: pages; Type: TABLE; Schema: public; Owner: -
--
CREATE TABLE
    public.users (
        id integer NOT NULL,
        username character varying(255) NOT NULL,
        password character varying(255) NOT NULL,
        code character varying(255),
        active boolean NOT NULL DEFAULT true,
        last_login integer,
        last_session character varying(255) NOT NULL DEFAULT '',
        blocked boolean DEFAULT false,
        tries integer NOT NULL DEFAULT 0,
        last_try integer,
        email character varying(255),
        profile_id integer,
        group_id integer,
        dbsauth_id integer,
        activation_time integer,
        last_action timestamp
        with
            time zone,
            last_app integer,
            last_db integer,
            lan character varying(255) NOT NULL DEFAULT 'es',
            company_id integer,
            created integer,
            updated integer
    );

ALTER TABLE public.users
ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.users_id_seq START
    WITH
        1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1
);