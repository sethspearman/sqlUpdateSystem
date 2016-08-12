
--PRINT BEGIN DDL SCRIPT
/*
put non-reentrant dml t-sql in this file.
*/

INSERT INTO [Carriers] ([CarrierName],[SMSEmailAddress],[IsInternational],[IsPrimary])VALUES('Bluegrass Cellular','{0}@sms.bluecell.com','0','1')
INSERT INTO [Carriers] ([CarrierName],[SMSEmailAddress],[IsInternational],[IsPrimary])VALUES('Sprint','{0}@messaging.sprintpcs.com','0','1')
INSERT INTO [Carriers] ([CarrierName],[SMSEmailAddress],[IsInternational],[IsPrimary])VALUES('T-Mobile','{0}@tmomail.net','0','1')
INSERT INTO [Carriers] ([CarrierName],[SMSEmailAddress],[IsInternational],[IsPrimary])VALUES('US Cellular','{0}@email.uscc.net','0','1')
INSERT INTO [Carriers] ([CarrierName],[SMSEmailAddress],[IsInternational],[IsPrimary])VALUES('Verizon','{0}@vtext.com','0','1')
INSERT INTO [Carriers] ([CarrierName],[SMSEmailAddress],[IsInternational],[IsPrimary])VALUES('Ntelos','{0}@pcs.ntelos.com','1','1')
INSERT INTO [Carriers] ([CarrierName],[SMSEmailAddress],[IsInternational],[IsPrimary])VALUES('Southern LINC','{0}@page.southernlinc.com','1','1')

GO


--PRINT END DML SCRIPT
