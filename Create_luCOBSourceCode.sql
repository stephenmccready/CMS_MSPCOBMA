Create Table dbo.luCOBSourceCode (
	COBSourceCodeCode char(2) Not Null
,	COBSourceCodeDescription VarChar(64)
,	Primary Key (COBSourceCodeCode)
)

Create Index ix_COBSourceCodeCode On luCOBSourceCode(COBSourceCodeCode)

Insert Into luCOBSourceCode Select 'A' As COBSourceCodeCode, 'Claim Processing' As COBSourceCodeDescription
Insert Into luCOBSourceCode Select 'B' As COBSourceCodeCode, 'IRS/SSA/CMS Data Match' As COBSourceCodeDescription
Insert Into luCOBSourceCode Select 'C' As COBSourceCodeCode, 'First Claim Development' As COBSourceCodeDescription
Insert Into luCOBSourceCode Select 'D' As COBSourceCodeCode, 'IRS/SSA/CMS Data Match II' As COBSourceCodeDescription
Insert Into luCOBSourceCode Select 'E' As COBSourceCodeCode, 'Black Lung (DOL)' As COBSourceCodeDescription
Insert Into luCOBSourceCode Select 'F' As COBSourceCodeCode, 'Veterans (VA)' As COBSourceCodeDescription
Insert Into luCOBSourceCode Select 'G' As COBSourceCodeCode, 'Other Data Matches' As COBSourceCodeDescription
Insert Into luCOBSourceCode Select 'H' As COBSourceCodeCode, 'Workers Compensation' As COBSourceCodeDescription
Insert Into luCOBSourceCode Select 'I' As COBSourceCodeCode, 'Notified by Beneficiary' As COBSourceCodeDescription
Insert Into luCOBSourceCode Select 'J' As COBSourceCodeCode, 'Notified by Provider' As COBSourceCodeDescription
Insert Into luCOBSourceCode Select 'K' As COBSourceCodeCode, 'Notified by Insurer' As COBSourceCodeDescription
Insert Into luCOBSourceCode Select 'L' As COBSourceCodeCode, 'Notified by Employer' As COBSourceCodeDescription
Insert Into luCOBSourceCode Select 'M' As COBSourceCodeCode, 'Notified by Attorney' As COBSourceCodeDescription
Insert Into luCOBSourceCode Select 'N' As COBSourceCodeCode, 'Notified by Group Health Plan/Primary Payer' As COBSourceCodeDescription
Insert Into luCOBSourceCode Select 'O' As COBSourceCodeCode, 'Initial Enrollment Questionnaire' As COBSourceCodeDescription
Insert Into luCOBSourceCode Select 'P' As COBSourceCodeCode, 'HMP Rate Cell Adjustment' As COBSourceCodeDescription
Insert Into luCOBSourceCode Select 'Q' As COBSourceCodeCode, 'Voluntary Insurer Reporting' As COBSourceCodeDescription
Insert Into luCOBSourceCode Select 'S' As COBSourceCodeCode, 'Miscellaneous Reporting' As COBSourceCodeDescription
Insert Into luCOBSourceCode Select 'T' As COBSourceCodeCode, 'IRS/SSA/CMS Data Match III' As COBSourceCodeDescription
Insert Into luCOBSourceCode Select 'U' As COBSourceCodeCode, 'IRS/SSA/CMS Data Match IV' As COBSourceCodeDescription
Insert Into luCOBSourceCode Select 'V' As COBSourceCodeCode, 'IRS/SSA/CMS Data Match V' As COBSourceCodeDescription
Insert Into luCOBSourceCode Select 'W' As COBSourceCodeCode, 'IRS/SSA/CMS Data Match VI' As COBSourceCodeDescription
Insert Into luCOBSourceCode Select 'X' As COBSourceCodeCode, 'Self reports' As COBSourceCodeDescription
Insert Into luCOBSourceCode Select 'Y' As COBSourceCodeCode, '411.25' As COBSourceCodeDescription
Insert Into luCOBSourceCode Select '  ' As COBSourceCodeCode, 'Unknown' As COBSourceCodeDescription
Insert Into luCOBSourceCode Select '0' As COBSourceCodeCode, 'COB Contractor' As COBSourceCodeDescription
Insert Into luCOBSourceCode Select '1' As COBSourceCodeCode, 'Initial Enrollment questionnaire' As COBSourceCodeDescription
Insert Into luCOBSourceCode Select '2' As COBSourceCodeCode, 'IRS/SSA/CMS/data match' As COBSourceCodeDescription
Insert Into luCOBSourceCode Select '3' As COBSourceCodeCode, 'HMP Rate cell' As COBSourceCodeDescription
Insert Into luCOBSourceCode Select '4' As COBSourceCodeCode, 'Litigation Settlement' As COBSourceCodeDescription
Insert Into luCOBSourceCode Select '5' As COBSourceCodeCode, 'Employer Voluntary Reporting' As COBSourceCodeDescription
Insert Into luCOBSourceCode Select '6' As COBSourceCodeCode, 'Insurer Voluntary Reporting' As COBSourceCodeDescription
Insert Into luCOBSourceCode Select '7' As COBSourceCodeCode, 'First Claim Development' As COBSourceCodeDescription
Insert Into luCOBSourceCode Select '8' As COBSourceCodeCode, 'Trauma Code Development' As COBSourceCodeDescription
Insert Into luCOBSourceCode Select '9' As COBSourceCodeCode, 'Secondary Claims Investigation' As COBSourceCodeDescription
Insert Into luCOBSourceCode Select '10' As COBSourceCodeCode, 'Self Reports' As COBSourceCodeDescription
Insert Into luCOBSourceCode Select '11' As COBSourceCodeCode, '411.25' As COBSourceCodeDescription
Insert Into luCOBSourceCode Select '12' As COBSourceCodeCode, 'BC/BS Voluntary Agreements' As COBSourceCodeDescription
Insert Into luCOBSourceCode Select '13' As COBSourceCodeCode, 'Office of Personnel Management (OPM)' As COBSourceCodeDescription
Insert Into luCOBSourceCode Select '14' As COBSourceCodeCode, 'Workmens Compensation (WC) Data match' As COBSourceCodeDescription
Insert Into luCOBSourceCode Select '25' As COBSourceCodeCode, 'Recovery Audit Contractor (California)' As COBSourceCodeDescription
Insert Into luCOBSourceCode Select '26' As COBSourceCodeCode, 'Recovery Audit Contractor (Florida)' As COBSourceCodeDescription
