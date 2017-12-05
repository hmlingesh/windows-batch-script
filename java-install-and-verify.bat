@Echo Off

Set "JV="

For /F "Tokens=3" %%A In ('java -version 2^>^&1') Do If Not Defined JV Set "JV=%%~A"
If /I "%JV%"=="not" (GOTO installJava) Else GOTO skip

Pause

:InstallJava
      set /p Input="Are you ok to install Java....(Y/N): "
      if /I "%Input%" == "Y" (goto java7) Else Echo "No"
pause


:skip
      Echo "Java already installed in this Machine.."
      Echo Java Version "%JV%"
      pause

:java7
     cls
     C:\TEMP>jdk-7u4-windows-x64.exe /quiet
     echo installation complete
    pause
