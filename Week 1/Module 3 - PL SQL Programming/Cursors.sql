--scenario - 1

declare
   cursor c_accounts is
   select accountid,
          balance
     from accounts;

   v_accountid accounts.accountid%type;
   v_balance   accounts.balance%type;
begin
   open c_accounts;
   loop
      fetch c_accounts into
         v_accountid,
         v_balance;
      exit when c_accounts%notfound;
      dbms_output.put_line('Monthly Statement -> Account ID: '
                           || v_accountid
                           || ' | Balance: ' || v_balance);
   end loop;

   close c_accounts;
end;
/

--scenario - 2

declare
   cursor c_accounts is
   select accountid
     from accounts;

   v_accountid accounts.accountid%type;
begin
   open c_accounts;
   loop
      fetch c_accounts into v_accountid;
      exit when c_accounts%notfound;
      update accounts
         set
         balance = balance - 100
       where accountid = v_accountid;

      dbms_output.put_line('Annual Fee Applied to Account: ' || v_accountid);
   end loop;

   close c_accounts;
end;
/
--scenario - 3

declare
   cursor c_loans is
   select loanid
     from loans;

   v_loanid loans.loanid%type;
begin
   open c_loans;
   loop
      fetch c_loans into v_loanid;
      exit when c_loans%notfound;
      update loans
         set
         interestrate = interestrate + 0.5
       where loanid = v_loanid;

      dbms_output.put_line('Interest Updated for Loan: ' || v_loanid);
   end loop;

   close c_loans;
end;
/