Create Table dbo.luPatientRelationship (
	PatientRelationshipCode char(2) Not Null
,	PatientRelationshipDescription VarChar(128)
,	Primary Key (PatientRelationshipCode)
)

Create Index ix_PatientRelationshipCode On luPatientRelationship(PatientRelationshipCode)

Insert Into luPatientRelationship Select '01' As PatientRelationshipCode, 'Patient is Insured' As PatientRelationshipDescription
Insert Into luPatientRelationship Select '02' As PatientRelationshipCode, 'Spouse' As PatientRelationshipDescription
Insert Into luPatientRelationship Select '03' As PatientRelationshipCode, 'Natural Child, Insured has Financial Responsibility' As PatientRelationshipDescription
Insert Into luPatientRelationship Select '04' As PatientRelationshipCode, 'Natural Child, Insured does not have Financial Responsibility' As PatientRelationshipDescription
Insert Into luPatientRelationship Select '05' As PatientRelationshipCode, 'Step Child' As PatientRelationshipDescription
Insert Into luPatientRelationship Select '06' As PatientRelationshipCode, 'Foster Child' As PatientRelationshipDescription
Insert Into luPatientRelationship Select '07' As PatientRelationshipCode, 'Ward of the Court' As PatientRelationshipDescription
Insert Into luPatientRelationship Select '08' As PatientRelationshipCode, 'Employee' As PatientRelationshipDescription
Insert Into luPatientRelationship Select '09' As PatientRelationshipCode, 'Unknown' As PatientRelationshipDescription
Insert Into luPatientRelationship Select '10' As PatientRelationshipCode, 'Handicapped Dependent' As PatientRelationshipDescription
Insert Into luPatientRelationship Select '11' As PatientRelationshipCode, 'Organ Donor' As PatientRelationshipDescription
Insert Into luPatientRelationship Select '12' As PatientRelationshipCode, 'Cadaver Donor' As PatientRelationshipDescription
Insert Into luPatientRelationship Select '13' As PatientRelationshipCode, 'Grandchild' As PatientRelationshipDescription
Insert Into luPatientRelationship Select '14' As PatientRelationshipCode, 'Niece/Nephew' As PatientRelationshipDescription
Insert Into luPatientRelationship Select '15' As PatientRelationshipCode, 'Injured Plaintiff' As PatientRelationshipDescription
Insert Into luPatientRelationship Select '16' As PatientRelationshipCode, 'Sponsored Dependent' As PatientRelationshipDescription
Insert Into luPatientRelationship Select '17' As PatientRelationshipCode, 'Minor Dependent of a Minor Dependent' As PatientRelationshipDescription
Insert Into luPatientRelationship Select '18' As PatientRelationshipCode, 'Parent' As PatientRelationshipDescription
Insert Into luPatientRelationship Select '19' As PatientRelationshipCode, 'Grandparent dependent' As PatientRelationshipDescription
Insert Into luPatientRelationship Select '20' As PatientRelationshipCode, 'Life Partner' As PatientRelationshipDescription
