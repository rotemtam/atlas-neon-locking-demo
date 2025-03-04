-- Create "gigantic_user_table" table
CREATE TABLE "gigantic_user_table" ("id" integer NOT NULL GENERATED ALWAYS AS IDENTITY, "name" text NOT NULL, "email" text NOT NULL, "created_at" timestamp NOT NULL, "updated_at" timestamp NULL, "is_active" boolean NOT NULL DEFAULT true, PRIMARY KEY ("id"));
