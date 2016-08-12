Print 'Creating dbo.usp_SelectCarrierList.....'
go

if object_id( 'dbo.usp_SelectCarrierList' ) is not null
	drop procedure dbo.usp_SelectCarrierList
go

create procedure dbo.usp_SelectCarrierList
    @partialCarrierName nvarchar(256) = null
as
    set nocount on

    if @partialCarrierName is null set @partialCarrierName = '%'


    select * from vw_Carriers WHERE CarrierName like @partialCarrierName


go


--GRANT EXECUTE ON dbo.usp_SelectCarrierList TO myuser 
--go
