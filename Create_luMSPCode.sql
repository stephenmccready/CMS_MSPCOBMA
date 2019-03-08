Create Table dbo.luMSPCode (
	MSPCode char(1) Not Null
,	MSPDescription VarChar(64)
,	CrosswalkValue VarChar(2)
,	Primary Key (MSPCode)
)

Create Index ix_MSPCode On luMSPCode(MSPCode)

Insert Into luMSPCode Select 'A' As MSPCode, 'Working Aged' As MSPDescription, '12' As CrosswalkValue
Insert Into luMSPCode Select 'B' As MSPCode, 'ESRD' As MSPDescription, '13' As CrosswalkValue
Insert Into luMSPCode Select 'D' As MSPCode, 'No-Fault'  As MSPDescription, '14' As CrosswalkValue
Insert Into luMSPCode Select 'E' As MSPCode, 'Workers’ Compensation' As MSPDescription, '15' As CrosswalkValue
Insert Into luMSPCode Select 'F' As MSPCode, 'Federal (Public Health)' As MSPDescription, '16' As CrosswalkValue
Insert Into luMSPCode Select 'G' As MSPCode, 'Disabled' As MSPDescription, '43' As CrosswalkValue
Insert Into luMSPCode Select 'H' As MSPCode, 'Black Lung' As MSPDescription, '41' As CrosswalkValue
Insert Into luMSPCode Select 'I' As MSPCode, 'Veterans' As MSPDescription, '42' As CrosswalkValue
Insert Into luMSPCode Select 'L' As MSPCode, 'Liability' As MSPDescription, '47' As CrosswalkValue
Insert Into luMSPCode Select 'W' As MSPCode, 'Worker’s Compensation Set Aside' As MSPDescription, '12' As CrosswalkValue
