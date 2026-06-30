-- Scenario 1

begin
   for cust in (
      select customerid,
             balance
        from customers
   ) loop
      if cust.balance > 10000 then
         dbms_output.put_line('VIP Customer: ' || cust.customerid);
      end if;
   end loop;
end;
/

-- Scenario 1

begin
   for cust in (
      select customerid,
             balance
        from customers
   ) loop
      if cust.balance > 10000 then
         dbms_output.put_line('VIP Customer: ' || cust.customerid);
      end if;
   end loop;
end;
/

-- Scenario 3

begin
   update accounts
      set
      balance = balance * 1.01;

   dbms_output.put_line('Interest Applied Successfully');
end;
/