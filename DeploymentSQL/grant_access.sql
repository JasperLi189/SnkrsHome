IF NOT EXISTS (SELECT name FROM sys.server_principals WHERE name = 'IIS APPPOOL\DefaultAppPool')
BEGIN
 CREATE LOGIN [IIS APPPOOL\DefaultAppPool]
 FROM WINDOWS WITH DEFAULT_DATABASE=[master],
 DEFAULT_LANGUAGE=[us_english]
END
GO
use SnkrsHome
GO
CREATE USER [SnkrsHomeUser]
 FOR LOGIN [IIS APPPOOL\DefaultAppPool]
GO
GO
EXEC sp_addrolemember 'db_owner', 'SnkrsHomeUser'
GO