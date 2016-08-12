Print 'Creating dbo.fn_contactTextingEmail.....'
go

if object_id( 'dbo.fn_contactTextingEmail' ) is not null
	drop function dbo.fn_contactTextingEmail
go
 
create function dbo.fn_contactTextingEmail( @CarrierID int, @mobilePhoneNumber NVARCHAR(15))
returns nvarchar(50)
as
begin  
	declare @returnValue   nvarchar(50)
	
    SET @returnValue = ''

    --make sure this is a valid League ID
    if @mobilePhoneNumber Is Not null
        begin
            SELECT TOP 1 @returnValue = c.SMSEmailAddress FROM Carriers WHERE CarrierID=@CarrierID;
            SELECT @returnValue = REPLACE(@returnValue,'{0}',@mobilePhoneNumber)
        end
    
    return @returnValue 
end 
go


--GRANT EXECUTE ON dbo.fn_contactTextingEmail TO myuser
--go