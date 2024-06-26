USE [master]
GO
CREATE LOGIN [VEND1] WITH PASSWORD=N'VEND1' MUST_CHANGE, DEFAULT_DATABASE=[master], CHECK_EXPIRATION=ON, CHECK_POLICY=ON
GO
USE [EmpresaC]
GO
CREATE USER [VEND1] FOR LOGIN [VEND1]
GO

USE [master]
GO
CREATE LOGIN [APC-10\Vendedor1] WITH PASSWORD=N'Macc_2024', DEFAULT_DATABASE=[master], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
USE [EmpresaC]
GO
CREATE USER [APC-10\Vendedor1] FOR LOGIN [APC-10\Vendedor1]
GO
USE [EmpresaC]
GO
ALTER ROLE [db_owner] ADD MEMBER [APC-10\Vendedor1]
GO

USE [master]
GO
ALTER LOGIN [Vend2] WITH PASSWORD=N'USE [master]'
GO

USE [master]
GO
ALTER LOGIN [RESPVENTA] WITH PASSWORD=N'Macc_2024'
GO

USE [master]
GO
ALTER LOGIN [CAJA1] WITH PASSWORD=N'USE [master]'
GO

USE [master]
GO
ALTER LOGIN [BOD1] WITH PASSWORD=N'Macc_2024'
GO

USE [master]
GO
ALTER LOGIN [AUXBOD1] WITH PASSWORD=N'Macc_2024'
GO

USE [master]
GO
ALTER LOGIN [RESPBOD] WITH PASSWORD=N'Macc_2024'
GO

USE [master]
GO
ALTER LOGIN [COMPRA1] WITH PASSWORD=N'Macc_2024'
GO

USE [master]
GO
ALTER LOGIN [RESPCRED] WITH PASSWORD=N'Macc_2024'
GO

USE [master]
GO
ALTER LOGIN [ASISTGER] WITH PASSWORD=N'Macc_2024'
GO

USE [master]
GO
ALTER LOGIN [GERENTE] WITH PASSWORD=N'Macc_2024'
GO

USE [master]
GO
ALTER LOGIN [ADMINSI] WITH PASSWORD=N'Macc_2024'
GO
