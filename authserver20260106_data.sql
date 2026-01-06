--
-- PostgreSQL database dump
--

\restrict Hig6NRTUP6ADiN7cKdbap9yA30yLKgUj1nTybIp3M5rVQhMMd5ATjFgIynpra7y

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
    firs_tname character varying(255) NOT NULL,
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
-- Data for Name: apps; Type: TABLE DATA; Schema: public; Owner: jpassano
--

COPY public.apps (id, name, release, path, init, web, title, created, updated, description, positioning_stmt, logo, category, platform, developer, license_type, size, compatibility, integration_capabilities, development_stack, api_documentation, security_features, regulatory_compliance, revenue_streams, customer_segments, channels, value_proposition, pricing_tiers, partnerships, cost_structure, customer_relationships, unfair_advantage, roadmap, version_control, error_rate, average_response_time, uptime_percentage, key_activities, active_users, user_retention_rate, user_acquisition_cost, churn_rate, monthly_recurring_revenue, user_feedback, backup_recovery_options, localization_support, accessibility_features, team_structure, data_backup_location, environmental_impact, social_impact, intellectual_property, fundings_investment, exit_strategy, analytics_tools, key_metrics, url, landing_page) FROM stdin;
4	ENLACE GLOBAL	v1.0	/content/contentxpand	https://contentxpand.com/login	https://contentxpand.com	contentXpand - Democratizing Content Distribution	1762218842	1762218842	A cloud computing platform combining social networking for creators with content distribution and institutional subscriptions, hosting 50,000+ original works from regional music to STEM courses with zero upfront fees and 70/30 revenue sharing.	For creators and consumers, contentXpand democratizes content distribution with zero upfront fees and a 70/30 revenue-sharing model. Unlike Spotify or Netflix, our platform empowers indie artists and educators to retain ownership while reaching global audiences—hosting 50,000+ original works, from regional Mexican music to open-access STEM courses.	https://drive.google.com/drive/folders/1s5AAiVxVjla5Cwx2ichO7pEKWwZgVWcr	Content Distribution / Creator Platform	{web,mobile,cloud}	AZTech Ventures Team	Open Source + Proprietary	0	{Cross-platform,Cloud-based}	{"Social Media APIs","Payment Gateways","Educational Systems","Content Distribution Networks"}	{React,Go,PostgreSQL,Cassandra,AWS}	https://docs.contentxpand.com	{"Content Encryption","Digital Rights Management","Secure Payments"}	{"Copyright Compliance","Digital Millennium Copyright Act"}	{Advertising,"Content Sales",Subscriptions,"Service Fees"}	{"Content Creators","Educational Institutions","Individual Consumers",Publishers,Libraries}	{"Digital Marketing","Industry Events","Creator Partnerships","Educational Alliances"}	Democratizes content distribution with zero upfront fees and 70/30 revenue sharing, empowering creators to retain ownership while reaching global audiences.	{"70/30 Revenue Share Model","Institutional Subscriptions","Service Tier Pricing"}	{"Educational Institutions","Publishing Houses","Music Distributors","Open Source Communities"}	{"Platform Development","Content Storage",Marketing,"Technical Support","Legal Compliance"}	{"Creator Support","Institutional Account Management","Community Building"}	Combines social networking, content creation tools, and distribution in one platform with open-source technology and collaborative authorship models.	https://contentxpand.com/roadmap	https://github.com/aztechventures/contentxpand	0	1	100	{"Content Curation","Platform Development","Community Management","Partnership Development"}	0	75	100	8	0	{"\\"Finally a platform that puts creators first with fair revenue sharing\\" - Independent Artist"}	{"AWS Multi-region Backup","Content Replication"}	{es-MX,en-US,pt-BR,fr-FR}	{"Multi-language Support","Screen Reader Compatible"}	{"Content Curators","Platform Developers","Community Managers","Partnership Managers"}	AWS Global Regions	Reduces environmental impact of physical media distribution	Democratizes access to education and cultural content globally, creates jobs for creators	{"Collaborative Authoring Technology","Content Distribution Algorithms"}	0	Acquisition by major tech or media company (Google, Amazon, Microsoft, IBM) or major publishing house	{"Content Performance Analytics","User Engagement Metrics"}	{"Content Uploads","Active Creators","Revenue per Creator","Institutional Subscriptions"}	https://contentxpand.com	https://contentxpand.com/creators
2	POD	v1.0		https://pod.aztechventures.com/login	https://pod.aztechventures.com	POD Promotion On Demand	0	0	AI-driven marketing platform connecting businesses with vetted local experts for cost-effective campaigns with real-time tracking and predictive analytics.	For companies aiming to slash campaign costs by 75%, POD connects businesses with vetted local experts while offering AI-driven templates, real-time campaign tracking, and predictive demand analytics. Unlike traditional agencies, POD's one-click campaign builder and granular performance dashboards let brands optimize strategies dynamically—pairing experts' skills (e.g., TikTok influencers for Gen Z campaigns) with data-backed adjustments.		Marketing Services	{web,mobile}	POD Team	SaaS Subscription	0	{""}	{"Social Media APIs","Analytics Tools",promolibros.com,tradeplusplus,netaget}	{React,Go,PostgreSQL,"AKAI Cloud"}		{""}	{""}	{"Annual Subscription","Per-Event Transaction Fees"}	{SMBs,"Marketing Agencies","E-commerce Businesses","Enterprise Companies"}	{""}	Connect global companies with local expertise for targeted market entry and event campaigns, offering flexible pricing from single events to annual subscriptions.	{"Starter: $1000/month","Custom Event Pricing"}	{""}	{""}	{""}	Flexible service model that serves both SMBs and enterprise clients with local market expertise on demand.			0	0	0	{"Service Provider Vetting","Campaign Management","Client Matching"}	0	0	0	0	0	{""}	{""}	{""}	{""}	{"Marketing Experts"}				{""}	0		{""}	{"Campaigns Launched","Cost Savings %","Expert Utilization Rate"}	https://pod.aztechventures.com
3	INRECOR	v1.0	/organizational/inrecor	2024	https://inrecor.aztechventures.com	INRECOR - Organizational Resources Inventory	1762217900	1762217900	AI-powered organizational diagnostics platform that combines assessment with actionable development plans to boost collaboration, innovation, and retention through comprehensive organizational resource inventory.	For organizations prioritizing workplace culture, INRECOR combines AI-powered diagnostics with actionable development plans to boost collaboration, innovation, and retention. By analyzing leadership effectiveness, team dynamics, and innovation readiness, INRECOR identifies gaps (e.g., poor cross-departmental communication) and deploys targeted interventions, increasing project success rates by 35% in pilot programs.	https://drive.google.com/drive/folders/18SWJvRRwJELJcurBk9W2ru_Oy5sEHAhf	Organizational Development / HR Analytics	{web,mobile}	AZTech Ventures Team	SaaS Subscription	0	{Cross-platform}	{"HR Systems","Analytics Dashboards","Survey Integration"}	{React,Go,PostgreSQL,AWS}	https://docs.inrecor.aztechventures.com	{"Data Encryption","Secure Access Controls"}	{"Data Privacy Compliance","HR Regulations"}	{"Monthly Subscriptions","Storage Memberships","Training Workshops"}	{"Government Institutions","Private Companies","Educational Organizations",Non-Profits,"Political Parties"}	{"Direct Sales",Partnerships,"Industry Events"}	Comprehensive organizational diagnostics with AI-powered insights and actionable development plans that increase project success rates by 35%.	{"Basic: $X/month","Enterprise: Custom Pricing","Workshop Add-ons"}	{"Educational Institutions","Industry Associations","HR Consultancies"}	{"Platform Development","Team Salaries",Marketing,"Technical Support"}	{"Dedicated Account Managers","Training Sessions","Ongoing Support"}	Multi-dimensional assessment technology measuring self-image, personal profile, and decision-making effectiveness simultaneously with real-time automated reporting.	https://inrecor.aztechventures.com/roadmap	https://github.com/aztechventures/inrecor-platform	0	1	100	{"Organizational Diagnostics","Development Planning","Progress Monitoring","Training Workshops"}	0	80	200	5	0	{"\\"Increased our project success rates by 35% in pilot programs\\" - Early Client"}	{"AWS Backup","Daily Snapshots","Disaster Recovery"}	{es-MX,en-US}	{"Screen Reader Compatible","Keyboard Navigation"}	{"HR Analysts","Organizational Psychologists","Platform Developers"}	AWS Mexico Region	Promotes sustainable organizational practices and reduces employee turnover	Democratizes access to organizational development tools for all types of organizations	{"Proprietary Assessment Algorithms","Multi-dimensional Profiling Technology"}	3000000	Position for acquisition by major HR tech company or strategic partner in 5-7 years	{"Custom Analytics Dashboard","Progress Tracking Tools"}	{"Project Success Rate %","Employee Retention %","Intervention Effectiveness","Organizational Resilience Score"}	https://inrecor.aztechventures.com	https://inrecor.aztechventures.com/demo
5	PROMOLIBROS	v1.0	/publishing/promolibros	https://promolibros.com/login	https://promolibros.com	PROMOLIBROS - AI-Driven Publishing Platform	1762219481	1762219481	AI-powered platform for educational publishers featuring demand forecasting, sales trend analysis, and industry-specific CRM to guide digital-first writing practices and reduce inventory waste.	For educational publishers, PROMOLIBROS forecasts textbook demand via AI-driven sales trend analysis and lifecycle modeling. Our industry-specific CRM guides authors in digital-first writing practices, helping publishers like EduMex cut inventory waste by 40% and accelerate digital adoption.	/assets/logos/promolibros.png	Publishing Technology / Educational SaaS	{web,cloud}	AZTech Ventures Team	SaaS Subscription	0	{Cross-platform}	{"Publishing Systems","CRM Integration","Analytics APIs","Inventory Management"}	{React,Python,PostgreSQL,AWS}	https://docs.promolibros.com	{"Data Encryption","Secure API Access"}	{"Data Privacy","Educational Compliance"}	{"SaaS Subscriptions","Implementation Fees","Training Services"}	{"Educational Publishers","Academic Institutions","Textbook Authors"}	{"Direct Sales","Industry Events","Publisher Partnerships"}	AI-driven demand forecasting and digital transformation tools that help educational publishers reduce inventory waste by 40% and accelerate digital adoption.	{"Basic: $X/month per publisher","Enterprise: Custom pricing","Per-User Licensing"}	{"Educational Associations","Publishing Houses","Academic Distributors"}	{"Platform Development","AI Model Training","Sales & Marketing","Customer Support"}	{"Dedicated Account Managers","Training Sessions","Ongoing Support"}	Bridges legacy publishing practices with AI-driven innovation, specifically designed for the Latin American educational publishing market with 200+ adopters.	https://promolibros.com/roadmap	https://github.com/aztechventures/promolibros	0	1	100	{"AI Model Training","Publisher Onboarding","CRM Management","Demand Forecasting"}	0	85	500	4	0	{"\\"Reduced our inventory waste by 40% while accelerating our digital transition\\" - EduMex Publishing"}	{"AWS Backup","Daily Data Sync"}	{es-MX,en-US,pt-BR}	{"Screen Reader Compatible","Keyboard Navigation"}	{"AI Specialists","Publishing Experts","Platform Developers"}	AWS Mexico Region	Reduces paper waste and inventory overproduction through accurate demand forecasting	Supports educational content accessibility and digital transformation in Latin American publishing	{"Demand Forecasting Algorithms","Publisher CRM Technology"}	0	Acquisition by major educational technology company or large publishing group	{"Sales Analytics","Inventory Optimization Metrics","Adoption Tracking"}	{"Inventory Waste Reduction %","Digital Adoption Rate","Publisher Retention","Forecast Accuracy"}	https://promolibros.com	https://promolibros.com/demo
6	TRADE++	v1.0	/crm/tradeplusplus	https://tradeplusplus.com/login	https://tradeplusplus.com	TRADE++ - AI-Powered CRM Platform	1762276404	1762276404	Advanced CRM platform with AI-powered sentiment analysis, automated sales workflows, and hyper-customizable client segmentation for B2B/B2C businesses.	For B2B/B2C businesses, TRADE ++ redefines CRM with AI-powered sentiment analysis, automated sales workflows, and hyper-customizable client segmentation. Example: A cosmetics brand used TRADE ++ real-time chat analysis to identify unmet skincare needs, boosting upsell revenue by 25%.	/assets/logos/tradeplusplus.png	CRM / Sales Automation	{web,mobile,desktop}	AZTech Ventures Team	SaaS Subscription	0	{Cross-platform}	{"S4S Integration","Social Media APIs","E-commerce Platforms","Communication Tools"}	{React,Node.js,PostgreSQL,Python,AWS}	https://docs.tradeplusplus.com	{"Data Encryption","GDPR Compliance","Secure API Access"}	{GDPR,"Data Privacy Regulations"}	{"Monthly Subscriptions","Enterprise Licensing","Implementation Services"}	{"B2B Businesses","B2C Companies","Sales Teams","Marketing Agencies"}	{"Direct Sales","Partner Channels","Digital Marketing"}	AI-driven CRM with sentiment analysis and automated workflows that boost upsell revenue by 25% through real-time customer insights.	{"Starter: $49/user/month","Professional: $99/user/month","Enterprise: Custom"}	{"E-commerce Platforms","Marketing Agencies","Business Consultants"}	{"Platform Development","AI Model Training","Sales & Marketing","Customer Support"}	{"Dedicated Account Managers","Technical Support","Training Programs"}	Advanced AI sentiment analysis combined with hyper-customizable segmentation and real-time chat analysis capabilities.	https://tradeplusplus.com/roadmap	https://github.com/aztechventures/tradeplusplus	0	0	100	{"AI Model Training","Workflow Automation","Client Segmentation","Performance Analytics"}	0	88	300	4	0	{"\\"Identified unmet customer needs through chat analysis, boosting our upsell revenue by 25%\\" - Cosmetics Brand Client"}	{"AWS Multi-region Backup","Real-time Replication"}	{en-US,es-MX,fr-FR,de-DE}	{"Screen Reader Compatible","Keyboard Navigation","High Contrast Mode"}	{"AI Engineers","Sales Experts","Platform Developers","Customer Success"}	AWS Global Regions	Reduces business travel through effective remote sales automation	Empowers businesses of all sizes with enterprise-grade CRM capabilities	{"Sentiment Analysis Algorithms","Workflow Automation Engine","Custom Segmentation Technology"}	0	Acquisition by major CRM provider or strategic partnership with enterprise software company	{"Sales Performance Dashboard","Customer Sentiment Analytics","Conversion Tracking"}	{"Upsell Revenue Increase %","Customer Segmentation Accuracy","Sales Cycle Reduction","User Adoption Rate"}	https://tradeplusplus.com	https://tradeplusplus.com/demo
7	EASYAREM	v1.0	/crm/easyarem	https://tradeplusplus.com/easyarem/login	https://tradeplusplus.com/easyarem	EASYAREM - Simplified CRM for Startups	1762276582	1762276582	User-friendly CRM platform with pre-built templates and one-click task assignments designed for CRM newcomers and scaling startups.	For CRM newcomers, EASYAREM simplifies customer care with pre-built templates (e.g., e-commerce returns), one-click task assignments, and S4S integration. Users achieve 80% faster onboarding than with Salesforce or HubSpot—ideal for startups scaling from 10 to 10,000 clients.	/assets/logos/easyarem.png	CRM / Customer Service	{web,mobile}	AZTech Ventures Team	SaaS Subscription	0	{Cross-platform}	{"S4S Integration","E-commerce Platforms","Communication Tools"}	{React,Node.js,PostgreSQL,AWS}	https://docs.tradeplusplus.com/easyarem	{"Data Encryption","Basic Access Controls"}	{"Data Privacy Compliance"}	{"Monthly Subscriptions","Freemium Model","Setup Fees"}	{Startups,"Small Businesses","CRM Newcomers","Growing Teams"}	{"Digital Marketing","App Stores","Partner Referrals"}	Simplified CRM with pre-built templates that enables 80% faster onboarding than traditional solutions, perfect for scaling from 10 to 10,000 clients.	{"Freemium: Up to 10 users","Growth: $29/user/month","Scale: $59/user/month"}	{"Startup Incubators","Business Consultants","E-commerce Platforms"}	{"Platform Development","Template Creation","Customer Support",Marketing}	{"Community Support","Knowledge Base","Email Support"}	Pre-built industry templates and simplified interface that reduces CRM learning curve by 80% compared to Salesforce or HubSpot.	https://tradeplusplus.com/easyarem/roadmap	https://github.com/aztechventures/easyarem	0	1	100	{"Template Development","User Onboarding","Community Management","Feature Simplification"}	0	92	150	2	0	{"\\"Onboarded our team in hours instead of weeks - 80% faster than our previous CRM\\" - Startup Founder"}	{"AWS Backup","Weekly Snapshots"}	{en-US,es-MX}	{"Simplified UI","Clear Navigation","Basic Accessibility"}	{"UX Designers","CRM Specialists","Support Team"}	AWS US Region	Enables remote customer service operations	Democratizes CRM access for small businesses and startups	{"Template Library System","Simplified Workflow Engine"}	0	Integrated growth path to TRADE++ or acquisition by small business software provider	{"Onboarding Time Metrics","User Engagement","Template Usage"}	{"Onboarding Time Reduction %","User Activation Rate","Client Growth Scale","Support Ticket Resolution Time"}	https://tradeplusplus.com/easyarem	https://tradeplusplus.com/easyarem/try-free
8	NETAGET	v1.0	/sales/netaget	https://netaget.com/login	https://netaget.com	NETAGET - AI Lead Generation Platform	1762276595	1762276595	AI-powered lead generation platform combining lead scoring, social sentiment analysis, and flexible SaaS leasing to target high-intent buyers.	For customer acquisition teams, NETAGET combines AI lead scoring, social sentiment analysis, and flexible SaaS leasing to target high-intent buyers. Example: A B2B SaaS company used NETAGET's decision-maker intent modeling to cut lead-gen costs by 50% while doubling conversion rates.	/assets/logos/netaget.png	Sales / Lead Generation	{web,cloud}	AZTech Ventures Team	SaaS Subscription + Leasing	0	{Cross-platform}	{"CRM Systems","Marketing Automation","Social Media APIs","Sales Platforms"}	{Python,React,PostgreSQL,MongoDB,AWS}	https://docs.netaget.com	{"Data Encryption","API Security","Compliance Monitoring"}	{"Data Privacy","Lead Generation Regulations"}	{"SaaS Subscriptions","Leasing Options","Performance-based Pricing"}	{"B2B Sales Teams","Marketing Agencies","Customer Acquisition Teams","Enterprise Sales"}	{"Direct Sales","Channel Partners","Digital Marketing"}	AI-driven lead scoring and intent modeling that cuts lead generation costs by 50% while doubling conversion rates through high-intent buyer targeting.	{"Starter: $199/month","Professional: $499/month","Enterprise: Custom + Leasing Options"}	{"Marketing Agencies","Sales Training Organizations","Business Consultants"}	{"AI Model Development","Data Acquisition","Platform Maintenance","Sales & Marketing"}	{"Dedicated Support","Training Sessions","Strategic Consulting"}	Flexible SaaS leasing model combined with advanced decision-maker intent modeling and social sentiment analysis.	https://netaget.com/roadmap	https://github.com/aztechventures/netaget	0	0	100	{"Lead Scoring Algorithm Training","Intent Modeling","Data Analysis","Performance Optimization"}	0	85	400	5	0	{"\\"Cut our lead generation costs by 50% while doubling conversion rates through better intent targeting\\" - B2B SaaS Client"}	{"AWS Backup","Real-time Data Sync"}	{en-US,es-MX,de-DE}	{"Screen Reader Compatible","Keyboard Navigation"}	{"Data Scientists","Sales Experts","Platform Developers"}	AWS Multi-region	Optimizes marketing spend reducing wasteful advertising	Helps businesses grow efficiently with targeted customer acquisition	{"AI Lead Scoring Algorithms","Intent Modeling Technology","Social Sentiment Analysis"}	0	Acquisition by marketing technology company or strategic partnership with sales enablement platform	{"Lead Quality Dashboard","Conversion Analytics","Cost per Lead Tracking"}	{"Lead Generation Cost Reduction %","Conversion Rate Increase","Intent Model Accuracy","ROI on Marketing Spend"}	https://netaget.com	https://netaget.com/get-started
9	POLITISUITE	v1.0	/political/politisuite	https://politisuite.com/login	https://politisuite.com	POLITISUITE - AI-Powered Political Campaign Platform	1762399919	1762399919	Comprehensive political campaign suite using LLMs to analyze voter sentiment across 10M+ social posts, transforming campaign promises into actionable plans and increasing volunteer engagement by 60%.	For political campaigns, POLITISUITE transforms promises into actionable plans using LLMs to analyze voter sentiment across 10M+ social posts. During Mexico's 2024 elections, our tools helped candidates align policies with grassroots demands, increasing volunteer engagement by 60%.	/assets/logos/politisuite.png	Political Technology / Campaign Management	{web,mobile,cloud}	AZTech Ventures Team	Campaign Subscription	0	{Cross-platform}	{"Social Media APIs","Voter Database Systems","Campaign Finance Tools","Communication Platforms"}	{Python,React,PostgreSQL,AWS,TensorFlow}	https://docs.politisuite.com	{"End-to-End Encryption","Campaign Data Protection","Secure Access Controls"}	{"Election Commission Regulations","Data Privacy Laws","Campaign Finance Compliance"}	{"Campaign Subscription Fees","Consulting Services","Training Workshops"}	{"Political Candidates","Campaign Managers","Political Parties","Advocacy Groups"}	{"Direct Sales to Campaigns","Political Consultants","Party Partnerships"}	Transforms political promises into actionable campaign plans using AI sentiment analysis, proven to increase volunteer engagement by 60% during election cycles.	{"Local Campaign: $2,500/election","Regional Campaign: $7,500/election","National Campaign: $25,000+"}	{"Political Parties","Campaign Consultants","Voter Data Providers","Media Monitoring Services"}	{"AI Model Development","Platform Infrastructure","Compliance Management","Campaign Support"}	{"Dedicated Campaign Support","Strategic Consulting","Training Sessions"}	Proven track record in major elections with LLM analysis of 10M+ social posts and demonstrated 60% volunteer engagement increase.	https://politisuite.com/roadmap	https://github.com/aztechventures/politisuite	0	0	100	{"Sentiment Analysis","Campaign Strategy Development","Volunteer Coordination","Policy Alignment Analysis"}	0	90	800	8	0	{"\\"Increased our volunteer engagement by 60% and helped us align policies with what voters actually wanted\\" - 2024 Campaign Manager"}	{"AWS GovCloud","Encrypted Backups","Geographic Redundancy"}	{es-MX,en-US,pt-BR}	{"Screen Reader Compatible","Multiple Language Support","Accessible Campaign Materials"}	{"Political Strategists","Data Scientists","Campaign Operations","Compliance Experts"}	AWS Secure Cloud Infrastructure	Promotes democratic engagement and informed voting	Strengthens democratic processes by helping candidates better understand and respond to voter needs	{"LLM Sentiment Analysis Technology","Campaign Promise Mapping Algorithms","Volunteer Engagement Systems"}	0	Strategic acquisition by political consulting firm or government technology provider	{"Voter Sentiment Dashboard","Campaign Performance Metrics","Volunteer Engagement Analytics"}	{"Volunteer Engagement Increase %","Social Media Posts Analyzed","Policy-Voter Alignment Score","Campaign Efficiency Metrics"}	https://politisuite.com	https://politisuite.com/demo
10	HORDETOP	v1.0	/strategy/hordetop	https://hordetop.com/login	https://hordetop.com	HORDETOP - Live Strategy Execution Dashboard	1762399951	1762399951	Real-time strategy execution platform that detects organizational misalignments and alerts leaders to execution gaps, reducing operational failures by 45% through continuous process monitoring and alignment analytics.	For large organizations, HORDETOP's live strategy-execution dashboard detects misalignments (e.g., frontline teams ignoring sustainability protocols) and alerts leaders in real time. Inspired by military operational failures, HORDETOP reduced execution gaps by 45% in manufacturing clients.	/assets/logos/hordetop.png	Organizational Strategy / Operations Management	{web,dashboard,mobile-alerts}	AZTech Ventures Team	Enterprise SaaS	0	{Cross-platform,Cloud-based}	{"ERP Systems","Process Management Tools","Performance Dashboards","Alert Systems"}	{React,Go,PostgreSQL,"Real-time Analytics Engine",AWS}	https://docs.hordetop.com	{"Enterprise-grade Encryption","Role-based Access Control","Audit Logging"}	{"Data Protection Regulations","Industry Compliance Standards"}	{"Enterprise Subscriptions","Implementation Services","Training Programs"}	{"Large Enterprises","Manufacturing Companies","Government Agencies","Multinational Corporations"}	{"Enterprise Sales","Strategic Partnerships","Industry Conferences"}	Live strategy-execution monitoring that detects and alerts on organizational misalignments in real-time, proven to reduce execution gaps by 45%.	{"Enterprise: $50,000/year","Global: $150,000/year","Custom Implementation Packages"}	{"Management Consultancies","ERP Providers","Business Process Outsourcers"}	{"Platform Development","AI Model Training","Enterprise Support","Compliance Management"}	{"Dedicated Account Managers","Strategic Advisory","24/7 Support"}	Military-inspired operational failure detection combined with real-time misalignment alerts and proven 45% reduction in execution gaps.	https://hordetop.com/roadmap	https://github.com/aztechventures/hordetop	0	0	100	{"Process Mapping","Strategy Alignment Monitoring","Real-time Analytics","Performance Gap Analysis"}	0	95	2500	3	0	{"\\"Detected sustainability protocol violations we didn't even know were happening, reducing our execution gaps by 45%\\" - Manufacturing Client"}	{"Multi-region Failover","Real-time Replication","Disaster Recovery"}	{en-US,es-MX,de-DE,fr-FR,ja-JP}	{"Executive Dashboards","Real-time Alert Systems","Multi-level Access"}	{"Organizational Psychologists","Data Scientists","Strategy Consultants","Platform Engineers"}	AWS Global Infrastructure	Helps organizations maintain sustainability protocols and reduce operational waste	Improves organizational effectiveness and reduces operational failures across industries	{"Real-time Misalignment Detection Algorithms","Strategy Execution Analytics","Organizational Behavior Modeling"}	0	Acquisition by major enterprise software company or strategic partnership with management consultancy	{"Strategy Execution Dashboard","Real-time Alignment Metrics","Performance Gap Analytics"}	{"Execution Gap Reduction %","Real-time Alert Accuracy","Strategy-Operation Alignment Score","Process Compliance Rate"}	https://hordetop.com	https://hordetop.com/demo
11	PRODIGUS	v1.0	/nonprofit/prodigus	https://prodigus.org/login	https://prodigus.org	PRODIGUS - NGO Management Platform with GPS Verification	1762399981	1762399981	Comprehensive NGO management platform featuring GPS-verified field reports, AI-driven compliance alerts, accounting integration, and program integrity monitoring for non-profit organizations.	For NGOs, PRODIGUS ensures program integrity with GPS-verified field reports and AI-driven compliance alerts. Unlike biased third-party audits, our system flagged 30% deviations in a UNICEF-backed nutrition initiative, enabling same-day corrective actions.	/assets/logos/prodigus.png	Non-Profit Management / CRM	{web,mobile,cloud}	AZTech Ventures Team	Non-Profit Subscription	0	{Cross-platform,Mobile-first}	{"Accounting Systems","Payment Processors","Donor Databases","GPS Services","Compliance APIs"}	{React,Node.js,PostgreSQL,Python,AWS}	https://docs.prodigus.org	{"Data Encryption","GDPR Compliance","Donor Privacy Protection"}	{"Non-Profit Regulations","Financial Compliance","Donor Privacy Laws"}	{"Tiered Subscriptions","Implementation Services","Training Programs"}	{"Non-Profit Organizations",NGOs,Charities,"International Aid Organizations","Foundation Grants"}	{"Non-Profit Associations","Industry Conferences","Grant-making Organizations"}	GPS-verified field reporting and AI compliance monitoring that ensures program integrity and enables same-day corrective actions for NGOs.	{"Small NGO: $99/month","Medium NGO: $299/month","Large NGO: $699/month","Enterprise: Custom"}	{"UN Agencies","Grant-making Foundations","Non-Profit Associations","Government Aid Programs"}	{"Platform Development","Compliance Monitoring","Customer Support","Training Development"}	{"Dedicated NGO Support","Implementation Guidance","Compliance Consulting"}	GPS-verified field reporting combined with AI-driven compliance alerts proven to detect 30% program deviations in UNICEF-backed initiatives.	https://prodigus.org/roadmap	https://github.com/aztechventures/prodigus	0	1	100	{"Field Report Verification","Compliance Monitoring","Donor Management","Accounting Integration","Program Analytics"}	0	90	200	3	0	{"\\"Flagged 30% deviations in our nutrition program allowing same-day corrective actions - far more effective than traditional audits\\" - UNICEF Partner NGO"}	{"AWS Backup","Encrypted Field Data","Compliance Archives"}	{en-US,es-MX,fr-FR,ar-SA,pt-BR}	{"Low-bandwidth Optimized","Mobile Field Access","Multi-language Support"}	{"Non-Profit Experts","Compliance Specialists","Field Operations","Accounting Professionals"}	AWS Global Regions with Data Sovereignty Options	Reduces paper-based reporting and field travel through digital verification	Ensures aid reaches intended beneficiaries and improves program effectiveness for vulnerable communities	{"GPS Verification Algorithms","AI Compliance Monitoring","Non-Profit Accounting Integration"}	0	Acquisition by social impact technology company or strategic partnership with major foundation	{"Program Integrity Dashboard","Donor Impact Analytics","Compliance Reporting"}	{"Program Deviation Detection Rate","Field Report Accuracy","Corrective Action Time","Donor Fund Utilization Efficiency"}	https://prodigus.org	https://prodigus.org/demo
12	¿Cómo Vas?	v1.0	/mobility/comovas	https://comovas.org/app	https://comovas.org	¿Cómo Vas? - Urban Mobility & Air Quality Platform	1762399995	1762399995	Gamified urban mobility platform that incentivizes eco-friendly transportation through carpooling, bike-sharing, and public transit adoption, reducing air pollution in Mexico City.	For Mexico City residents, ¿Cómo Vas? combats air pollution by incentivizing carpooling, bike-sharing, and public transit adoption. Unlike underused municipal initiatives (e.g., empty cycling lanes), our platform gamifies eco-friendly habits—offering rewards for reduced car use and connecting citizens to hyperlocal alternatives. In pilot neighborhoods, ¿Cómo Vas? increased bike-lane utilization by 40% within 3 months.	/assets/logos/comovas.png	Urban Mobility / Environmental Tech	{mobile,web,progressive-web-app}	AZTech Ventures Team	Freemium + Municipal Licensing	0	{iOS,Android,Web}	{"Public Transit APIs","Bike-sharing Systems","Payment Gateways","Air Quality Sensors","Mapping Services"}	{"React Native",Node.js,PostgreSQL,MongoDB,AWS}	https://docs.comovas.org	{"User Data Anonymization","Secure Payment Processing","Location Privacy"}	{"Data Privacy Laws","Transportation Regulations","Environmental Standards"}	{"Municipal Licensing","Corporate Sponsorships","In-app Purchases",Advertising}	{"Urban Residents","Municipal Governments","Corporate Sustainability Programs","Environmental Organizations"}	{"App Stores","Community Events","Municipal Partnerships","Social Media"}	Gamified mobility platform that transforms underutilized cycling lanes and public transit into rewarding eco-friendly habits, proven to increase bike-lane usage by 40%.	{"Free for Users","Municipal License: $50,000/year per city","Corporate Programs: Custom pricing"}	{"Bike-sharing Companies","Public Transit Authorities","Environmental NGOs","Local Businesses"}	{"Platform Development","Community Management","Partnership Development","Marketing & Outreach"}	{"Community Support","User Engagement Programs","Municipal Relations"}	Proven 40% increase in bike-lane utilization through gamification and hyperlocal mobility alternatives that address municipal initiative shortcomings.	https://comovas.org/roadmap	https://github.com/aztechventures/comovas	0	1	100	{"User Engagement","Route Optimization","Reward Distribution","Community Building","Impact Measurement"}	0	75	5	15	0	{"\\"Finally a platform that makes using bike lanes rewarding - we saw 40% more cyclists in our neighborhood within months\\" - Pilot Program Participant"}	{"Cloud Backup","User Data Protection"}	{es-MX,en-US}	{"Mobile-first Design","Offline Capability","Low-data Usage"}	{"Urban Planners","Community Organizers","App Developers","Environmental Specialists"}	AWS Mexico Region	Directly reduces air pollution and carbon emissions by incentivizing sustainable transportation	Improves urban quality of life, reduces traffic congestion, and promotes healthier community habits	{"Gamification Algorithms","Mobility Pattern Analysis","Hyperlocal Route Optimization"}	0	Acquisition by urban tech company, mobility platform, or strategic partnership with municipal government	{"Mobility Pattern Dashboard","Environmental Impact Metrics","User Engagement Analytics"}	{"Bike-lane Utilization Increase %","Car Trip Reduction","CO2 Emissions Saved","Active User Growth"}	https://comovas.org	https://comovas.org/join
13	U.C.Tech	v1.0	/consulting/uctech	https://uctech.com/login	https://uctech.com	U.C.Tech - Elite Consulting Platform with AI Matching	1762402535	1762402535	AI-powered consulting platform that matches enterprises with vetted elite consultants for high-stakes projects, featuring competency assessments, escrow payments, and guaranteed expertise with 93% client ROI.	For enterprises needing strategic expertise, U.C.Tech matches organizations with elite consultants (vetted via AI-driven competency assessments) for high-stakes projects like AI adoption or M&A legal strategy. Unlike gig platforms (Upwork, Guru), we guarantee expertise: 93% of clients report measurable ROI, such as 30% faster supply chain digitization.	/assets/logos/uctech.png	Consulting Platform / Professional Services	{web,mobile,enterprise}	AZTech Ventures Team	Platform as a Service	0	{Cross-platform,Enterprise-grade}	{"Payment Processors","Escrow Services","CRM Systems","Project Management Tools","Video Conferencing"}	{React,Python,PostgreSQL,AWS,"Machine Learning APIs"}	https://docs.uctech.com	{"Enterprise Encryption","Secure Escrow","Contract Protection","Data Anonymization"}	{"Professional Services Regulations","Contract Law Compliance","Financial Services"}	{"30% Platform Fee","Finder Fees (5-15%)","Premium Enterprise Services"}	{"Enterprise Clients","Consulting Firms","Independent Consultants","Retired Executives"}	{"Enterprise Sales","Consultant Referrals","Industry Partnerships","Digital Marketing"}	AI-vetted elite consulting matching with guaranteed expertise and 93% client ROI, delivering results like 30% faster supply chain digitization.	{"70/30 Revenue Split (Consultors/Platform)","Finder Fees: 5-15% of first year","Enterprise Premium: Custom"}	{"Business Schools","Professional Associations","Executive Search Firms","Industry Groups"}	{"Platform Development","AI Model Training","Marketing & Sales","Quality Assurance","Escrow Management"}	{"Dedicated Enterprise Support","Consultant Success Management","Dispute Resolution"}	Flat organizational structure with AI-driven competency assessments and merit-based project allocation, proven to deliver 93% client ROI.	https://uctech.com/roadmap	https://github.com/aztechventures/uctech	0	0	100	{"Consultant Vetting","AI Matching","Project Management","Quality Control","Knowledge Management"}	0	88	800	4	0	{"\\"30% faster supply chain digitization with guaranteed expert consultants - the ROI is undeniable\\" - Enterprise Client","\\"Finally a platform that values true expertise over volume\\" - Elite Consultant"}	{"AWS Enterprise Backup","Financial Transaction Logging","Contract Archives"}	{en-US,es-MX,pt-BR,de-DE,fr-FR}	{"Professional Interface","Multi-language Contracts","Accessible Documentation"}	{"AI Specialists","Consulting Experts","Platform Developers","Quality Assurance"}	AWS Global with Regional Compliance	Reduces business travel through virtual consulting engagements	Democratizes access to elite consulting expertise and creates opportunities for professionals worldwide	{"AI Competency Assessment Algorithms","Project-Consultant Matching Technology","Knowledge Management System"}	0	Acquisition by major professional services firm or strategic partnership with enterprise software company	{"ROI Measurement Dashboard","Consultant Performance Analytics","Client Satisfaction Metrics"}	{"Client ROI Percentage","Project Success Rate","Consultant Utilization","Supply Chain Digitization Speed Increase"}	https://uctech.com	https://uctech.com/get-started
14	EDUQUALITY	v1.0	/education/eduquality	https://eduquality.com/login	https://eduquality.com	EDUQUALITY - Educational Assessment Platform	1762402548	1762402548	Educational assessment platform that bridges OECD best practices with local realities by measuring teacher-student dynamics, parent engagement, and classroom innovation to improve educational outcomes.	For education authorities, EDUQUALITY's assessments bridge OECD best practices and on-the-ground realities. By measuring teacher-student dynamics, parent-school engagement, and classroom innovation, we've helped 200+ schools boost student retention by 25% and parent satisfaction by 35%. Example: A Michoacán pilot reduced teacher authoritarianism by 50% through real-time feedback loops.	/assets/logos/eduquality.png	Education Technology / Assessment Platform	{web,mobile,tablet}	AZTech Ventures Team	SaaS Subscription	0	{Cross-platform,"Education-network optimized"}	{"Student Information Systems","Learning Management Systems","Government Education APIs","Parent Communication Platforms"}	{React,Python,PostgreSQL,"AWS Educate"}	https://docs.eduquality.com	{"Student Data Privacy","FERPA Compliance","Encrypted Assessments","Role-based Access"}	{FERPA,"Student Privacy Laws","Educational Data Standards","OECD Compliance Frameworks"}	{"School District Subscriptions","Government Education Contracts","Training Services"}	{"Education Authorities","School Districts","Individual Schools","Government Education Departments"}	{"Education Conferences","Government Tenders","School District Partnerships","Educational Associations"}	Bridges international OECD standards with local educational realities to boost student retention by 25% and parent satisfaction by 35% through comprehensive assessment and real-time feedback.	{"School: $2,000/year","District: $15,000/year","State/National: Custom Enterprise Pricing"}	{"OECD Education Partners","Teacher Training Organizations","Educational Research Institutions"}	{"Platform Development","Assessment Research","Data Analysis","Training & Support","Compliance Management"}	{"Dedicated Education Consultants","Training Workshops","Ongoing Support"}	Proven impact with 200+ schools demonstrating 25% student retention increase and 50% reduction in teacher authoritarianism through real-time feedback mechanisms.	https://eduquality.com/roadmap	https://github.com/aztechventures/eduquality	0	1	100	{"Educational Assessment Design","Data Analysis & Reporting","Teacher Training","Stakeholder Engagement","Impact Measurement"}	0	90	500	3	0	{"\\"Reduced teacher authoritarianism by 50% in our Michoacán pilot while boosting parent satisfaction by 35%\\" - State Education Director","\\"Finally assessments that understand our local context while maintaining international standards\\" - School Principal"}	{"AWS Education Compliance Backup","Encrypted Student Data Storage","Disaster Recovery"}	{es-MX,en-US,pt-BR,fr-FR}	{"Screen Reader Compatible","Multi-language Assessments","Accessible Data Visualizations"}	{"Education Researchers","Assessment Specialists","Data Scientists","Platform Developers"}	AWS with Regional Data Sovereignty Compliance	Reduces paper-based assessments and promotes sustainable educational practices	Improves educational quality and equity while strengthening teacher-student relationships and community engagement	{"Educational Assessment Algorithms","Real-time Feedback Technology","OECD-Local Standards Bridging Framework"}	0	Acquisition by major educational technology company or strategic partnership with international education organization	{"Educational Impact Dashboard","Student Retention Analytics","Teacher Performance Metrics","Parent Engagement Tracking"}	{"Student Retention Increase %","Parent Satisfaction Improvement %","Teacher Authoritarianism Reduction","Classroom Innovation Score"}	https://eduquality.com	https://eduquality.com/demo
15	BANK-ZERO	v2.0	/banking/bank-zero	https://bank-zero.com/app	https://bank-zero.com	BANK-ZERO - Digital Banking Platform (B2C & B2B)	1762402563	1762402563	Dual-platform fintech solution offering consumer digital banking with AI-driven tools and B2B banking infrastructure leasing for legacy system modernization, reducing costs by 50-60% across both segments.	For tech-savvy users, BANK-ZERO delivers instant loans, AI-driven budgeting, and smart investment tools—all with zero branch visits. Our fintech stack reduces fees by 50% compared to traditional banks, attracting 500k+ users in its first year. For banks modernizing legacy systems, BANK-ZERO offers a leasing model to deploy niche services (factoring, microloans) in weeks, not years. Clients like BancoRegional cut infrastructure costs by 60% while meeting regulatory demands via automated code generation.	/assets/logos/bank-zero.png	Fintech / Digital Banking	{web,mobile,api,enterprise}	AZTech Ventures Team	Dual License (B2C Free + B2B Leasing)	0	{Cross-platform,Banking-grade}	{"Payment Processors","Core Banking Systems","Regulatory APIs","Accounting Software","Investment Platforms"}	{Go,"React Native",PostgreSQL,Kubernetes,"AWS Financial Services"}	https://docs.bank-zero.com	{"Bank-grade Encryption","Multi-factor Authentication","Fraud Detection","Secure API Gateways"}	{"Banking Regulations","AML/KYC Compliance","Financial Authorities","Data Protection Laws"}	{"Transaction Fees","B2B Leasing Fees","Premium Features","Implementation Services"}	{"Tech-savvy Consumers","Traditional Banks","Credit Unions","Financial Institutions","Fintech Startups"}	{"App Stores","Banking Partnerships","Financial Advisors","Digital Marketing"}	Dual-platform banking solution: consumer-facing app with 50% lower fees and B2B leasing that cuts bank infrastructure costs by 60% through automated modernization.	{"B2C: Freemium + Premium Features","B2B: Leasing Model (Custom Pricing)","Enterprise: Revenue Share"}	{"Payment Processors","Financial Regulators","Banking Software Providers","Investment Platforms"}	{"Platform Development","Regulatory Compliance","Security Infrastructure","Customer Support","Bank Integration"}	{"24/7 Digital Support","Dedicated B2B Account Managers","Implementation Teams"}	Dual-market approach with proven traction: 500k+ B2C users in first year and 60% infrastructure cost reduction for B2B clients like BancoRegional.	https://bank-zero.com/roadmap	https://github.com/aztechventures/bank-zero	0	0	100	{"AI Model Training","Regulatory Compliance","Platform Scaling","Bank Integration","Risk Management"}	500000	85	25	3	0	{"\\"Cut our infrastructure costs by 60% while launching new services in weeks instead of years\\" - BancoRegional","\\"Finally a bank that understands digital natives - saved 50% on fees compared to my old bank\\" - Early User"}	{"Multi-region Financial-grade Backup","Disaster Recovery","Transaction Integrity"}	{en-US,es-MX,pt-BR,fr-FR}	{"Financial Accessibility Features","Screen Reader Compatible","High Contrast Banking"}	{"Banking Experts","AI Engineers","Regulatory Compliance","Platform Developers","Security Specialists"}	AWS Financial Services Compliant Regions	Reduces paper-based banking and branch energy consumption	Democratizes financial services access and enables traditional banks to serve underserved markets efficiently	{"Automated Code Generation Technology","AI Banking Algorithms","Legacy System Integration Patents"}	0	Acquisition by major financial institution or strategic partnership with global banking software provider	{"Banking Performance Dashboard","Regulatory Compliance Monitoring","User Engagement Analytics"}	{"B2C User Growth","B2B Cost Reduction %","Regulatory Compliance Rate","Transaction Volume","Infrastructure Deployment Speed"}	https://bank-zero.com	https://bank-zero.com/get-started
1	AZTech Ventures	1.0.2	/ventures/aztech-ventures	2024	https://aztechventures.com	AZTech Ventures: The Nexus for Impact Tech in Latin America	0	1764033832	Venture capital that connects Angel investors with tech entrepreneurs, leveraging open-source IT solutions to improve sustainability and community impact across finance, transportation and public health.	For stakeholders in high-impact economic, social, and ecological projects seeking technology-driven transformation, AZTech Ventures leverages open-source IT solutions to improve sustainability and community impact across finance, transportation, and public health. Unlike traditional investors, we focus on measurable outcomes: reducing carbon emissions by 20% in partner projects, increasing clean energy adoption in underserved regions, and scaling community-driven tech initiatives.	\N	Venture Capital / Impact Investing Platform	{web,mobile_ios}	AZTech Ventures Team	proprietary	0	{Cross-platform}	{"API for Investor Portals","Open-Source Library API","Impact Metrics Dashboard"}	{Go,PostgreSQL,React,AWS}	https://docs.aztechventures.com	{"Bank-grade Encryption","2-Factor Authentication","Secure Document Vault"}	{AML,KYC,"Local Mexican SEC Equivalents"}	{"Success Fees","Management Fees","Platform Membership Tiers"}	{"Angel Investors","Tech Entrepreneurs","Impact Funds"}	{"Direct Sales",Partnerships,"Industry Events","Digital Marketing"}	High-return impact investing de-risked through open-source technology and a curated Latin American deal flow. We connect conscious capital with vetted entrepreneurs to build sustainable, scalable businesses in a high-growth, peaceful region.	{"5% Success Fee on Funded Deals","1% Annual Management Fee for Fund Vehicles"}	{"Open-Source Foundations","Mexican Universities","Local Economic Development Hubs"}	{"Platform Development","Team Salaries","Marketing & Outreach","Legal & Compliance"}	{"Dedicated Deal Flow Manager","Exclusive Investor Events","Entrepreneur Support & Mentorship"}	First-mover focus on the Mexican & LATAM tech ecosystem. Deep local network combined with an open-source operational model that significantly reduces startup costs and time-to-market, creating higher potential returns for investors.	https://aztechventures.com/roadmap	https://github.com/aztechventures/platform	0	1	100	{"Deal Sourcing & Vetting","Investor Relations","Open-Source Library Curation","Impact Measurement"}	0	80	150	5	0	{"\\"The most promising deal flow in Mexico right now.\\" - Early Angel Investor"}	{"AWS S3 Cross-region replication","Daily Snapshots","RTO of 4 hours"}	{es-MX,en-US,pt-BR}	{"Screen Reader Compatible","Keyboard Navigation","High Contrast Mode"}	{"Investment Analysts","Platform Developers","Community Managers"}	AWS Mexico (Queretaro) Region	Directly targets a 20% reduction in carbon emissions for partner projects and promotes clean energy adoption through our portfolio.	Democratizing access to capital for Latin American entrepreneurs. Scaling community-driven tech initiatives in finance, transport, and public health to improve quality of life.	{"Proprietary Matching Algorithm","Brand & Trademarks"}	0	Position for acquisition by a major global private equity firm or financial institution in 7-10 years, or launch a successor fund.	{"Google Analytics 4",Mixpanel,"Custom Impact Dashboard"}	{"Deals Funded per Quarter","Average Investor ROI","Carbon Emissions Reduced (tons CO2)","Jobs Created in LATAM"}	https://aztechventures.com	https://aztechventures.com/invest
\.


