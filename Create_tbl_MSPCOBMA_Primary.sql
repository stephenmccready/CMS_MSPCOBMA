
If Object_ID('[dbo].[tbl_MSPCOBMA_Primary]') Is Not Null Drop Table [dbo].[tbl_MSPCOBMA_Primary]
CREATE TABLE [dbo].[tbl_MSPCOBMA_Primary](
	[File Date] Date NULL,
	[RecordType] [varchar](3) NULL,
	[BeneficiaryID] [varchar](12) NULL,
	[DetailCount] [varchar](2) NULL,
	[DateOfBirth] [varchar](8) NULL,
	[SexCode] [varchar](1) NULL,
	[ContractNum] [varchar](5) NULL,
	[PBP] [varchar](3) NULL,
	[MSPFactor] [varchar](7) NULL,
	[PTA_RDAMT_SIGN] [varchar](1) NULL,
	[PTA_RDAMT] [varchar](9) NULL,
	[PTB_RDAMT_SIGN] [varchar](1) NULL,
	[PTB_RDAMT] [varchar](9) NULL,
	[PAID_FLAG] [varchar](1) NULL,
	[MSPFactorADJ1] [varchar](7) NULL,
	[PTA_RDAMT_SIGN_ADJ1] [varchar](1) NULL,
	[PTA_RDAMT_ADJ1] [varchar](9) NULL,
	[PTB_RDAMT_SIGN_ADJ1] [varchar](1) NULL,
	[PTB_RDAMT_ADJ1] [varchar](9) NULL,
	[PAID_FLAG_ADJ1] [varchar](1) NULL,
	[MSPFactorADJ2] [varchar](7) NULL,
	[PTA_RDAMT_SIGN_ADJ2] [varchar](1) NULL,
	[PTA_RDAMT_ADJ2] [varchar](9) NULL,
	[PTB_RDAMT_SIGN_ADJ2] [varchar](1) NULL,
	[PTB_RDAMT_ADJ2] [varchar](9) NULL,
	[PAID_FLAG_ADJ2] [varchar](1) NULL,
	[MSPFactorADJ3] [varchar](7) NULL,
	[PTA_RDAMT_SIGN_ADJ3] [varchar](1) NULL,
	[PTA_RDAMT_ADJ3] [varchar](9) NULL,
	[PTB_RDAMT_SIGN_ADJ3] [varchar](1) NULL,
	[PTB_RDAMT_ADJ3] [varchar](9) NULL,
	[PAID_FLAG_ADJ3] [varchar](1) NULL,
	[MSPFactorADJ4] [varchar](7) NULL,
	[PTA_RDAMT_SIGN_ADJ4] [varchar](1) NULL,
	[PTA_RDAMT_ADJ4] [varchar](9) NULL,
	[PTB_RDAMT_SIGN_ADJ4] [varchar](1) NULL,
	[PTB_RDAMT_ADJ4] [varchar](9) NULL,
	[PAID_FLAG_ADJ4] [varchar](1) NULL,
	[Filler] [varchar](526) NULL,
	[DateImported] [datetime] NULL,
	[FileName] [varchar](128) NOT NULL
) ON [PRIMARY]

Create Index ix_HICN On tbl_MSPCOBMA_Primary(BeneficiaryID)
Create Clustered Index ix_DateImported On tbl_MSPCOBMA_Primary(DateImported)
Create Index ix_FileName On tbl_MSPCOBMA_Primary([FileName])
