
/*write a user defined functions  which takes 2 input parameters of DATE data type. 
The function should return no of business days between the 2 dates. */


create function busdat(@first_day date , @last_day date )
returns int
as 
begin 
return (select datediff(day,@first_day,@last_day)+1 -2*datediff(week,@first_day,@last_day))
end

select dbo.busdat('2023-10-16', '2023-10-22')  as Business_days 