select CAST(t1.CHECKTIME AS DATE) , t3.Badgenumber, t3.Name,t3.lastname, max(t1.CHECKTIME) as checkout, min(t1.CHECKTIME) as checkin  from CHECKINOUT t1 
inner join Machines t2 on t1.sn = t2.sn
inner join USERINFO t3 on t1.USERID = t3.USERID
group by CAST(t1.CHECKTIME AS DATE),t3.Badgenumber,t3.Name,t3.lastname
order by CAST(t1.CHECKTIME AS DATE) desc

