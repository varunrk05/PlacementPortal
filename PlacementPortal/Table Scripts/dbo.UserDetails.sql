CREATE TABLE [dbo].[UserDetails] (
    [Registration Number]      VARCHAR (50)  NOT NULL,
    [First Name]               TEXT          NOT NULL,
    [Middle Name]              TEXT          NOT NULL,
    [Last Name]                TEXT          NOT NULL,
    [Permanent Address]        VARCHAR (100) NOT NULL,
    [10th Board of Education]  TEXT          NOT NULL,
    [10th Board Percentage]    FLOAT (53)    NOT NULL,
    [12th Board of Education]  TEXT          NOT NULL,
    [12th Board Percentage]    FLOAT (53)    NOT NULL,
    [College]                  TEXT          NOT NULL,
	[Branch]				   VARCHAR (4)   NOT NULL,
    [College CGPA]             FLOAT (53)    NOT NULL,
    [Internship Details]       TEXT          NOT NULL,
    [Project Details]          TEXT          NOT NULL,
    [Extra Curricular Details] TEXT          NOT NULL,
    PRIMARY KEY CLUSTERED ([Registration Number] ASC)
);