--
-- Data for Name: companies; Type: TABLE DATA; Schema: public; Owner: jpassano
--

COPY public.companies (id, name, created, updated) FROM stdin;
1	BiblioData	1651945145	1651945145
2	Test company	1651956518	1651956518
1	BiblioData	1651945145	1651945145
2	Test company	1651956518	1651956518
1	BiblioData	1651945145	1651945145
2	Test company	1651956518	1651956518
\.


--
-- Data for Name: config; Type: TABLE DATA; Schema: public; Owner: jpassano
--

COPY public.config (id, name, value, created, updated) FROM stdin;
1	cookie_prefix	qls3_	\N	\N
2	max_username	15	\N	\N
3	min_username	2	\N	\N
4	max_password	15	\N	\N
5	min_password	4	\N	\N
6	cookie_path	/AutServer/	\N	\N
7	cookie_secure	0	\N	\N
8	cookie_length	1209600	\N	\N
9	cookie_domain	dev.bank-zero.com	\N	\N
10	max_tries	5	\N	\N
11	user_regex	/^[a-zA-Z_\\\\x7f-\\\\xff][a-zA-Z0-9_\\\\x7f-\\\\xff]*$/	\N	\N
12	security_image	yes	\N	\N
13	activation_type	0	\N	\N
14	login_redirect	/AutServer/admincp.php	\N	\N
15	logout_redirect	/AutServer/login.php	\N	\N
16	max_upload_size	1048576	\N	\N
17	auth_registration	0	\N	\N
18	current_version	3.1.11	\N	\N
19	redirect_type	1	\N	\N
20	online_users_format	{username}	\N	\N
21	online_users_separator	,	\N	\N
1	cookie_prefix	qls3_	\N	\N
2	max_username	15	\N	\N
3	min_username	2	\N	\N
4	max_password	15	\N	\N
5	min_password	4	\N	\N
6	cookie_path	/AutServer/	\N	\N
7	cookie_secure	0	\N	\N
8	cookie_length	1209600	\N	\N
9	cookie_domain	dev.bank-zero.com	\N	\N
10	max_tries	5	\N	\N
11	user_regex	/^[a-zA-Z_\\\\x7f-\\\\xff][a-zA-Z0-9_\\\\x7f-\\\\xff]*$/	\N	\N
12	security_image	yes	\N	\N
13	activation_type	0	\N	\N
14	login_redirect	/AutServer/admincp.php	\N	\N
15	logout_redirect	/AutServer/login.php	\N	\N
16	max_upload_size	1048576	\N	\N
17	auth_registration	0	\N	\N
18	current_version	3.1.11	\N	\N
19	redirect_type	1	\N	\N
20	online_users_format	{username}	\N	\N
21	online_users_separator	,	\N	\N
1	cookie_prefix	qls3_	\N	\N
2	max_username	15	\N	\N
3	min_username	2	\N	\N
4	max_password	15	\N	\N
5	min_password	4	\N	\N
6	cookie_path	/AutServer/	\N	\N
7	cookie_secure	0	\N	\N
8	cookie_length	1209600	\N	\N
9	cookie_domain	dev.bank-zero.com	\N	\N
10	max_tries	5	\N	\N
11	user_regex	/^[a-zA-Z_\\\\x7f-\\\\xff][a-zA-Z0-9_\\\\x7f-\\\\xff]*$/	\N	\N
12	security_image	yes	\N	\N
13	activation_type	0	\N	\N
14	login_redirect	/AutServer/admincp.php	\N	\N
15	logout_redirect	/AutServer/login.php	\N	\N
16	max_upload_size	1048576	\N	\N
17	auth_registration	0	\N	\N
18	current_version	3.1.11	\N	\N
19	redirect_type	1	\N	\N
20	online_users_format	{username}	\N	\N
21	online_users_separator	,	\N	\N
\.


