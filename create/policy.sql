begin
--
-- Requires
--    administer row level security policy on schema data_owner
-- privilage
--
   sys.dbms_rls.add_policy  (
      object_schema          => 'DATA_OWNER',
      object_name            => 'department_secrets',
      policy_name            => 'pol_dept_secrets',
      function_schema        => 'VPD_ADMIN',
      policy_function        => 'pck_vpd.predicate',
      statement_types        => 'select,update,delete'
   );
end;
/
