@ECHO OFF

SETLOCAL

REM AM I IN THE CORRECT DIRECTORY
FOR /F %%i in ('dir /b "RUN_CreateUpdateScript.bat"') DO ( goto :Process )
goto :END

:Process

ECHO --OUTPUTTING UPDATESCRIPT
ECHO --OUTPUTTING UPDATESCRIPT 												 > UpdateScript.sql
ECHO USE MobileCarriers														>> UpdateScript.sql
ECHO GO																		>> UpdateScript.sql
ECHO.                         												>> UpdateScript.sql
ECHO.                         												>> UpdateScript.sql
ECHO SET ANSI_NULLS ON                         								>> UpdateScript.sql
ECHO SET ANSI_PADDING ON                        							>> UpdateScript.sql
ECHO SET ANSI_WARNINGS ON                         							>> UpdateScript.sql
ECHO SET ARITHABORT ON                         								>> UpdateScript.sql
ECHO SET CONCAT_NULL_YIELDS_NULL ON                         				>> UpdateScript.sql
ECHO SET NUMERIC_ROUNDABORT OFF                         					>> UpdateScript.sql
ECHO SET QUOTED_IDENTIFIER ON                         						>> UpdateScript.sql
echo.                                                           			>> UpdateScript.sql
TYPE DDL.sql																>> UpdateScript.sql
echo.                                                           			>> UpdateScript.sql
type DML.sql																>> UpdateScript.sql
echo --views																>> UpdateScript.sql
rem TYPE ..\..\createScripts\views\<viewname.sql>							>> UpdateScript.sql
echo.                                                           			>> UpdateScript.sql
echo -- procedures															>> UpdateScript.sql
rem TYPE ..\..\createScripts\procedures\<procname.sql>						>> UpdateScript.sql
echo.                                                           			>> UpdateScript.sql
rem this is flexible enough to group special sets of features into there own batch files.
rem call ..\myspecialfeature.bat

:END
ENDLOCAL