--
-- Data for Name: dbs; Type: TABLE DATA; Schema: public; Owner: jpassano
--

COPY public.dbs (id, dsn, options, alt_dsn, created, updated) FROM stdin;
1	pgsql:host=127.0.0.1;port=5432;dbname=bzero_bz1001		pgsql:host=$host;port=5432;dbname=$db	1651163999	1716911277
2	pgsql:host=127.0.0.1;port=5432;dbname=bzero_bz2		pgsql:host=$host3;port=5432;dbname=$db	1651128014	1716911277
3	pgsql:host=127.0.0.1;port=5432;dbname=bzero_bz1002			1652888877	1716911277
1	pgsql:host=127.0.0.1;port=5432;dbname=bzero_bz1001		pgsql:host=$host;port=5432;dbname=$db	1651163999	1716911277
2	pgsql:host=127.0.0.1;port=5432;dbname=bzero_bz2		pgsql:host=$host3;port=5432;dbname=$db	1651128014	1716911277
3	pgsql:host=127.0.0.1;port=5432;dbname=bzero_bz1002			1652888877	1716911277
1	pgsql:host=127.0.0.1;port=5432;dbname=bzero_bz1001		pgsql:host=$host;port=5432;dbname=$db	1651163999	1716911277
2	pgsql:host=127.0.0.1;port=5432;dbname=bzero_bz2		pgsql:host=$host3;port=5432;dbname=$db	1651128014	1716911277
3	pgsql:host=127.0.0.1;port=5432;dbname=bzero_bz1002			1652888877	1716911277
\.


