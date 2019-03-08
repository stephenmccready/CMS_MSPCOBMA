Create Table dbo.luCOBValidity (
	COBValidityCode char(1) Not Null
,	COBValidityDescription VarChar(64)
,	Primary Key (COBValidityCode)
)

Create Index ix_COBValidityCode On luCOBValidity(COBValidityCode)

Insert Into luCOBValidity Select 'I' As COBValidityCode, 'FI/Carrier added occurrence' As COBValidityDescription
Insert Into luCOBValidity Select 'N' As COBValidityCode, 'Beneficiary does not have MSP coverage' As COBValidityDescription
Insert Into luCOBValidity Select 'Y' As COBValidityCode, 'COBC added' As COBValidityDescription
Insert Into luCOBValidity Select ' ' As COBValidityCode, 'Unknown' As COBValidityDescription
