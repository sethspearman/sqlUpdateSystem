
--PRINT BEGIN DDL SCRIPT
/*
put non-reentrant dml t-sql in this file.
*/

INSERT INTO [Carriers] ([CarrierID],[CarrierName],[SMSEmailAddress],[IsInternational],[IsPrimary])VALUES(1,'Bluegrass Cellular','{0}@sms.bluecell.com','0','1')
INSERT INTO [Carriers] ([CarrierID],[CarrierName],[SMSEmailAddress],[IsInternational],[IsPrimary])VALUES(2,'Sprint','{0}@messaging.sprintpcs.com','0','1')
INSERT INTO [Carriers] ([CarrierID],[CarrierName],[SMSEmailAddress],[IsInternational],[IsPrimary])VALUES(3,'T-Mobile','{0}@tmomail.net','0','1')
INSERT INTO [Carriers] ([CarrierID],[CarrierName],[SMSEmailAddress],[IsInternational],[IsPrimary])VALUES(4,'US Cellular','{0}@email.uscc.net','0','1')
INSERT INTO [Carriers] ([CarrierID],[CarrierName],[SMSEmailAddress],[IsInternational],[IsPrimary])VALUES(5,'Verizon','{0}@vtext.com','0','1')
INSERT INTO [Carriers] ([CarrierID],[CarrierName],[SMSEmailAddress],[IsInternational],[IsPrimary])VALUES(6,'Ntelos','{0}@pcs.ntelos.com','1','1')
INSERT INTO [Carriers] ([CarrierID],[CarrierName],[SMSEmailAddress],[IsInternational],[IsPrimary])VALUES(7,'Southern LINC','{0}@page.southernlinc.com','1','1')

INSERT INTO [Contacts] ([ContactName],[CarrierID]) VALUES ('Seth Spearman', 3)

GO


--PRINT END DML SCRIPT
