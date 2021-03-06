USE [master]
GO
/****** Object:  Database [dbHamburgueria]    Script Date: 11/03/2021 15:42:56 ******/
CREATE DATABASE [dbHamburgueria]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbHamburgueria', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\dbHamburgueria.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dbHamburgueria_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\dbHamburgueria_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbHamburgueria].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbHamburgueria] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbHamburgueria] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbHamburgueria] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbHamburgueria] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbHamburgueria] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbHamburgueria] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [dbHamburgueria] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbHamburgueria] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbHamburgueria] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbHamburgueria] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbHamburgueria] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbHamburgueria] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbHamburgueria] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbHamburgueria] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbHamburgueria] SET  ENABLE_BROKER 
GO
ALTER DATABASE [dbHamburgueria] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbHamburgueria] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbHamburgueria] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbHamburgueria] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbHamburgueria] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbHamburgueria] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [dbHamburgueria] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbHamburgueria] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [dbHamburgueria] SET  MULTI_USER 
GO
ALTER DATABASE [dbHamburgueria] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbHamburgueria] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbHamburgueria] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbHamburgueria] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [dbHamburgueria] SET DELAYED_DURABILITY = DISABLED 
GO
USE [dbHamburgueria]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11/03/2021 15:42:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 11/03/2021 15:42:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[CategoriaId] [int] IDENTITY(1,1) NOT NULL,
	[CategoriaNome] [nvarchar](100) NULL,
	[Descricao] [nvarchar](200) NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[CategoriaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lanches]    Script Date: 11/03/2021 15:42:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lanches](
	[LancheId] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](100) NULL,
	[DescricaoCurta] [nvarchar](100) NULL,
	[DescricaoDetalhada] [nvarchar](255) NULL,
	[ImagemUrl] [nvarchar](200) NULL,
	[ImagemThumbnailUrl] [nvarchar](200) NULL,
	[Preco] [decimal](18, 2) NOT NULL,
	[IsLanchePreferido] [bit] NOT NULL,
	[EmEstoque] [bit] NOT NULL,
	[CategoriaId] [int] NOT NULL,
 CONSTRAINT [PK_Lanches] PRIMARY KEY CLUSTERED 
(
	[LancheId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210304003011_MigracaoInicial', N'5.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210304004626_PopularTabelas', N'5.0.0')
GO
SET IDENTITY_INSERT [dbo].[Categorias] ON 

INSERT [dbo].[Categorias] ([CategoriaId], [CategoriaNome], [Descricao]) VALUES (1, N'Normal', N'Lanche feito com ingredientes normais')
INSERT [dbo].[Categorias] ([CategoriaId], [CategoriaNome], [Descricao]) VALUES (2, N'Natural', N'Lanche feito com ingredientes integrais e naturais')
SET IDENTITY_INSERT [dbo].[Categorias] OFF
GO
SET IDENTITY_INSERT [dbo].[Lanches] ON 

INSERT [dbo].[Lanches] ([LancheId], [Nome], [DescricaoCurta], [DescricaoDetalhada], [ImagemUrl], [ImagemThumbnailUrl], [Preco], [IsLanchePreferido], [EmEstoque], [CategoriaId]) VALUES (1, N'Cheese Salada', N'Pão, hambúrger, ovo, presunto, queijo e batata palha', N'Delicioso pão de hambúrger com ovo frito; presunto e queijo de primeira qualidade acompanhado com batata palha', N'https://i.ibb.co/XZMKM7K/cheesesalada1.jpg', N'https://i.ibb.co/XZMKM7K/cheesesalada1.jpg', CAST(12.50 AS Decimal(18, 2)), 0, 0, 1)
INSERT [dbo].[Lanches] ([LancheId], [Nome], [DescricaoCurta], [DescricaoDetalhada], [ImagemUrl], [ImagemThumbnailUrl], [Preco], [IsLanchePreferido], [EmEstoque], [CategoriaId]) VALUES (2, N'Misto Quente', N'Pão, presunto, mussarela e tomate', N'Delicioso pão francês quentinho na chapa com presunto e mussarela bem servidos com tomate preparado com carinho.', N'https://i.ibb.co/rvw0pLZ/mistoquente4.jpg', N'https://i.ibb.co/rvw0pLZ/mistoquente4.jpg', CAST(8.00 AS Decimal(18, 2)), 0, 1, 1)
INSERT [dbo].[Lanches] ([LancheId], [Nome], [DescricaoCurta], [DescricaoDetalhada], [ImagemUrl], [ImagemThumbnailUrl], [Preco], [IsLanchePreferido], [EmEstoque], [CategoriaId]) VALUES (3, N'Cheese Burger', N'Pão, hambúrger, presunto, mussarela e batalha palha', N'Pão de hambúrger especial com hambúrger de nossa preparação e presunto e mussarela; acompanha batata palha.', N'https://i.ibb.co/0czFnj2/cheeseburger1.jpg', N'https://i.ibb.co/0czFnj2/cheeseburger1.jpg', CAST(11.00 AS Decimal(18, 2)), 1, 1, 1)
INSERT [dbo].[Lanches] ([LancheId], [Nome], [DescricaoCurta], [DescricaoDetalhada], [ImagemUrl], [ImagemThumbnailUrl], [Preco], [IsLanchePreferido], [EmEstoque], [CategoriaId]) VALUES (4, N'Lanche Natural Peito Peru', N'Pão Integral, queijo branco, peito de peru, cenoura, alface, iogurte', N'Pão integral natural com queijo branco, peito de peru e cenoura ralada com alface picado e iorgurte natural.', N'https://i.ibb.co/ZSYJHV4/lanchenatural.jpg', N'https://i.ibb.co/ZSYJHV4/lanchenatural.jpg', CAST(15.00 AS Decimal(18, 2)), 0, 0, 2)
SET IDENTITY_INSERT [dbo].[Lanches] OFF
GO
/****** Object:  Index [IX_Lanches_CategoriaId]    Script Date: 11/03/2021 15:42:56 ******/
CREATE NONCLUSTERED INDEX [IX_Lanches_CategoriaId] ON [dbo].[Lanches]
(
	[CategoriaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Lanches]  WITH CHECK ADD  CONSTRAINT [FK_Lanches_Categorias_CategoriaId] FOREIGN KEY([CategoriaId])
REFERENCES [dbo].[Categorias] ([CategoriaId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Lanches] CHECK CONSTRAINT [FK_Lanches_Categorias_CategoriaId]
GO
USE [master]
GO
ALTER DATABASE [dbHamburgueria] SET  READ_WRITE 
GO
