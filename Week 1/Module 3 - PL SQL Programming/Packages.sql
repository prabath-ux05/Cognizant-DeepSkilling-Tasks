create or replace package customermanagement as
   procedure addcustomer (
      p_id   number,
      p_name varchar2
   );

   function getbalance (
      p_id number
   ) return number;

end;
/

create or replace package body customermanagement as

   procedure addcustomer (
      p_id   number,
      p_name varchar2
   ) is
   begin
      insert into customers (
         customerid,
         name
      ) values ( p_id,
                 p_name );

   end;

   function getbalance (
      p_id number
   ) return number is
      v_balance number;
   begin
      select balance
        into v_balance
        from customers
       where customerid = p_id;

      return v_balance;
   end;

end;
/