Create Table dbo.luInsurerType (
	InsurerTypeCode char(1) Not Null
,	InsurerTypeDescription VarChar(128)
,	Primary Key (InsurerTypeCode)
)

Create Index ix_InsurerTypeCode On luInsurerType(InsurerTypeCode)

Insert Into luInsurerType Select 'A' As InsurerTypeCode, 'Insurance or indemnity' As InsurerTypeDescription
Insert Into luInsurerType Select 'B' As InsurerTypeCode, 'HMP' As InsurerTypeDescription
Insert Into luInsurerType Select 'C' As InsurerTypeCode, 'Preferred provider organization' As InsurerTypeDescription
Insert Into luInsurerType Select 'D' As InsurerTypeCode, 'Third party administrator arrangement under an administrative service only contract without stop loss from any entity'  As InsurerTypeDescription
Insert Into luInsurerType Select 'E' As InsurerTypeCode, 'Third party administrator arrangement with stop loss insurance issued from any entity' As InsurerTypeDescription
Insert Into luInsurerType Select 'F' As InsurerTypeCode, 'Self-insured/self-administered' As InsurerTypeDescription
Insert Into luInsurerType Select 'G' As InsurerTypeCode, 'Collectively-bargained health and welfare' As InsurerTypeDescription
Insert Into luInsurerType Select 'H' As InsurerTypeCode, 'Multiple employer health plan with at least one employer who has more than 100 full and/or part-time employees' As InsurerTypeDescription
Insert Into luInsurerType Select 'J' As InsurerTypeCode, 'Hospitalization only plan which covers only Inpatient services' As InsurerTypeDescription
Insert Into luInsurerType Select 'K' As InsurerTypeCode, 'Medicare services only plan which covers only non-inpatient services' As InsurerTypeDescription
Insert Into luInsurerType Select 'M' As InsurerTypeCode, 'Medicare supplemental plan: Medigap, Medicare Wraparound Plan or Medicare Carve Out Plan' As InsurerTypeDescription
Insert Into luInsurerType Select ' ' As InsurerTypeCode, 'Unknown' As InsurerTypeDescription
