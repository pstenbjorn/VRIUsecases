USE [VRISchema]
GO

/****** Object:  Table [dbo].[VRIIntances]    Script Date: 11/11/2018 5:30:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[VRIInstances](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[VriXml] [xml](CONTENT [dbo].VoterRecordsInterchangeV0) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO


