-- sqlcl /nolog @run

set feedback off
set verify   off
set serveroutput on

define dbService=localhost:1533/freepdb1
define sysPw=elCarosSecret

define tablespaceName=users

@ create/users
@ create/tables
@ insert-data

@ create/vpd-package
@ create/trigger
@ create/policy

@ frank
@ julia
@ peter

@ cleanup

exit
