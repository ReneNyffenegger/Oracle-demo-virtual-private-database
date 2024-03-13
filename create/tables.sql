connect data_owner/secretGarden@&dbService

create table data_owner.department (
   dep_id  int primary key,
   name    varchar2(30)
);

create table data_owner.employee (
   dep_id  references department,
   name    varchar2(30)
);

create table data_owner.department_secrets (
   dep_id references department,
   secret varchar2(30)
);

grant select on department to vpd_admin;
grant select on employee   to vpd_admin;

grant all on department_secrets to frank;
grant all on department_secrets to peter;
grant all on department_secrets to julia;
