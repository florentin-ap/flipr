-- Verify flipr:insert_flip on pg

BEGIN;

-- XXX Add verifications here.
SELECT has_function_privilege('flipr.insert_flip(text, text)', 'execute');


ROLLBACK;
