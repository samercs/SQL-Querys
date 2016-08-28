select * from DriverNotificationLogs
select * from serviceRequests where serviceRequestId=161
update DriverStatus set status=2 where DriverId='e45acb70-188d-40db-bef7-985f21896897'
update serviceRequests set status=2, driverId=null  where serviceRequestId=161
delete from DriverNotificationLogs where serviceRequestId=161 and DriverId='e45acb70-188d-40db-bef7-985f21896897'
insert into DriverNotificationLogs (DriverId, serviceRequestId, status, UpdatedUtc) values('e45acb70-188d-40db-bef7-985f21896897', 161, 1, GetDate())