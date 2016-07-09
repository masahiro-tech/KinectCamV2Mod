if "%PROCESSOR_ARCHITECTURE%" EQU "x86" (

SET NGEN=C:\Windows\Microsoft.NET\Framework\v4.0.30319\ngen.exe
SET REGASM=C:\Windows\Microsoft.NET\Framework\v4.0.30319\RegAsm.exe

)

if "%PROCESSOR_ARCHITECTURE%" EQU "AMD64" (

SET NGEN=C:\Windows\Microsoft.NET\Framework64\v4.0.30319\ngen.exe
SET REGASM=C:\Windows\Microsoft.NET\Framework64\v4.0.30319\RegAsm.exe

)

cd %~dp0

%REGASM% /unregister /nologo BaseClassesNET.dll
%REGASM% /unregister /nologo KinectCam.dll

%NGEN% uninstall BaseClassesNET.dll
%NGEN% uninstall KinectCam.dll

pause

