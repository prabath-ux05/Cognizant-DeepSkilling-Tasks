create or replace trigger updatecustomerlastmodified before
   update on customers
   for each row
begin
   :new.lastmodified := sysdate;
end;
/

create table auditlog (
   logid   number,
   message varchar2(200)
);

create or replace trigger logtransaction after
   insert on transactions
   for each row
begin
   insert into auditlog values ( :new.transactionid,
                                 'Transaction Added' );

end;
/

create or replace trigger checktransactionrules before
   insert on transactions
   for each row
declare
   v_balance number;
begin
   select balance
     into v_balance
     from accounts
    where accountid = :new.accountid;

   if
      :new.transactiontype = 'Withdrawal'
      and :new.amount > v_balance
   then
      raise_application_error(
         -20001,
         'Insufficient Balance'
      );
   end if;

end;
/