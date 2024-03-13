create or replace trigger vpd_admin.trg_vpd
   after logon on database
declare
   v_dep_id data_owner.department.dep_id%type;
begin

   select
      dep_id into v_dep_id
   from
      data_owner.employee
   where
      upper(name) = user;

   pck_vpd.set_dep_id(v_dep_id);
end;
/
