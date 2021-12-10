-- Deploy flipr:pgcrypto to pg

BEGIN;

-- XXX Add DDLs here.
CREATE EXTENSION pgcrypto;

COMMIT;
