SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

Alter procedure [dbo].[usp_ImportMSPCOBMA] @path As varChar(128), @filename As varChar(128)
As

Begin

Truncate Table [dbo].[tbl_MSPCOBMA_In]
Declare @BulkCmd As nvarChar(MAX)
Set		@BulkCmd = "BULK INSERT tbl_MSPCOBMA_In FROM '"+@path+@filename+"' WITH (FIELDTERMINATOR = '\n')"
Exec	(@BulkCmd)

Declare @today As DateTime 
Set @today=getDate()

---Header
Insert	Into [dbo].[tbl_MSPCOBMA_Header]
Select	  Cast(SubString(MI.Col001,1,8) As VarChar(8)) As [HeaderCode]
		, Cast(SubString(MI.Col001,9,4) As VarChar(4)) As [SendingEntity]
		, Cast(SubString(MI.Col001,13,8) As VarChar(8)) As [FileCreationDate]
		, Cast(SubString(MI.Col001,21,680) As VarChar(680)) As [Filler1]
		, @today As DateImported
		, @filename As [FileName]
From	tbl_MSPCOBMA_In As MI
Left	Outer Join [dbo].[tbl_MSPCOBMA_Header] As MH
		On MH.[HeaderCode]=SubString(MI.Col001,1,8)
		And MH.[FileName]=@filename
Where	SubString(MI.Col001,1,8) = 'CMSMSPDH'
And		MH.[HeaderCode] Is Null

Declare @fileDate As Date
Set @fileDate=(Select Cast(SubString([FileCreationDate],5,2)+'/'+SubString([FileCreationDate],7,2)+'/'+
SubString([FileCreationDate],1,4) As Date) From tbl_MSPCOBMA_Header Where [FileName] = @filename)

-- Primary Record
Insert	Into [dbo].[tbl_MSPCOBMA_Primary]
Select	  @fileDate As [File Date]
		, Cast(SubString(MI.Col001,1,3) As VarChar(3)) As RecordType
		, Cast(SubString(MI.Col001,4,12) As VarChar(12)) As BeneficiaryID
		, Cast(SubString(MI.Col001,16,2) As VarChar(2)) As DetailCount
		, Cast(SubString(MI.Col001,18,8) As VarChar(8)) As DateOfBirth
		, Cast(SubString(MI.Col001,26,1) As VarChar(1)) As SexCode
		, Cast(SubString(MI.Col001,27,5) As VarChar(5)) As ContractNum
		, Cast(SubString(MI.Col001,32,3) As VarChar(3)) As PBP
		-- MSP Factor Fields
		, Cast(SubString(MI.Col001,35,7) As VarChar(7)) As MSPFactor
		, Cast(SubString(MI.Col001,42,1) As VarChar(1)) As PTA_RDAMT_SIGN
		, Cast(SubString(MI.Col001,43,9) As VarChar(9)) As PTA_RDAMT
		, Cast(SubString(MI.Col001,52,1) As VarChar(1)) As PTB_RDAMT_SIGN
		, Cast(SubString(MI.Col001,53,9) As VarChar(9)) As PTB_RDAMT
		, Cast(SubString(MI.Col001,62,1) As VarChar(1)) As PAID_FLAG
		-- End of MSP Factor Fields
		-- MSP Adjustment 1
		, Cast(SubString(MI.Col001,63,7) As VarChar(7)) As MSPFactorADJ1
		, Cast(SubString(MI.Col001,70,1) As VarChar(1)) As PTA_RDAMT_SIGN_ADJ1
		, Cast(SubString(MI.Col001,71,9) As VarChar(9)) As PTA_RDAMT_ADJ1
		, Cast(SubString(MI.Col001,80,1) As VarChar(1)) As PTB_RDAMT_SIGN_ADJ1
		, Cast(SubString(MI.Col001,81,9) As VarChar(9)) As PTB_RDAMT_ADJ1
		, Cast(SubString(MI.Col001,90,1) As VarChar(1)) As PAID_FLAG_ADJ1
		-- MSP Adjustment 2
		, Cast(SubString(MI.Col001,91,7) As VarChar(7)) As MSPFactorADJ2
		, Cast(SubString(MI.Col001,98,1) As VarChar(1)) As PTA_RDAMT_SIGN_ADJ2
		, Cast(SubString(MI.Col001,99,9) As VarChar(9)) As PTA_RDAMT_ADJ2
		, Cast(SubString(MI.Col001,108,1) As VarChar(1)) As PTB_RDAMT_SIGN_ADJ2
		, Cast(SubString(MI.Col001,109,9) As VarChar(9)) As PTB_RDAMT_ADJ2
		, Cast(SubString(MI.Col001,118,1) As VarChar(1)) As PAID_FLAG_ADJ2
		-- MSP Adjustment 3
		, Cast(SubString(MI.Col001,119,7) As VarChar(7)) As MSPFactorADJ3
		, Cast(SubString(MI.Col001,126,1) As VarChar(1)) As PTA_RDAMT_SIGN_ADJ3
		, Cast(SubString(MI.Col001,127,9) As VarChar(9)) As PTA_RDAMT_ADJ3
		, Cast(SubString(MI.Col001,136,1) As VarChar(1)) As PTB_RDAMT_SIGN_ADJ3
		, Cast(SubString(MI.Col001,137,9) As VarChar(9)) As PTB_RDAMT_ADJ3
		, Cast(SubString(MI.Col001,146,1) As VarChar(1)) As PAID_FLAG_ADJ3
		-- MSP Adjustment 4
		, Cast(SubString(MI.Col001,147,7) As VarChar(7)) As MSPFactorADJ4
		, Cast(SubString(MI.Col001,154,1) As VarChar(1)) As PTA_RDAMT_SIGN_ADJ4
		, Cast(SubString(MI.Col001,155,9) As VarChar(9)) As PTA_RDAMT_ADJ4
		, Cast(SubString(MI.Col001,164,1) As VarChar(1)) As PTB_RDAMT_SIGN_ADJ4
		, Cast(SubString(MI.Col001,165,9) As VarChar(9)) As PTB_RDAMT_ADJ4
		, Cast(SubString(MI.Col001,174,1) As VarChar(1)) As PAID_FLAG_ADJ4
		--
		, Cast(SubString(MI.Col001,175,526) As VarChar(526)) As Filler
		, @today As DateImported
		, @filename As [FileName]
