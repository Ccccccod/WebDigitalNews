USE [master]
GO
/****** Object:  Database [Digital]    Script Date: 4/17/2019 10:38:40 PM ******/
CREATE DATABASE [Digital]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Digital', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Digital.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Digital_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Digital_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Digital] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Digital].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Digital] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Digital] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Digital] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Digital] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Digital] SET ARITHABORT OFF 
GO
ALTER DATABASE [Digital] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Digital] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Digital] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Digital] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Digital] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Digital] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Digital] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Digital] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Digital] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Digital] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Digital] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Digital] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Digital] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Digital] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Digital] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Digital] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Digital] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Digital] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Digital] SET  MULTI_USER 
GO
ALTER DATABASE [Digital] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Digital] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Digital] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Digital] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Digital] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Digital]
GO
/****** Object:  Table [dbo].[digital]    Script Date: 4/17/2019 10:38:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[digital](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NOT NULL,
	[description] [text] NOT NULL,
	[image] [nvarchar](50) NOT NULL,
	[author] [nvarchar](50) NOT NULL,
	[timePost] [date] NOT NULL,
	[shortDes] [text] NOT NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[digital] ON 

INSERT [dbo].[digital] ([ID], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (2, N'Day La Bai So 1', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', N'i1.jpg', N'Henrry', CAST(N'2018-10-03' AS Date), N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.')
INSERT [dbo].[digital] ([ID], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (5, N'Devaluke', N'The group left the crime-ridden city of San Pedro Sula in Honduras on 13 October. From there, the migrants walked to Nueva Ocotepeque from where they crossed into Guatemala.Their aim is to reach the United States where they say they want to start a new life away from the criminal gangs which control parts of Honduras.But US President Donald Trump, who campaigned on a promise to curb illegal immigration to the US, said he would not let the caravan cross into the US.The group left the crime-ridden city of San Pedro Sula in Honduras on 13 October. From there, the migrants walked to Nueva Ocotepeque from where they crossed into Guatemala.Their aim is to reach the United States where they say they want to start a new life away from the criminal gangs which control parts of Honduras.But US President Donald Trump, who campaigned on a promise to curb illegal immigration to the US, said he would not let the caravan cross into the US.The group left the crime-ridden city of San Pedro Sula in Honduras on 13 October. From there, the migrants walked to Nueva Ocotepeque from where they crossed into Guatemala.Their aim is to reach the United States where they say they want to start a new life away from the criminal gangs which control parts of Honduras.But US President Donald Trump, who campaigned on a promise to curb illegal immigration to the US, said he would not let the caravan cross into the US.The group left the crime-ridden city of San Pedro Sula in Honduras on 13 October. From there, the migrants walked to Nueva Ocotepeque from where they crossed into Guatemala.Their aim is to reach the United States where they say they want to start a new life away from the criminal gangs which control parts of Honduras.But US President Donald Trump, who campaigned on a promise to curb illegal immigration to the US, said he would not let the caravan cross into the US.The group left the crime-ridden city of San Pedro Sula in Honduras on 13 October. From there, the migrants walked to Nueva Ocotepeque from where they crossed into Guatemala.Their aim is to reach the United States where they say they want to start a new life away from the criminal gangs which control parts of Honduras.But US President Donald Trump, who campaigned on a promise to curb illegal immigration to the US, said he would not let the caravan cross into the US.The group left the crime-ridden city of San Pedro Sula in Honduras on 13 October. From there, the migrants walked to Nueva Ocotepeque from where they crossed into Guatemala.Their aim is to reach the United States where they say they want to start a new life away from the criminal gangs which control parts of Honduras.But US President Donald Trump, who campaigned on a promise to curb illegal immigration to the US, said he would not let the caravan cross into the US.The group left the crime-ridden city of San Pedro Sula in Honduras on 13 October. From there, the migrants walked to Nueva Ocotepeque from where they crossed into Guatemala.Their aim is to reach the United States where they say they want to start a new life away from the criminal gangs which control parts of Honduras.But US President Donald Trump, who campaigned on a promise to curb illegal immigration to the US, said he would not let the caravan cross into the US. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', N'i1.jpg', N'Christoper Robin', CAST(N'2018-10-10' AS Date), N'devaluke abc short Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation.')
INSERT [dbo].[digital] ([ID], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (12, N'Me Devaluke', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.<br> Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', N'i1.jpg', N'Devalukke Again', CAST(N'2018-10-10' AS Date), N'why did i fal in love why did i fal in lovewhy did i fal in love why did i fal in lovewhy did i fal in love why did i fal in lovewhy did i fal in love why did i fal in lovewhy did i fal in love why did i fal in lovewhy did i fal in love why did i fal in lovewhy did i fal in love why did i fal in lovewhy did i fal in love why did i fal in lovewhy did i fal in love why did i fal in lovewhy did i fal in love why did i fal in lovewhy did i fal in love why did i fal in lovewhy did i fal in love why did i fal in lovewhy did i fal in love why did i fal in lovewhy did i fal in love why did i fal in lovewhy did i fal in love why did i fal in love')
INSERT [dbo].[digital] ([ID], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (14, N'Christoper come back', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', N'i1.jpg', N'Hevalukeee', CAST(N'2018-11-11' AS Date), N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.Xin chao thay tuan')
INSERT [dbo].[digital] ([ID], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (16, N'Devaluke Come Back', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', N'i1.jpg', N'Henrry Again', CAST(N'2018-05-09' AS Date), N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.')
INSERT [dbo].[digital] ([ID], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (17, N'dfsdfds', N'sdfdfdfd', N'i1.jpg', N'ok boy', CAST(N'2018-04-08' AS Date), N'dfssdf')
INSERT [dbo].[digital] ([ID], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (24, N'Devaluke Come', N'klqwjeqklwje ', N'i1.jpg', N'ádasdasd', CAST(N'2019-01-21' AS Date), N'adsdasdasda')
SET IDENTITY_INSERT [dbo].[digital] OFF
USE [master]
GO
ALTER DATABASE [Digital] SET  READ_WRITE 
GO