--
-- Data for Name: dbsauth; Type: TABLE DATA; Schema: public; Owner: jpassano
--

COPY public.dbsauth (id, name, db_id, grants, user_id, group_id, grants_options, created, updated) FROM stdin;
1	superuser	1	SELECT,INSERT,UPDATE,DELETE	1	1	1	1653752877	1716911277
2	ContaDev	1	select,insert	2	0	0	1653752877	1716911277
3	ContaDevAdmin	1	select, insert, update	3	2	0	1653752877	1716911277
4	ContaDev2	3	select,insert,update	3	0	1	1653752877	1716911277
1	superuser	1	SELECT,INSERT,UPDATE,DELETE	1	1	1	1653752877	1716911277
2	ContaDev	1	select,insert	2	0	0	1653752877	1716911277
3	ContaDevAdmin	1	select, insert, update	3	2	0	1653752877	1716911277
4	ContaDev2	3	select,insert,update	3	0	1	1653752877	1716911277
1	superuser	1	SELECT,INSERT,UPDATE,DELETE	1	1	1	1653752877	1716911277
2	ContaDev	1	select,insert	2	0	0	1653752877	1716911277
3	ContaDevAdmin	1	select, insert, update	3	2	0	1653752877	1716911277
4	ContaDev2	3	select,insert,update	3	0	1	1653752877	1716911277
\.