From	[dbo].[tbl_MSPCOBMA_In] As MI
Left	Outer Join [dbo].[tbl_MSPCOBMA_Primary] As MP
		On MP.BeneficiaryID=SubString(MI.Col001,4,12)
		And MP.[FileName]=@filename
Where	SubString(MI.Col001,1,3)='PRM'
And		MP.BeneficiaryID Is Null

--Detail
Insert	Into [dbo].[tbl_MSPCOBMA_Detail]
Select	  @fileDate As [File Date]
		, Cast(SubString(MI.Col001,1,5) As VarChar(5)) As RecordType
		, Cast(SubString(MI.Col001,6,12) As VarChar(12)) As BeneficiaryID
		, Cast(SubString(MI.Col001,18,1) As VarChar(1)) As [DeleteInd]
		, Cast(SubString(MI.Col001,19,1) As VarChar(1)) As [ValidityIndicator]
		, Cast(SubString(MI.Col001,20,1) As VarChar(1)) As [MSPCode]
		, Cast(SubString(MI.Col001,21,5) As VarChar(5)) As [ContractorNumber]
		, Cast(SubString(MI.Col001,26,8) As VarChar(8)) As [DataEntryAdded]
		, Cast(SubString(MI.Col001,34,5) As VarChar(5)) As [UpdatingContractor]
		, Cast(SubString(MI.Col001,39,8) As VarChar(8)) As [MaintenanceDate]
		, Cast(SubString(MI.Col001,47,2) As VarChar(2)) As [CWFOccurence]
		, Cast(SubString(MI.Col001,49,4) As VarChar(4)) As [Filler01]
		, Cast(SubString(MI.Col001,53,1) As VarChar(1)) As [InsurerType]
		, Cast(SubString(MI.Col001,54,32) As VarChar(32)) As [InsurersName]
		, Cast(SubString(MI.Col001,86,32) As VarChar(32)) As [InsurersAddress-1]
		, Cast(SubString(MI.Col001,118,32) As VarChar(32)) As [InsurersAddress-2]
		, Cast(SubString(MI.Col001,150,15) As VarChar(15)) As [InsurersCity]
		, Cast(SubString(MI.Col001,165,2) As VarChar(2)) As [InsurersStateCode]
		, Cast(SubString(MI.Col001,167,9) As VarChar(9)) As [InsurersZipCode]
		, Cast(SubString(MI.Col001,176,17) As VarChar(17)) As [PolicyNumber]
		, Cast(SubString(MI.Col001,193,8) As VarChar(8)) As [MSPEffective Date]
		, Cast(SubString(MI.Col001,201,8) As VarChar(8)) As [MSPTermination]
		, Cast(SubString(MI.Col001,209,2) As VarChar(2)) As [PatientRelationship]
		, Cast(SubString(MI.Col001,211,9) As VarChar(9)) As [SubscriberFirstName]
		, Cast(SubString(MI.Col001,220,16) As VarChar(16)) As [SubscriberLastNamePolicyholder]
		, Cast(SubString(MI.Col001,236,12) As VarChar(12)) As [EmployeeIDNumber]
		, Cast(SubString(MI.Col001,248,2) As VarChar(2)) As [SourceCode]
		, Cast(SubString(MI.Col001,250,1) As VarChar(1)) As [EmployeeDataCode]
		, Cast(SubString(MI.Col001,251,32) As VarChar(32)) As [EmployerName]
		, Cast(SubString(MI.Col001,283,32) As VarChar(32)) As [EmployersAddress1]
		, Cast(SubString(MI.Col001,315,32) As VarChar(32)) As [EmployersAddress2]
		, Cast(SubString(MI.Col001,347,15) As VarChar(15)) As [EmployersCity]
		, Cast(SubString(MI.Col001,362,2) As VarChar(2)) As [EmployersState]
		, Cast(SubString(MI.Col001,364,9) As VarChar(9)) As [EmployersZipCode]
		, Cast(SubString(MI.Col001,373,20) As VarChar(20)) As [InsuranceGroupNumber]
		, Cast(SubString(MI.Col001,393,17) As VarChar(17)) As [InsuranceGroup]
		, Cast(SubString(MI.Col001,410,8) As VarChar(8)) As [PrepaidHealthPlanDate]
		, Cast(SubString(MI.Col001,418,2) As VarChar(2)) As [RemarksCode-1]
		, Cast(SubString(MI.Col001,420,2) As VarChar(2)) As [RemarksCode-2]
		, Cast(SubString(MI.Col001,422,2) As VarChar(2)) As [RemarksCode-3]
		, Cast(SubString(MI.Col001,424,10) As VarChar(10)) As [PayerID]
		, Cast(SubString(MI.Col001,434,1) As VarChar(1)) As [DiagnosisCodeInd1]
		, Cast(SubString(MI.Col001,435,7) As VarChar(7)) As [DiagnosisCode1]
		, Cast(SubString(MI.Col001,442,1) As VarChar(1)) As [DiagnosisCodeInd2]
		, Cast(SubString(MI.Col001,443,7) As VarChar(7)) As [DiagnosisCode2]
		, Cast(SubString(MI.Col001,450,1) As VarChar(1)) As [DiagnosisCodeInd3]
		, Cast(SubString(MI.Col001,451,7) As VarChar(7)) As [DiagnosisCode3]
		, Cast(SubString(MI.Col001,458,1) As VarChar(1)) As [DiagnosisCodeInd4]
		, Cast(SubString(MI.Col001,459,7) As VarChar(7)) As [DiagnosisCode4]
		, Cast(SubString(MI.Col001,466,1) As VarChar(1)) As [DiagnosisCodeInd5]
		, Cast(SubString(MI.Col001,467,7) As VarChar(7)) As [DiagnosisCode5]
		, Cast(SubString(MI.Col001,474,1) As VarChar(1)) As [DiagnosisCodeInd6]
		, Cast(SubString(MI.Col001,475,7) As VarChar(7)) As [DiagnosisCode6]
		, Cast(SubString(MI.Col001,482,1) As VarChar(1)) As [DiagnosisCodeInd7]
		, Cast(SubString(MI.Col001,483,7) As VarChar(7)) As [DiagnosisCode7]
		, Cast(SubString(MI.Col001,490,1) As VarChar(1)) As [DiagnosisCodeInd8]
		, Cast(SubString(MI.Col001,491,7) As VarChar(7)) As [DiagnosisCode8]
		, Cast(SubString(MI.Col001,498,1) As VarChar(1)) As [DiagnosisCodeInd9]
		, Cast(SubString(MI.Col001,509,7) As VarChar(7)) As [DiagnosisCode9]
		, Cast(SubString(MI.Col001,506,1) As VarChar(1)) As [DiagnosisCodeInd10]
		, Cast(SubString(MI.Col001,507,7) As VarChar(7)) As [DiagnosisCode10]
		, Cast(SubString(MI.Col001,514,1) As VarChar(1)) As [DiagnosisCodeInd11]
		, Cast(SubString(MI.Col001,515,7) As VarChar(7)) As [DiagnosisCode11]
		, Cast(SubString(MI.Col001,522,1) As VarChar(1)) As [DiagnosisCodeInd12]
		, Cast(SubString(MI.Col001,523,7) As VarChar(7)) As [DiagnosisCode12]
		, Cast(SubString(MI.Col001,530,1) As VarChar(1)) As [DiagnosisCodeInd13]
		, Cast(SubString(MI.Col001,531,7) As VarChar(7)) As [DiagnosisCode13]
		, Cast(SubString(MI.Col001,538,1) As VarChar(1)) As [DiagnosisCodeInd14]
		, Cast(SubString(MI.Col001,539,7) As VarChar(7)) As [DiagnosisCode14]
		, Cast(SubString(MI.Col001,546,1) As VarChar(1)) As [DiagnosisCodeInd15]
		, Cast(SubString(MI.Col001,547,7) As VarChar(7)) As [DiagnosisCode15]
		, Cast(SubString(MI.Col001,554,1) As VarChar(1)) As [DiagnosisCodeInd16]
		, Cast(SubString(MI.Col001,555,7) As VarChar(7)) As [DiagnosisCode16]
		, Cast(SubString(MI.Col001,562,1) As VarChar(1)) As [DiagnosisCodeInd17]
		, Cast(SubString(MI.Col001,563,7) As VarChar(7)) As [DiagnosisCode17]
		, Cast(SubString(MI.Col001,570,1) As VarChar(1)) As [DiagnosisCodeInd18]
		, Cast(SubString(MI.Col001,571,7) As VarChar(7)) As [DiagnosisCode18]
		, Cast(SubString(MI.Col001,578,1) As VarChar(1)) As [DiagnosisCodeInd19]
		, Cast(SubString(MI.Col001,579,7) As VarChar(7)) As [DiagnosisCode19]
		, Cast(SubString(MI.Col001,586,1) As VarChar(1)) As [DiagnosisCodeInd20]
		, Cast(SubString(MI.Col001,587,7) As VarChar(7)) As [DiagnosisCode20]
		, Cast(SubString(MI.Col001,594,1) As VarChar(1)) As [DiagnosisCodeInd21]
		, Cast(SubString(MI.Col001,595,7) As VarChar(7)) As [DiagnosisCode21]
		, Cast(SubString(MI.Col001,602,1) As VarChar(1)) As [DiagnosisCodeInd22]
		, Cast(SubString(MI.Col001,603,7) As VarChar(7)) As [DiagnosisCode22]
		, Cast(SubString(MI.Col001,610,1) As VarChar(1)) As [DiagnosisCodeInd23]
		, Cast(SubString(MI.Col001,611,7) As VarChar(7)) As [DiagnosisCode23]
		, Cast(SubString(MI.Col001,618,1) As VarChar(1)) As [DiagnosisCodeInd24]
		, Cast(SubString(MI.Col001,619,7) As VarChar(7)) As [DiagnosisCode24]
		, Cast(SubString(MI.Col001,626,1) As VarChar(1)) As [DiagnosisCodeInd25]
		, Cast(SubString(MI.Col001,627,7) As VarChar(7)) As [DiagnosisCode25]
		, Cast(SubString(MI.Col001,634,67) As VarChar(67)) As [Filler02]
		, @today As DateImported
		, @filename As [FileName]
