CREATE TABLE [dbo].[Company] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [Name]        VARCHAR (50)   NOT NULL,
    [Placement]   INT            DEFAULT ((0)) NOT NULL,
    [Internship]  INT            DEFAULT ((0)) NOT NULL,
    [PlaceIntern] INT            DEFAULT ((0)) NOT NULL,
    [Branches]    VARCHAR(60) NOT NULL,
    [CGPA]        FLOAT (53)     NOT NULL,
    [BL]          INT            DEFAULT ((0)) NOT NULL,
    [TenMarks]    FLOAT (53)     NOT NULL,
    [TwelMarks]   FLOAT (53)     NOT NULL,
    [DipMarks]    FLOAT (53)     NOT NULL,
    [CTC]         VARCHAR (50)   NOT NULL,
    [Location]    VARCHAR (50)   NOT NULL,
    [AddedBy]     VARCHAR (50)   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

