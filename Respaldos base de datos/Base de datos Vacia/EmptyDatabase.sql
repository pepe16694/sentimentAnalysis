USE [SentimentAnalysis]
GO
/****** Object:  Table [dbo].[Alarms]    Script Date: 6/25/2020 8:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alarms](
	[AlarmId] [uniqueidentifier] NOT NULL,
	[RequiredPostQuantity] [int] NOT NULL,
	[TimeFrame] [bigint] NOT NULL,
	[Active] [bit] NOT NULL,
	[Entity_EntityDtoId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_dbo.Alarms] PRIMARY KEY CLUSTERED 
(
	[AlarmId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuthorAlarms]    Script Date: 6/25/2020 8:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuthorAlarms](
	[AlarmId] [uniqueidentifier] NOT NULL,
	[PhrasesType] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.AuthorAlarms] PRIMARY KEY CLUSTERED 
(
	[AlarmId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authors]    Script Date: 6/25/2020 8:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authors](
	[AuthorId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](10) NOT NULL,
	[FirstName] [nvarchar](15) NOT NULL,
	[LastName] [nvarchar](15) NOT NULL,
	[BirthDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Authors] PRIMARY KEY CLUSTERED 
(
	[AuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Entities]    Script Date: 6/25/2020 8:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entities](
	[EntityId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.Entities] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NegativeAlarms]    Script Date: 6/25/2020 8:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NegativeAlarms](
	[AlarmId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_dbo.NegativeAlarms] PRIMARY KEY CLUSTERED 
(
	[AlarmId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NegativeSentiments]    Script Date: 6/25/2020 8:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NegativeSentiments](
	[SentimentId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_dbo.NegativeSentiments] PRIMARY KEY CLUSTERED 
(
	[SentimentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NeutralSentiments]    Script Date: 6/25/2020 8:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NeutralSentiments](
	[SentimentId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_dbo.NeutralSentiments] PRIMARY KEY CLUSTERED 
(
	[SentimentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PositiveAlarms]    Script Date: 6/25/2020 8:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PositiveAlarms](
	[AlarmId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_dbo.PositiveAlarms] PRIMARY KEY CLUSTERED 
(
	[AlarmId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PositiveSentiments]    Script Date: 6/25/2020 8:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PositiveSentiments](
	[SentimentId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_dbo.PositiveSentiments] PRIMARY KEY CLUSTERED 
(
	[SentimentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Publications]    Script Date: 6/25/2020 8:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publications](
	[PublicationId] [uniqueidentifier] NOT NULL,
	[Phrase] [nvarchar](max) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Author_AuthorDtoId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_dbo.Publications] PRIMARY KEY CLUSTERED 
(
	[PublicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Relations]    Script Date: 6/25/2020 8:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Relations](
	[RelationId] [uniqueidentifier] NOT NULL,
	[Entity_EntityDtoId] [uniqueidentifier] NULL,
	[Publication_PublicationDtoId] [uniqueidentifier] NULL,
	[Sentiment_SentimentDtoId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_dbo.Relations] PRIMARY KEY CLUSTERED 
(
	[RelationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sentiments]    Script Date: 6/25/2020 8:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sentiments](
	[SentimentId] [uniqueidentifier] NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.Sentiments] PRIMARY KEY CLUSTERED 
(
	[SentimentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Entities] ([EntityId], [Name]) VALUES (N'c77213bd-ab43-416b-a37a-9a08b81ec6af', N'Desconocida')
GO
INSERT [dbo].[NeutralSentiments] ([SentimentId]) VALUES (N'6e3512e5-45ff-45ba-b54c-542c81564a20')
GO
INSERT [dbo].[Sentiments] ([SentimentId], [Text]) VALUES (N'6e3512e5-45ff-45ba-b54c-542c81564a20', N'Desconocido')
GO
ALTER TABLE [dbo].[Alarms]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Alarms_dbo.Entities_Entity_EntityDtoId] FOREIGN KEY([Entity_EntityDtoId])
REFERENCES [dbo].[Entities] ([EntityId])
GO
ALTER TABLE [dbo].[Alarms] CHECK CONSTRAINT [FK_dbo.Alarms_dbo.Entities_Entity_EntityDtoId]
GO
ALTER TABLE [dbo].[AuthorAlarms]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AuthorAlarms_dbo.Alarms_AlarmId] FOREIGN KEY([AlarmId])
REFERENCES [dbo].[Alarms] ([AlarmId])
GO
ALTER TABLE [dbo].[AuthorAlarms] CHECK CONSTRAINT [FK_dbo.AuthorAlarms_dbo.Alarms_AlarmId]
GO
ALTER TABLE [dbo].[NegativeAlarms]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NegativeAlarms_dbo.Alarms_AlarmId] FOREIGN KEY([AlarmId])
REFERENCES [dbo].[Alarms] ([AlarmId])
GO
ALTER TABLE [dbo].[NegativeAlarms] CHECK CONSTRAINT [FK_dbo.NegativeAlarms_dbo.Alarms_AlarmId]
GO
ALTER TABLE [dbo].[NegativeSentiments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NegativeSentiments_dbo.Sentiments_SentimentId] FOREIGN KEY([SentimentId])
REFERENCES [dbo].[Sentiments] ([SentimentId])
GO
ALTER TABLE [dbo].[NegativeSentiments] CHECK CONSTRAINT [FK_dbo.NegativeSentiments_dbo.Sentiments_SentimentId]
GO
ALTER TABLE [dbo].[NeutralSentiments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NeutralSentiments_dbo.Sentiments_SentimentId] FOREIGN KEY([SentimentId])
REFERENCES [dbo].[Sentiments] ([SentimentId])
GO
ALTER TABLE [dbo].[NeutralSentiments] CHECK CONSTRAINT [FK_dbo.NeutralSentiments_dbo.Sentiments_SentimentId]
GO
ALTER TABLE [dbo].[PositiveAlarms]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PositiveAlarms_dbo.Alarms_AlarmId] FOREIGN KEY([AlarmId])
REFERENCES [dbo].[Alarms] ([AlarmId])
GO
ALTER TABLE [dbo].[PositiveAlarms] CHECK CONSTRAINT [FK_dbo.PositiveAlarms_dbo.Alarms_AlarmId]
GO
ALTER TABLE [dbo].[PositiveSentiments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PositiveSentiments_dbo.Sentiments_SentimentId] FOREIGN KEY([SentimentId])
REFERENCES [dbo].[Sentiments] ([SentimentId])
GO
ALTER TABLE [dbo].[PositiveSentiments] CHECK CONSTRAINT [FK_dbo.PositiveSentiments_dbo.Sentiments_SentimentId]
GO
ALTER TABLE [dbo].[Publications]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Publications_dbo.Authors_Author_AuthorDtoId] FOREIGN KEY([Author_AuthorDtoId])
REFERENCES [dbo].[Authors] ([AuthorId])
GO
ALTER TABLE [dbo].[Publications] CHECK CONSTRAINT [FK_dbo.Publications_dbo.Authors_Author_AuthorDtoId]
GO
ALTER TABLE [dbo].[Relations]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Relations_dbo.Entities_Entity_EntityDtoId] FOREIGN KEY([Entity_EntityDtoId])
REFERENCES [dbo].[Entities] ([EntityId])
GO
ALTER TABLE [dbo].[Relations] CHECK CONSTRAINT [FK_dbo.Relations_dbo.Entities_Entity_EntityDtoId]
GO
ALTER TABLE [dbo].[Relations]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Relations_dbo.Publications_Publication_PublicationDtoId] FOREIGN KEY([Publication_PublicationDtoId])
REFERENCES [dbo].[Publications] ([PublicationId])
GO
ALTER TABLE [dbo].[Relations] CHECK CONSTRAINT [FK_dbo.Relations_dbo.Publications_Publication_PublicationDtoId]
GO
ALTER TABLE [dbo].[Relations]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Relations_dbo.Sentiments_Sentiment_SentimentDtoId] FOREIGN KEY([Sentiment_SentimentDtoId])
REFERENCES [dbo].[Sentiments] ([SentimentId])
GO
ALTER TABLE [dbo].[Relations] CHECK CONSTRAINT [FK_dbo.Relations_dbo.Sentiments_Sentiment_SentimentDtoId]
GO
