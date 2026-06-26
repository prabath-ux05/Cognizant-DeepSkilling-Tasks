insert into customers (
   customerid,
   name,
   dob,
   balance,
   lastmodified
) values ( 1,
           'John Doe',
           to_date('1985-05-15','YYYY-MM-DD'),
           1000,
           sysdate );

insert into customers (
   customerid,
   name,
   dob,
   balance,
   lastmodified
) values ( 2,
           'Jane Smith',
           to_date('1990-07-20','YYYY-MM-DD'),
           1500,
           sysdate );

insert into accounts (
   accountid,
   customerid,
   accounttype,
   balance,
   lastmodified
) values ( 1,
           1,
           'Savings',
           1000,
           sysdate );

insert into accounts (
   accountid,
   customerid,
   accounttype,
   balance,
   lastmodified
) values ( 2,
           2,
           'Checking',
           1500,
           sysdate );

insert into transactions (
   transactionid,
   accountid,
   transactiondate,
   amount,
   transactiontype
) values ( 1,
           1,
           sysdate,
           200,
           'Deposit' );

insert into transactions (
   transactionid,
   accountid,
   transactiondate,
   amount,
   transactiontype
) values ( 2,
           2,
           sysdate,
           300,
           'Withdrawal' );

insert into loans (
   loanid,
   customerid,
   loanamount,
   interestrate,
   startdate,
   enddate
) values ( 1,
           1,
           5000,
           5,
           sysdate,
           add_months(
              sysdate,
              60
           ) );

insert into employees (
   employeeid,
   name,
   position,
   salary,
   department,
   hiredate
) values ( 1,
           'Alice Johnson',
           'Manager',
           70000,
           'HR',
           to_date('2015-06-15','YYYY-MM-DD') );

insert into employees (
   employeeid,
   name,
   position,
   salary,
   department,
   hiredate
) values ( 2,
           'Bob Brown',
           'Developer',
           60000,
           'IT',
           to_date('2017-03-20','YYYY-MM-DD') );