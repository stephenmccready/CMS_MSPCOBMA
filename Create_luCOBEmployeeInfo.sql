Create Table dbo.luCOBEmployeeInfo (
	COBEmployeeInfoCode char(1) Not Null
,	COBEmployeeInfoDescription VarChar(64)
,	Primary Key (COBEmployeeInfoCode)
)

Create Index ix_COBEmployeeInfoCode On luCOBEmployeeInfo(COBEmployeeInfoCode)

Insert Into luCOBEmployeeInfo Select 'P' As COBEmployeeInfoCode, 'Patient' As COBEmployeeInfoDescription
Insert Into luCOBEmployeeInfo Select 'S' As COBEmployeeInfoCode, 'Spouse' As COBEmployeeInfoDescription
Insert Into luCOBEmployeeInfo Select 'M' As COBEmployeeInfoCode, 'Mother' As COBEmployeeInfoDescription
Insert Into luCOBEmployeeInfo Select 'F' As COBEmployeeInfoCode, 'Father' As COBEmployeeInfoDescription
