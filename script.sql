USE [master]
GO
/****** Object:  Database [EmpresaComp]    Script Date: 17/5/2024 08:18:52 ******/
CREATE DATABASE [EmpresaComp]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EmpresaComp', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SA\MSSQL\DATA\EmpresaComp.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EmpresaComp_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SA\MSSQL\DATA\EmpresaComp_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [EmpresaComp] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EmpresaComp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EmpresaComp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EmpresaComp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EmpresaComp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EmpresaComp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EmpresaComp] SET ARITHABORT OFF 
GO
ALTER DATABASE [EmpresaComp] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EmpresaComp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EmpresaComp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EmpresaComp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EmpresaComp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EmpresaComp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EmpresaComp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EmpresaComp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EmpresaComp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EmpresaComp] SET  ENABLE_BROKER 
GO
ALTER DATABASE [EmpresaComp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EmpresaComp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EmpresaComp] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EmpresaComp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EmpresaComp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EmpresaComp] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EmpresaComp] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EmpresaComp] SET RECOVERY FULL 
GO
ALTER DATABASE [EmpresaComp] SET  MULTI_USER 
GO
ALTER DATABASE [EmpresaComp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EmpresaComp] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EmpresaComp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EmpresaComp] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EmpresaComp] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EmpresaComp] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'EmpresaComp', N'ON'
GO
ALTER DATABASE [EmpresaComp] SET QUERY_STORE = OFF
GO
USE [EmpresaComp]
GO
/****** Object:  Table [dbo].[AreaTrabajo]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AreaTrabajo](
	[IdArea] [int] NOT NULL,
	[NombreArea] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdArea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Barrio]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Barrio](
	[IdBarrio] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Abreviatura] [varchar](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdBarrio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CalcVenta]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalcVenta](
	[IdVenta] [int] NULL,
	[Subtotal] [decimal](9, 2) NULL,
	[Descuento] [decimal](9, 2) NULL,
	[IVA] [decimal](9, 2) NULL,
	[Total] [decimal](9, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cargo]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cargo](
	[IdCargo] [int] NOT NULL,
	[Nombre_Cargo] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatCompania]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatCompania](
	[IdCatCompania] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[IdEstado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCatCompania] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[IdCategoria] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
	[IdEstado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatEmpleado]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatEmpleado](
	[IdEmpleado] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatRedes]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatRedes](
	[IdCRedes] [int] NOT NULL,
	[NombreRedes] [varchar](30) NULL,
	[Sigla] [varchar](15) NULL,
	[Uso_Tipo] [varchar](30) NULL,
	[IdEstado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCRedes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatSucursal]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatSucursal](
	[IdSucursal] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[IdCliente] [int] NOT NULL,
	[Nombre_Cliente] [varchar](50) NOT NULL,
	[Apellido_Cliente] [varchar](50) NOT NULL,
	[IdTipo_Cliente] [int] NULL,
	[IdTipoIdentificacion] [int] NULL,
	[IdUbicacion] [int] NULL,
	[IdNacionalidad] [int] NULL,
	[IdTelefonoCliente] [int] NULL,
	[Correo_Electronico] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Compania]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compania](
	[IdCompania] [int] NOT NULL,
	[IdCatCompania] [int] NULL,
	[IdUbicacion] [int] NULL,
	[IdTelefono] [int] NULL,
	[IdRedes] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCompania] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompaniaTelefono]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompaniaTelefono](
	[IdCompaTele] [int] NOT NULL,
	[IdCompania] [int] NULL,
	[IdProvTelefono] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCompaTele] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Compra]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compra](
	[IdCompra] [int] NOT NULL,
	[IdProveedor] [int] NULL,
	[FechaCompra] [date] NULL,
	[NoVoucher] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactoProveedor]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactoProveedor](
	[IdContacto] [int] NOT NULL,
	[IdProveedor] [int] NULL,
	[Telefono] [varchar](15) NULL,
	[Correo] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdContacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamento](
	[IdDepartamento] [int] NOT NULL,
	[IdPais] [int] NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Abreviatura] [varchar](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDepartamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetaCompra]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetaCompra](
	[IddetCompra] [int] NULL,
	[IdProducto] [int] NULL,
	[CantidadComp] [int] NULL,
	[PrecioU] [decimal](9, 3) NULL,
	[Monto] [decimal](9, 3) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalle_Venta]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle_Venta](
	[IDVenta] [int] NULL,
	[Id_Producto] [int] NULL,
	[Id_MetodoP] [int] NULL,
	[Cantidad_Vendida] [int] NULL,
	[PrecioUnitario] [decimal](6, 4) NULL,
	[Monto] [decimal](6, 4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetallesEmp]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetallesEmp](
	[IdDEmpleados] [int] NOT NULL,
	[IdEmpleado] [int] NULL,
	[Id_Cargo] [int] NULL,
	[IdArea] [int] NULL,
	[IdUbicacion] [int] NULL,
	[HoraEntrada] [time](7) NULL,
	[HoraSalida] [time](7) NULL,
	[Correo_Electronico] [varchar](50) NULL,
	[IdEstado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDEmpleados] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetallesP]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetallesP](
	[IdDetalleP] [int] NOT NULL,
	[IdProd] [int] NULL,
	[IdModelo] [int] NULL,
	[Color] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDetalleP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[IdEmpleados] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[IdNacionalidad] [int] NULL,
	[IdTelefonoEmpleado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEmpleados] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado](
	[IdEstado] [int] NOT NULL,
	[Estado] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistorialCargo]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistorialCargo](
	[IdHCargo] [int] NOT NULL,
	[IdEmpleado] [int] NULL,
	[IdCargo] [int] NULL,
	[Fecha_Inicio] [date] NULL,
	[Fecha_Fin] [date] NULL,
	[IdAreaT] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdHCargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventario](
	[IdInv] [int] NOT NULL,
	[IdProducto] [int] NULL,
	[IdProveedor] [int] NULL,
	[Cantidadstock] [int] NULL,
	[CantidadMinima] [int] NULL,
	[Fecha_última_act] [date] NULL,
	[Fecha_venc_] [date] NULL,
	[Ubicación_almacén] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdInv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marcas]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marcas](
	[IdMarcas] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](100) NULL,
	[IdModelo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMarcas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MetodoPago]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MetodoPago](
	[IdMetodoP] [int] NOT NULL,
	[Metodo_Pago] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMetodoP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modelo]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modelo](
	[IdModelo] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdModelo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Municipio]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Municipio](
	[IdMunicipio] [int] NOT NULL,
	[IdDepartamento] [int] NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Abreviatura] [varchar](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMunicipio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nacionalidad]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nacionalidad](
	[IdNacionalidad] [int] NOT NULL,
	[Tiponacionalidad] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdNacionalidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[IdPais] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Abreviatura] [varchar](2) NULL,
	[CodigoPostal] [int] NULL,
	[Nacionalidad] [varchar](30) NULL,
	[IdEstado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Presentacion]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Presentacion](
	[IdPresentacion] [int] NOT NULL,
	[Nombre] [varchar](15) NULL,
	[Descripcion] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPresentacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProdProve]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProdProve](
	[IdProveedor] [int] NULL,
	[Id_Producto] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[id_prod] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](100) NULL,
	[IdSubcategoria] [int] NULL,
	[IdPresentacion] [int] NULL,
	[UnidadM] [int] NULL,
	[No_serie] [int] NULL,
	[Cod_barra] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_prod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor](
	[IdProveedor] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Idtipo_proveedor] [int] NULL,
	[NoRuc] [varchar](20) NULL,
	[IdEstado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProveedorContactoT]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProveedorContactoT](
	[IdProvTelefono] [int] NOT NULL,
	[Nombre] [varchar](10) NULL,
	[Sigla] [varchar](2) NULL,
	[IdEstado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProvTelefono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RedesSociales]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RedesSociales](
	[IdRedSoc] [int] NOT NULL,
	[IdCompania] [int] NULL,
	[IdCRedes] [int] NULL,
	[Nombre] [varchar](30) NULL,
	[URL] [varchar](100) NULL,
	[IdEstado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdRedSoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalarioEmpleado]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalarioEmpleado](
	[Id_Empleado] [int] NULL,
	[SalarioBruto] [decimal](10, 4) NULL,
	[IR] [decimal](10, 4) NULL,
	[INNS] [decimal](10, 4) NULL,
	[SalarioNeto] [decimal](10, 4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubCategoria]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategoria](
	[IdSubcategoria] [int] NOT NULL,
	[IdCategoria] [int] NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
	[IdEstado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSubcategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sucursal](
	[IdSucursal] [int] NOT NULL,
	[IdCompania] [int] NULL,
	[Nombre] [varchar](50) NOT NULL,
	[IdMunicipio] [int] NOT NULL,
	[IdTelefono] [int] NULL,
	[IdEstado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SucursalTelefono]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SucursalTelefono](
	[IdSucursalTele] [int] NOT NULL,
	[IdSucursal] [int] NULL,
	[IdProvTelefono] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSucursalTele] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[telefonoCliente]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[telefonoCliente](
	[IdTC] [int] NOT NULL,
	[Numero] [varchar](8) NULL,
	[Tipo] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TelefonoEmpleado]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TelefonoEmpleado](
	[IdTEmpleado] [int] NOT NULL,
	[IdEmpleado] [int] NULL,
	[IdProvTelefono] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Categorias]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Categorias](
	[IdTipo_categoria] [int] NOT NULL,
	[IdSubcategoria] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTipo_categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Cliente]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Cliente](
	[Idtipo_Cliente] [int] NOT NULL,
	[TipoCliente] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Idtipo_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_identificacion]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_identificacion](
	[IdIdentificacion] [int] NOT NULL,
	[TipoIdentificacion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdIdentificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_proveedor]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_proveedor](
	[Idtipo_Proveedor] [int] NOT NULL,
	[Tipo_proveedor] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Idtipo_Proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ubicacion]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ubicacion](
	[IdUbicacion] [int] NOT NULL,
	[IdPais] [int] NULL,
	[IdDepartamento] [int] NULL,
	[IdMunicipio] [int] NULL,
	[IdBarrio] [int] NULL,
	[Calle] [varchar](50) NULL,
	[Distrito] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUbicacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UnidadM]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnidadM](
	[IdUnidadM] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Abreviatura] [varchar](10) NULL,
	[Tipo] [varchar](50) NULL,
	[IdEstado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUnidadM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 17/5/2024 08:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[IDVenta] [int] NOT NULL,
	[IdCliente] [int] NULL,
	[IdEmpleado] [int] NULL,
	[IdMetodo] [int] NULL,
	[Descripcion] [varchar](200) NULL,
	[Fecha_Venta] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CalcVenta]  WITH CHECK ADD FOREIGN KEY([IdVenta])
REFERENCES [dbo].[Ventas] ([IDVenta])
GO
ALTER TABLE [dbo].[CatCompania]  WITH CHECK ADD FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estado] ([IdEstado])
GO
ALTER TABLE [dbo].[Categoria]  WITH CHECK ADD FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estado] ([IdEstado])
GO
ALTER TABLE [dbo].[CatRedes]  WITH CHECK ADD FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estado] ([IdEstado])
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD FOREIGN KEY([IdNacionalidad])
REFERENCES [dbo].[Nacionalidad] ([IdNacionalidad])
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD FOREIGN KEY([IdTelefonoCliente])
REFERENCES [dbo].[telefonoCliente] ([IdTC])
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD FOREIGN KEY([IdTipo_Cliente])
REFERENCES [dbo].[Tipo_Cliente] ([Idtipo_Cliente])
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD FOREIGN KEY([IdTipoIdentificacion])
REFERENCES [dbo].[tipo_identificacion] ([IdIdentificacion])
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD FOREIGN KEY([IdUbicacion])
REFERENCES [dbo].[Ubicacion] ([IdUbicacion])
GO
ALTER TABLE [dbo].[Compania]  WITH CHECK ADD FOREIGN KEY([IdCatCompania])
REFERENCES [dbo].[CatCompania] ([IdCatCompania])
GO
ALTER TABLE [dbo].[Compania]  WITH CHECK ADD FOREIGN KEY([IdRedes])
REFERENCES [dbo].[RedesSociales] ([IdRedSoc])
GO
ALTER TABLE [dbo].[Compania]  WITH CHECK ADD FOREIGN KEY([IdTelefono])
REFERENCES [dbo].[CompaniaTelefono] ([IdCompaTele])
GO
ALTER TABLE [dbo].[Compania]  WITH CHECK ADD FOREIGN KEY([IdUbicacion])
REFERENCES [dbo].[Ubicacion] ([IdUbicacion])
GO
ALTER TABLE [dbo].[CompaniaTelefono]  WITH CHECK ADD FOREIGN KEY([IdCompania])
REFERENCES [dbo].[CatCompania] ([IdCatCompania])
GO
ALTER TABLE [dbo].[CompaniaTelefono]  WITH CHECK ADD FOREIGN KEY([IdProvTelefono])
REFERENCES [dbo].[ProveedorContactoT] ([IdProvTelefono])
GO
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD FOREIGN KEY([IdProveedor])
REFERENCES [dbo].[Proveedor] ([IdProveedor])
GO
ALTER TABLE [dbo].[ContactoProveedor]  WITH CHECK ADD FOREIGN KEY([IdProveedor])
REFERENCES [dbo].[Proveedor] ([IdProveedor])
GO
ALTER TABLE [dbo].[Departamento]  WITH CHECK ADD FOREIGN KEY([IdPais])
REFERENCES [dbo].[Pais] ([IdPais])
GO
ALTER TABLE [dbo].[DetaCompra]  WITH CHECK ADD FOREIGN KEY([IddetCompra])
REFERENCES [dbo].[Compra] ([IdCompra])
GO
ALTER TABLE [dbo].[Detalle_Venta]  WITH CHECK ADD FOREIGN KEY([Id_Producto])
REFERENCES [dbo].[Productos] ([id_prod])
GO
ALTER TABLE [dbo].[Detalle_Venta]  WITH CHECK ADD FOREIGN KEY([IDVenta])
REFERENCES [dbo].[Ventas] ([IDVenta])
GO
ALTER TABLE [dbo].[DetallesEmp]  WITH CHECK ADD FOREIGN KEY([Id_Cargo])
REFERENCES [dbo].[Cargo] ([IdCargo])
GO
ALTER TABLE [dbo].[DetallesEmp]  WITH CHECK ADD FOREIGN KEY([IdArea])
REFERENCES [dbo].[AreaTrabajo] ([IdArea])
GO
ALTER TABLE [dbo].[DetallesEmp]  WITH CHECK ADD FOREIGN KEY([IdEmpleado])
REFERENCES [dbo].[Empleados] ([IdEmpleados])
GO
ALTER TABLE [dbo].[DetallesEmp]  WITH CHECK ADD FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estado] ([IdEstado])
GO
ALTER TABLE [dbo].[DetallesEmp]  WITH CHECK ADD FOREIGN KEY([IdUbicacion])
REFERENCES [dbo].[Ubicacion] ([IdUbicacion])
GO
ALTER TABLE [dbo].[DetallesP]  WITH CHECK ADD FOREIGN KEY([IdModelo])
REFERENCES [dbo].[Modelo] ([IdModelo])
GO
ALTER TABLE [dbo].[DetallesP]  WITH CHECK ADD FOREIGN KEY([IdProd])
REFERENCES [dbo].[Productos] ([id_prod])
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD FOREIGN KEY([IdNacionalidad])
REFERENCES [dbo].[Nacionalidad] ([IdNacionalidad])
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD FOREIGN KEY([IdTelefonoEmpleado])
REFERENCES [dbo].[TelefonoEmpleado] ([IdTEmpleado])
GO
ALTER TABLE [dbo].[HistorialCargo]  WITH CHECK ADD FOREIGN KEY([IdAreaT])
REFERENCES [dbo].[AreaTrabajo] ([IdArea])
GO
ALTER TABLE [dbo].[HistorialCargo]  WITH CHECK ADD FOREIGN KEY([IdCargo])
REFERENCES [dbo].[Cargo] ([IdCargo])
GO
ALTER TABLE [dbo].[HistorialCargo]  WITH CHECK ADD FOREIGN KEY([IdEmpleado])
REFERENCES [dbo].[Empleados] ([IdEmpleados])
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD FOREIGN KEY([IdProducto])
REFERENCES [dbo].[Productos] ([id_prod])
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD FOREIGN KEY([IdProveedor])
REFERENCES [dbo].[Proveedor] ([IdProveedor])
GO
ALTER TABLE [dbo].[Marcas]  WITH CHECK ADD FOREIGN KEY([IdModelo])
REFERENCES [dbo].[Modelo] ([IdModelo])
GO
ALTER TABLE [dbo].[Municipio]  WITH CHECK ADD FOREIGN KEY([IdDepartamento])
REFERENCES [dbo].[Departamento] ([IdDepartamento])
GO
ALTER TABLE [dbo].[Pais]  WITH CHECK ADD FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estado] ([IdEstado])
GO
ALTER TABLE [dbo].[ProdProve]  WITH CHECK ADD FOREIGN KEY([Id_Producto])
REFERENCES [dbo].[Productos] ([id_prod])
GO
ALTER TABLE [dbo].[ProdProve]  WITH CHECK ADD FOREIGN KEY([IdProveedor])
REFERENCES [dbo].[Proveedor] ([IdProveedor])
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD FOREIGN KEY([IdPresentacion])
REFERENCES [dbo].[Presentacion] ([IdPresentacion])
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD FOREIGN KEY([IdSubcategoria])
REFERENCES [dbo].[SubCategoria] ([IdSubcategoria])
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD FOREIGN KEY([UnidadM])
REFERENCES [dbo].[UnidadM] ([IdUnidadM])
GO
ALTER TABLE [dbo].[Proveedor]  WITH CHECK ADD FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estado] ([IdEstado])
GO
ALTER TABLE [dbo].[Proveedor]  WITH CHECK ADD FOREIGN KEY([Idtipo_proveedor])
REFERENCES [dbo].[Tipo_proveedor] ([Idtipo_Proveedor])
GO
ALTER TABLE [dbo].[ProveedorContactoT]  WITH CHECK ADD FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estado] ([IdEstado])
GO
ALTER TABLE [dbo].[RedesSociales]  WITH CHECK ADD FOREIGN KEY([IdCompania])
REFERENCES [dbo].[CatCompania] ([IdCatCompania])
GO
ALTER TABLE [dbo].[RedesSociales]  WITH CHECK ADD FOREIGN KEY([IdCRedes])
REFERENCES [dbo].[CatRedes] ([IdCRedes])
GO
ALTER TABLE [dbo].[RedesSociales]  WITH CHECK ADD FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estado] ([IdEstado])
GO
ALTER TABLE [dbo].[SalarioEmpleado]  WITH CHECK ADD FOREIGN KEY([Id_Empleado])
REFERENCES [dbo].[Empleados] ([IdEmpleados])
GO
ALTER TABLE [dbo].[SubCategoria]  WITH CHECK ADD FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categoria] ([IdCategoria])
GO
ALTER TABLE [dbo].[SubCategoria]  WITH CHECK ADD FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estado] ([IdEstado])
GO
ALTER TABLE [dbo].[Sucursal]  WITH CHECK ADD FOREIGN KEY([IdCompania])
REFERENCES [dbo].[CatCompania] ([IdCatCompania])
GO
ALTER TABLE [dbo].[Sucursal]  WITH CHECK ADD FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estado] ([IdEstado])
GO
ALTER TABLE [dbo].[Sucursal]  WITH CHECK ADD FOREIGN KEY([IdMunicipio])
REFERENCES [dbo].[Municipio] ([IdMunicipio])
GO
ALTER TABLE [dbo].[Sucursal]  WITH CHECK ADD FOREIGN KEY([IdTelefono])
REFERENCES [dbo].[SucursalTelefono] ([IdSucursalTele])
GO
ALTER TABLE [dbo].[SucursalTelefono]  WITH CHECK ADD FOREIGN KEY([IdProvTelefono])
REFERENCES [dbo].[ProveedorContactoT] ([IdProvTelefono])
GO
ALTER TABLE [dbo].[SucursalTelefono]  WITH CHECK ADD FOREIGN KEY([IdSucursal])
REFERENCES [dbo].[CatSucursal] ([IdSucursal])
GO
ALTER TABLE [dbo].[TelefonoEmpleado]  WITH CHECK ADD FOREIGN KEY([IdEmpleado])
REFERENCES [dbo].[CatEmpleado] ([IdEmpleado])
GO
ALTER TABLE [dbo].[TelefonoEmpleado]  WITH CHECK ADD FOREIGN KEY([IdProvTelefono])
REFERENCES [dbo].[ProveedorContactoT] ([IdProvTelefono])
GO
ALTER TABLE [dbo].[Tipo_Categorias]  WITH CHECK ADD FOREIGN KEY([IdSubcategoria])
REFERENCES [dbo].[SubCategoria] ([IdSubcategoria])
GO
ALTER TABLE [dbo].[Ubicacion]  WITH CHECK ADD FOREIGN KEY([IdBarrio])
REFERENCES [dbo].[Barrio] ([IdBarrio])
GO
ALTER TABLE [dbo].[Ubicacion]  WITH CHECK ADD FOREIGN KEY([IdDepartamento])
REFERENCES [dbo].[Departamento] ([IdDepartamento])
GO
ALTER TABLE [dbo].[Ubicacion]  WITH CHECK ADD FOREIGN KEY([IdMunicipio])
REFERENCES [dbo].[Municipio] ([IdMunicipio])
GO
ALTER TABLE [dbo].[Ubicacion]  WITH CHECK ADD FOREIGN KEY([IdPais])
REFERENCES [dbo].[Pais] ([IdPais])
GO
ALTER TABLE [dbo].[UnidadM]  WITH CHECK ADD FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estado] ([IdEstado])
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD FOREIGN KEY([IdEmpleado])
REFERENCES [dbo].[Empleados] ([IdEmpleados])
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD FOREIGN KEY([IdMetodo])
REFERENCES [dbo].[MetodoPago] ([IdMetodoP])
GO
USE [master]
GO
ALTER DATABASE [EmpresaComp] SET  READ_WRITE 
GO
