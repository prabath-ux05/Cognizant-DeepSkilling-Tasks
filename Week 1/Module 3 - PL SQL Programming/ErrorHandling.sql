-- Scenario 1

declare
   v_balance number;
begin
   select balance
     into v_balance
     from accounts
    where accountid = 999;

exception
   when no_data_found then
      dbms_output.put_line('Account Not Found');
end;
/

-- Scenario 2

declare
   v_result number;
begin
   v_result := 100 / 0;
exception
   when zero_divide then
      dbms_output.put_line('Cannot Divide by Zero');
end;
/

-- Scenario 3

begin
   update accounts
      set
      balance = balance + 100;

exception
   when others then
      dbms_output.put_line(sqlerrm);
end;
/