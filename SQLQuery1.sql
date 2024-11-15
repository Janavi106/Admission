CREATE TABLE [dbo].[ApplicationRegisteration]
(
 
	[AppCode] INT NOT NULL PRIMARY KEY IDENTITY,
	[SFname]  VARCHAR(50) NOT NULL,
	[SMname] VARCHAR(50) NULL,
	[SLname] VARCHAR(50) NOT NULL,
	[Semail] VARCHAR(50) NOT NULL,
	[password] VARCHAR(50) NOT NULL,
	[DOB] VARCHAR(50) NOT NULL,
	[gender] VARCHAR(50) NOT NULL,
	[Program] VARCHAR(50) NOT NULL,
	[Department] VARCHAR(50) NOT NULL,
	[Regular] VARCHAR(50) NOT NULL,
	[PhN] VARCHAR(10) NOT NULL,
	[Pincode] VARCHAR(6) NOT NULL,
	[Address] VARCHAR(50) NOT NULL,
	[District] VARCHAR(20) NOT NULL,
	[State] VARCHAR(20) NOT NULL

)