--
-- Data for Name: groups; Type: TABLE DATA; Schema: public; Owner: jpassano
--

COPY public.groups (id, name, profile_id, dbsauth_id, is_public, leader, expiration_date, lan, company_id, created, updated) FROM stdin;
1	Admin	1	0	t	0	\N	es	0	1653752877	1716911277
2	autuser	2	1	t	0	\N	es	0	1653752877	1716911277
1	Admin	1	0	t	0	\N	es	0	1653752877	1716911277
2	autuser	2	1	t	0	\N	es	0	1653752877	1716911277
1	Admin	1	0	t	0	\N	es	0	1653752877	1716911277
2	autuser	2	1	t	0	\N	es	0	1653752877	1716911277
\.


--
-- Data for Name: invitations; Type: TABLE DATA; Schema: public; Owner: jpassano
--

COPY public.invitations (id, used, code, created, updated) FROM stdin;
\.


--
-- Data for Name: password_requests; Type: TABLE DATA; Schema: public; Owner: jpassano
--

COPY public.password_requests (id, user_id, code, used, date, created, updated) FROM stdin;
\.


--
-- Data for Name: profiles; Type: TABLE DATA; Schema: public; Owner: jpassano
--

COPY public.profiles (id, name, app_ids, db_ids, created, updated) FROM stdin;
1	admin	all	all	1653752877	1716911277
2	director	1	1	1653752877	1716911277
3	manager	1	1	1653752877	1716911277
4	salesrep	1	1	1653752877	1716911277
5	accountant	1	1	1653752877	1716911277
6	project_leader	1	1	1653752877	1716911277
1	admin	all	all	1653752877	1716911277
2	director	1	1	1653752877	1716911277
3	manager	1	1	1653752877	1716911277
4	salesrep	1	1	1653752877	1716911277
5	accountant	1	1	1653752877	1716911277
6	project_leader	1	1	1653752877	1716911277
1	admin	all	all	1653752877	1716911277
2	director	1	1	1653752877	1716911277
3	manager	1	1	1653752877	1716911277
4	salesrep	1	1	1653752877	1716911277
5	accountant	1	1	1653752877	1716911277
6	project_leader	1	1	1653752877	1716911277
\.


