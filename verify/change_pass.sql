-- Verify flipr:change_pass on pg

BEGIN;

-- XXX Add verifications here.
DROP FUNCTION flipr.change_pass(TEXT, TEXT, TEXT);

ROLLBACK;
