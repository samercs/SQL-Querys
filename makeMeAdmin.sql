declare @userId nvarchar(128)
declare @admin nvarchar(128)
select @userId = id  from AspNetUsers where Email ='samer_mail_2006@yahoo.com'
select @admin = id  from AspNetRoles where Name ='Administrator'
insert into AspNetUserRoles(UserId,RoleId) values(@userId, @admin);


