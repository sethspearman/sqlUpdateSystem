Print 'Creating View dbo.vw_Carriers.....'
go

if object_id( 'dbo.vw_Carriers' ) is not null
	drop view dbo.vw_Carriers
go


create view dbo.vw_Carriers
as
select * from Carriers
      
go
      
	  

--GRANT SELECT ON dbo.vw_Carriers TO myuser
--go
