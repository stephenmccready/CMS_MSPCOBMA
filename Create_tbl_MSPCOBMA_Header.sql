If Object_ID('[dbo].[tbl_MSPCOBMA_Header]') Is Not Null Drop Table [dbo].[tbl_MSPCOBMA_Header]
CREATE TABLE [dbo].[tbl_MSPCOBMA_Header](
	[MSPCOBMAHeaderId] [int] IDENTITY(1,1) NOT NULL,
	[HeaderCode] [varchar](8) NULL,
	[SendingEntity] [varchar](4) NULL,
	[FileCreationDate] [varchar](8) NULL,
	[Filler1] [varchar](680) NULL,
	[DateImported] [datetime] NOT NULL,
	[FileName] [varchar](128) NOT NULL
) ON [PRIMARY]

Create Clustered Index ix_DateImported On tbl_MSPCOBMA_Header(DateImported)
Create Index ix_FileName On tbl_MSPCOBMA_Header([FileName])
