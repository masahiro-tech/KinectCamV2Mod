if "%PROCESSOR_ARCHITECTURE%" EQU "x86" (

SET NGEN=C:\Windows\Microsoft.NET\Framework\v4.0.30319\ngen.exe
SET REGASM=C:\Windows\Microsoft.NET\Framework\v4.0.30319\RegAsm.exe

)

if "%PROCESSOR_ARCHITECTURE%" EQU "AMD64" (

SET NGEN=C:\Windows\Microsoft.NET\Framework64\v4.0.30319\ngen.exe
SET REGASM=C:\Windows\Microsoft.NET\Framework64\v4.0.30319\RegAsm.exe

)

cd %~dp0

%NGEN% install BaseClassesNET.dll
%NGEN% install KinectCam.dll

%REGASM% /nologo BaseClassesNET.dll
%REGASM% KinectCam.dll /nologo /codebase /tlb: KinectCam.tlb

pause
