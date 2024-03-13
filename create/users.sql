connect sys/&sysPw@&dbService as sysdba

create user vpd_admin  identified by secretGarden;

create user data_owner
   default   tablespace &tablespaceName
   temporary tablespace temp
   identified by secretGarden
   quota unlimited on &tablespaceName;


grant
   connect,
   create table
to
   data_owner;

grant
   connect,
   create procedure,
   create trigger,
   administer database trigger -- Required for 'after logon to database' trigger.
to
   vpd_admin;

grant
   administer row level security policy on schema data_owner
to
   vpd_admin;

grant
   execute on dbms_rls
to
   vpd_admin;


create user frank identified by secretGarden;
create user peter identified by secretGarden;
create user julia identified by secretGarden;

grant create session to frank;
grant create session to peter;
grant create session to julia;
