
--PRINT BEGIN DDL SCRIPT
/*
put non-reentrant ddl t-sql in this file.
*/

--normally would not do DML into this script but  in this case (since i am only a demo) I'll roll with it.
DELETE FROM Carriers
GO

ALTER TABLE dbo.Carriers
(
	ADD CarrierID INT NOT NULL PRIMARY
)
GO

CREATE TABLE dbo.Contacts
(
	ContactName NVARCHAR(50) NOT NULL,
	CarrierID INT NOT NULL CONSTRAINT myFK FOREIGN KEY REFERENCES Carriers (CarrierID),
	MobilePhoneNumber NVARCHAR(15) NULL
)



--PRINT END DDL SCRIPT
