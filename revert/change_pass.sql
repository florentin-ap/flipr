-- Revert flipr:change_pass from pg

BEGIN;

-- XXX Add DDLs here.
BEGIN;
DROP FUNCTION flipr.change_pass(TEXT, TEXT, TEXT);
COMMIT;

COMMIT;
