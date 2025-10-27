-- Migration script to add missing columns to the apps table
-- Run this against your existing database

BEGIN;

-- Add all missing columns to the apps table
ALTER TABLE public.apps ADD COLUMN description text DEFAULT '';
ALTER TABLE public.apps ADD COLUMN positioning_stmt character varying(255) DEFAULT '';
ALTER TABLE public.apps ADD COLUMN logo character varying(255) DEFAULT '';
ALTER TABLE public.apps ADD COLUMN category character varying(255) DEFAULT '';
ALTER TABLE public.apps ADD COLUMN platform text[] DEFAULT '{}';
ALTER TABLE public.apps ADD COLUMN developer character varying(255) DEFAULT '';
ALTER TABLE public.apps ADD COLUMN license_type character varying(255) DEFAULT '';
ALTER TABLE public.apps ADD COLUMN size bigint DEFAULT 0;
ALTER TABLE public.apps ADD COLUMN compatibility text[] DEFAULT '{}';
ALTER TABLE public.apps ADD COLUMN integration_capabilities text[] DEFAULT '{}';
ALTER TABLE public.apps ADD COLUMN development_stack text[] DEFAULT '{}';
ALTER TABLE public.apps ADD COLUMN api_documentation character varying(255) DEFAULT '';
ALTER TABLE public.apps ADD COLUMN security_features text[] DEFAULT '{}';
ALTER TABLE public.apps ADD COLUMN regulatory_compliance text[] DEFAULT '{}';
ALTER TABLE public.apps ADD COLUMN revenue_streams text[] DEFAULT '{}';
ALTER TABLE public.apps ADD COLUMN customer_segments text[] DEFAULT '{}';
ALTER TABLE public.apps ADD COLUMN channels text[] DEFAULT '{}';
ALTER TABLE public.apps ADD COLUMN value_proposition character varying(255) DEFAULT '';
ALTER TABLE public.apps ADD COLUMN pricing_tiers text[] DEFAULT '{}';
ALTER TABLE public.apps ADD COLUMN partnerships text[] DEFAULT '{}';
ALTER TABLE public.apps ADD COLUMN cost_structure text[] DEFAULT '{}';
ALTER TABLE public.apps ADD COLUMN customer_relationships text[] DEFAULT '{}';
ALTER TABLE public.apps ADD COLUMN unfair_advantage character varying(255) DEFAULT '';
ALTER TABLE public.apps ADD COLUMN roadmap character varying(255) DEFAULT '';
ALTER TABLE public.apps ADD COLUMN version_control character varying(255) DEFAULT '';
ALTER TABLE public.apps ADD COLUMN error_rate integer DEFAULT 0;
ALTER TABLE public.apps ADD COLUMN average_response_time integer DEFAULT 0;
ALTER TABLE public.apps ADD COLUMN uptime_percentage integer DEFAULT 0;
ALTER TABLE public.apps ADD COLUMN key_activities text[] DEFAULT '{}';
ALTER TABLE public.apps ADD COLUMN active_users integer DEFAULT 0;
ALTER TABLE public.apps ADD COLUMN user_retention_rate integer DEFAULT 0;
ALTER TABLE public.apps ADD COLUMN user_acquisition_cost integer DEFAULT 0;
ALTER TABLE public.apps ADD COLUMN churn_rate integer DEFAULT 0;
ALTER TABLE public.apps ADD COLUMN monthly_recurring_revenue integer DEFAULT 0;
ALTER TABLE public.apps ADD COLUMN user_feedback text[] DEFAULT '{}';
ALTER TABLE public.apps ADD COLUMN backup_recovery_options text[] DEFAULT '{}';
ALTER TABLE public.apps ADD COLUMN localization_support text[] DEFAULT '{}';
ALTER TABLE public.apps ADD COLUMN accessibility_features text[] DEFAULT '{}';
ALTER TABLE public.apps ADD COLUMN team_structure text[] DEFAULT '{}';
ALTER TABLE public.apps ADD COLUMN data_backup_location character varying(255) DEFAULT '';
ALTER TABLE public.apps ADD COLUMN environmental_impact character varying(255) DEFAULT '';
ALTER TABLE public.apps ADD COLUMN social_impact character varying(255) DEFAULT '';
ALTER TABLE public.apps ADD COLUMN intellectual_property text[] DEFAULT '{}';
ALTER TABLE public.apps ADD COLUMN fundings_investment integer DEFAULT 0;
ALTER TABLE public.apps ADD COLUMN exit_strategy character varying(255) DEFAULT '';
ALTER TABLE public.apps ADD COLUMN analytics_tools text[] DEFAULT '{}';
ALTER TABLE public.apps ADD COLUMN key_metrics text[] DEFAULT '{}';
ALTER TABLE public.apps ADD COLUMN url character varying(255) DEFAULT '';
ALTER TABLE public.apps ADD COLUMN landing_page character varying(255) DEFAULT '';

-- Update the created and updated columns to have NOT NULL constraints and defaults
ALTER TABLE public.apps ALTER COLUMN created SET NOT NULL;
ALTER TABLE public.apps ALTER COLUMN created SET DEFAULT 0;
ALTER TABLE public.apps ALTER COLUMN updated SET NOT NULL;
ALTER TABLE public.apps ALTER COLUMN updated SET DEFAULT 0;

-- Update the name column to have a default value
ALTER TABLE public.apps ALTER COLUMN name SET DEFAULT '';

COMMIT;