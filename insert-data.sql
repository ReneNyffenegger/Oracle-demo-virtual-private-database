begin
   insert into department values (1, 'Research and Development');
   insert into department values (2, 'Sales'                   );
   insert into department values (3, 'Human Resources'         );

   insert into employee values (2, 'Peter');
   insert into employee values (3, 'Julia');
   insert into employee values (3, 'Sandy');
   insert into employee values (1, 'Frank');
   insert into employee values (2, 'Eric' );
   insert into employee values (1, 'Joel' );

   insert into department_secrets values (1, 'R+D Secret #1'  );
   insert into department_secrets values (1, 'R+D Secret #2'  );
   insert into department_secrets values (2, 'Sales Secret #1');
   insert into department_secrets values (2, 'Sales Secret #2');
   insert into department_secrets values (3, 'HR Secret #1'   );
   insert into department_secrets values (3, 'HR Secret #2'   );

   commit;
end;
/
