create or replace function calculateage (
   p_dob date
) return number is
begin
   return floor(months_between(
      sysdate,
      p_dob
   ) / 12);
end;
/

create or replace function calculatemonthlyinstallment (
   p_loan  number,
   p_rate  number,
   p_years number
) return number is
begin
   return ( p_loan + ( p_loan * p_rate / 100 ) ) / ( p_years * 12 );
end;
/

create or replace function hassufficientbalance (
   p_acc number,
   p_amt number
) return number is
   v_balance number;
begin
   select balance
     into v_balance
     from accounts
    where accountid = p_acc;

   if v_balance >= p_amt then
      return 1;
   else
      return 0;
   end if;
end;
/