--
-- Data for Name: security_image; Type: TABLE DATA; Schema: public; Owner: jpassano
--

COPY public.security_image (random_id, real_text, date, created, updated) FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: jpassano
--

COPY public.sessions (id, value, "time", db, created, updated) FROM stdin;
\N	dca7e953034d6ffda3006b79cb2da5a12cddda1f	20:48:38	\N	1653752877	1716911277
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: jpassano
--

COPY public.users (id, first_name, password, code, active, last_login, last_session, blocked, tries, last_try, email, profile_id, group_id, dbsauth_id, activation_time, last_action, last_app, last_db, lan, company_id, created, updated) FROM stdin;
1	jpassano	$2a$10$5z20bnzXmir2Tkx3R5tlkufgqkmmZHzuAWni80LVAy.ch.L9lkBvG	b3059fc8a92a6f3cbc863be325dafcc067a8caf1	t	1651945145	a898daa560f744136438654fbcc8fa2c25416376	f	0	1651945145	admin@example.com	1	1	0	1651945145	2022-05-07 17:39:05+00	1	2	es	1	1653752877	1716911277
2	felipep	$2a$10$O0m5UkQUgFrKfhJhlvCYGe3z1cQv.i1Rb04f0MKFYJyQA4Ymju6wu	888401144a858f50321cdc3913944eb0987dc902	t	1655746745	a898daa560f744136438654fbcc8fa2c25416376	f	0	1651945145	fperez@aztechventures.com	6	2	0	1651945145	2022-05-07 17:39:05+00	2	1	es	1	1653752877	1716911277
3	aescala	$2a$10$tO.JMVcRgEktbTpARXNz1enaTHx2A1JfaWkbxT/oz/kkKFpmEVHrS	afbb9fad6cc1822db8b6aa262504221680a67a7e	t	1657301945	dca7e953034d6ffda3006b79cb2da5a12cddda1f	f	0	1651945145	anaescala@gmail.com	6	2	0	1651945145	2022-05-07 17:39:05+00	1	1	es	2	1653752877	1716911277
1	jpassano	$2a$10$5z20bnzXmir2Tkx3R5tlkufgqkmmZHzuAWni80LVAy.ch.L9lkBvG	b3059fc8a92a6f3cbc863be325dafcc067a8caf1	t	1651945145	a898daa560f744136438654fbcc8fa2c25416376	f	0	1651945145	admin@example.com	1	1	0	1651945145	2022-05-07 17:39:05+00	1	2	es	1	1653752877	1716911277
2	felipep	$2a$10$O0m5UkQUgFrKfhJhlvCYGe3z1cQv.i1Rb04f0MKFYJyQA4Ymju6wu	888401144a858f50321cdc3913944eb0987dc902	t	1655746745	a898daa560f744136438654fbcc8fa2c25416376	f	0	1651945145	fperez@aztechventures.com	6	2	0	1651945145	2022-05-07 17:39:05+00	2	1	es	1	1653752877	1716911277
3	aescala	$2a$10$tO.JMVcRgEktbTpARXNz1enaTHx2A1JfaWkbxT/oz/kkKFpmEVHrS	afbb9fad6cc1822db8b6aa262504221680a67a7e	t	1657301945	dca7e953034d6ffda3006b79cb2da5a12cddda1f	f	0	1651945145	anaescala@gmail.com	6	2	0	1651945145	2022-05-07 17:39:05+00	1	1	es	2	1653752877	1716911277
1	jpassano	$2a$10$5z20bnzXmir2Tkx3R5tlkufgqkmmZHzuAWni80LVAy.ch.L9lkBvG	b3059fc8a92a6f3cbc863be325dafcc067a8caf1	t	1651945145	a898daa560f744136438654fbcc8fa2c25416376	f	0	1651945145	admin@example.com	1	1	0	1651945145	2022-05-07 17:39:05+00	1	2	es	1	1653752877	1716911277
2	felipep	$2a$10$O0m5UkQUgFrKfhJhlvCYGe3z1cQv.i1Rb04f0MKFYJyQA4Ymju6wu	888401144a858f50321cdc3913944eb0987dc902	t	1655746745	a898daa560f744136438654fbcc8fa2c25416376	f	0	1651945145	fperez@aztechventures.com	6	2	0	1651945145	2022-05-07 17:39:05+00	2	1	es	1	1653752877	1716911277
3	aescala	$2a$10$tO.JMVcRgEktbTpARXNz1enaTHx2A1JfaWkbxT/oz/kkKFpmEVHrS	afbb9fad6cc1822db8b6aa262504221680a67a7e	t	1657301945	dca7e953034d6ffda3006b79cb2da5a12cddda1f	f	0	1651945145	anaescala@gmail.com	6	2	0	1651945145	2022-05-07 17:39:05+00	1	1	es	2	1653752877	1716911277
\.


