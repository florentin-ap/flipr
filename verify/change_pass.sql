-- Verify flipr:change_pass on pg

BEGIN;

-- XXX Add verifications here.
-- DROP FUNCTION flipr.change_pass(TEXT, TEXT, TEXT);
SELECT has_function_privilege('flipr.change_pass(text, text, text)', 'execute');

SELECT 1/COUNT(*)
  FROM pg_catalog.pg_proc
 WHERE proname = 'change_pass'
   AND pg_get_functiondef(oid) LIKE $$%crypt($3, gen_salt('md5'))%$$;


ROLLBACK;
