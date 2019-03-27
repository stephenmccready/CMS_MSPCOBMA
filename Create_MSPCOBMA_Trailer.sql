If Object_ID('[dbo].[tbl_MSPCOBMA_Trailer]') Is Not Null Drop Table [dbo].[tbl_MSPCOBMA_Trailer]
CREATE TABLE [dbo].[tbl_MSPCOBMA_Trailer](
	[MSPCOBMATrailerId] [int] IDENTITY(1,1) NOT NULL,
	[TrailerCode] [varchar](8) NULL,
	[SendingEntity] [varchar](4) NULL,
	[FileCreationDate] [varchar](8) NULL,
	[TotalPrimary] [varchar](8) NULL,
	[TotalRecords] [varchar](8) NULL,
	[Filler1] [varchar](664) NULL,
	[DateImported] [datetime] NOT NULL,
	[FileName] [varchar](128) NOT NULL
) ON [PRIMARY]

Create Clustered Index ix_DateImported On tbl_MSPCOBMA_Trailer(DateImported)
Create Index ix_FileName On tbl_MSPCOBMA_Trailer([FileName])