--
-- Name: apps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jpassano
--

SELECT pg_catalog.setval('public.apps_id_seq', 15, true);


--
-- Name: companies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jpassano
--

SELECT pg_catalog.setval('public.companies_id_seq', 2, true);


--
-- Name: config_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jpassano
--

SELECT pg_catalog.setval('public.config_id_seq', 21, true);


--
-- Name: dbs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jpassano
--

SELECT pg_catalog.setval('public.dbs_id_seq', 3, true);


--
-- Name: dbsauth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jpassano
--

SELECT pg_catalog.setval('public.dbsauth_id_seq', 4, true);


--
-- Name: groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jpassano
--

SELECT pg_catalog.setval('public.groups_id_seq', 2, true);


--
-- Name: invitations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jpassano
--

SELECT pg_catalog.setval('public.invitations_id_seq', 1, false);


--
-- Name: password_requests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jpassano
--

SELECT pg_catalog.setval('public.password_requests_id_seq', 1, false);


--
-- Name: profiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jpassano
--

SELECT pg_catalog.setval('public.profiles_id_seq', 6, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jpassano
--

SELECT pg_catalog.setval('public.users_id_seq', 3, true);


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

\unrestrict Hig6NRTUP6ADiN7cKdbap9yA30yLKgUj1nTybIp3M5rVQhMMd5ATjFgIynpra7y

