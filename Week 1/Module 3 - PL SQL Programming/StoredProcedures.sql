create or replace procedure addcustomer (
   p_id      number,
   p_name    varchar2,
   p_dob     date,
   p_balance number
) as
begin
   insert into customers values ( p_id,
                                  p_name,
                                  p_dob,
                                  p_balance,
                                  sysdate );

end;
/

create or replace procedure updateemployeebonus (
   p_dept  varchar2,
   p_bonus number
) as
begin
   update employees
      set
      salary = salary + p_bonus
    where department = p_dept;

end;
/

create or replace procedure transferfunds (
   p_from   number,
   p_to     number,
   p_amount number
) as
   v_balance number;
begin
   select balance
     into v_balance
     from accounts
    where accountid = p_from;

   if v_balance >= p_amount then
      update accounts
         set
         balance = balance - p_amount
       where accountid = p_from;

      update accounts
         set
         balance = balance + p_amount
       where accountid = p_to;

   end if;

end;
/