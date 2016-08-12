
--PRINT BEGIN DDL SCRIPT
/*
put non-reentrant ddl t-sql in this file.
*/

CREATE TABLE dbo.Carriers
(
	CarrierName varchar(50) NULL,
	SMSEmailAddress varchar(50) NULL,
	IsInternational varchar(50) NULL,
	IsPrimary varchar(50) NULL
) 

GO


--PRINT END DDL SCRIPT
