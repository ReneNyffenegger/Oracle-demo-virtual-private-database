connect vpd_admin/secretGarden@&dbService

create or replace package vpd_admin.pck_vpd
   authid definer
as
   dep_id data_owner.department.dep_id%type;

   procedure set_dep_id(v_dep_id data_owner.department.dep_id%type);

   function predicate (obj_schema varchar2, obj_name varchar2) return varchar2;
end pck_vpd;
/

create or replace package body vpd_admin.pck_vpd as

   procedure set_dep_id(v_dep_id data_owner.department.dep_id%type) is
   begin
      dep_id := v_dep_id;
   end set_dep_id;


   function predicate(obj_schema varchar2, obj_name varchar2) return varchar2 is
   begin
      return 'dep_id = ' || dep_id;
   end predicate;

end pck_vpd;
/