From	[dbo].[tbl_MSPCOBMA_In] As MI
Left	Outer Join [dbo].[tbl_MSPCOBMA_Detail] As MD
		On MD.CWFOccurrence = SubString(MI.Col001,47,2) 
		And MD.BeneficiaryID=SubString(MI.Col001,6,12) 
		And MD.[FileName]=@filename
Where	SubString(MI.Col001,1,3) = 'DET'
And		MD.BeneficiaryID Is Null

---Trailer
Insert	Into [dbo].[tbl_MSPCOBMA_Trailer]
Select	  Cast(SubString(MI.Col001,1,8) As VarChar(8)) As [TrailerCode]
		, Cast(SubString(MI.Col001,9,4) As VarChar(4)) As [SendingEntity]
		, Cast(SubString(MI.Col001,13,8) As VarChar(8)) As [FileCreationDate]
		, Cast(SubString(MI.Col001,21,8) As VarChar(8)) As [TotalPrimary]
		, Cast(SubString(MI.Col001,29,8) As VarChar(8)) As [TotalDetail]
		, Cast(SubString(MI.Col001,37,664) As VarChar(664)) As [Filler1]
		, @today As DateImported
		, @filename As [FileName]
From	tbl_MSPCOBMA_In As MI
Left	Outer Join [dbo].[tbl_MSPCOBMA_Trailer] As MT
		On MT.[TrailerCode]=SubString(MI.Col001,1,8)
		And MT.[FileName]=@filename
Where	SubString(MI.Col001,1,8) = 'CMSMSPDT'
And		MT.[TrailerCode] Is Null

End
