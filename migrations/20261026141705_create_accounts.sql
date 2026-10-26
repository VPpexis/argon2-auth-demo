-- Create "accounts" table
CREATE TABLE "accounts" (
  "id" bigint NOT NULL GENERATED ALWAYS AS IDENTITY,
  "username" text NOT NULL,
  "created_at" timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY ("id"),
  CONSTRAINT "accounts_username_key" UNIQUE ("username")
);
