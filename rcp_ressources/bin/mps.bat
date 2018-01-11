@ECHO OFF

::----------------------------------------------------------------------
:: JetBrains MPS startup script
:: Generated by MPS
::----------------------------------------------------------------------

:: ---------------------------------------------------------------------
:: Ensure IDE_HOME points to the directory where the IDE is installed.
:: ---------------------------------------------------------------------
SET IDE_BIN_DIR=%~dp0
SET IDE_HOME=%IDE_BIN_DIR%\..

IF "%IDE_BIN_DIR:~-8%" == "bin\win\" (
  echo.
  echo    You are trying to run MPS from generic distribution
  echo Please first copy content of "%IDE_BIN_DIR%"
  echo into its parent directory ("%IDE_BIN_DIR:~0,-4%"^)
  echo and then run mps.bat from there
  echo.
  pause
  exit
)

:: ---------------------------------------------------------------------
:: Locate a JDK installation directory which will be used to run the IDE.
:: Try (in order): MPS_JDK, mps%BITS%.exe.jdk, ..\jre, JDK_HOME, JAVA_HOME.
:: ---------------------------------------------------------------------
SET JDK=

IF EXIST "%MPS_JDK%" SET JDK=%MPS_JDK%
IF NOT "%JDK%" == "" GOTO check

SET BITS=64
SET USER_JDK64_FILE=%USERPROFILE%\.MPS2017.2\config\mps%BITS%.exe.jdk
SET BITS=
SET USER_JDK_FILE=%USERPROFILE%\.MPS2017.2\config\mps%BITS%.exe.jdk
IF EXIST "%USER_JDK64_FILE%" (
  SET /P JDK=<%USER_JDK64_FILE%
) ELSE (
  IF EXIST "%USER_JDK_FILE%" SET /P JDK=<%USER_JDK_FILE%
)
IF NOT "%JDK%" == "" (
  IF NOT EXIST "%JDK%" SET JDK="%IDE_HOME%\%JDK%"
  GOTO check
)

:: Do not use our own 64 bit JDK for 32 bit Windwos
IF NOT DEFINED PROGRAMFILES(X86) GOTO skip64bitJDK

IF EXIST "%IDE_HOME%\jre64" SET JDK=%IDE_HOME%\jre64
IF NOT "%JDK%" == "" GOTO check

IF EXIST "%IDE_HOME%\jre" SET JDK=%IDE_HOME%\jre
IF NOT "%JDK%" == "" GOTO check

:skip64bitJDK
IF EXIST "%JDK_HOME%" SET JDK=%JDK_HOME%
IF NOT "%JDK%" == "" GOTO check

IF EXIST "%JAVA_HOME%" SET JDK=%JAVA_HOME%

:check
SET JAVA_EXE=%JDK%\bin\java.exe
IF NOT EXIST "%JAVA_EXE%" SET JAVA_EXE=%JDK%\jre\bin\java.exe
IF NOT EXIST "%JAVA_EXE%" (
  ECHO ERROR: cannot start JetBrains MPS.
  ECHO No JDK found. Please validate either MPS_JDK, JDK_HOME or JAVA_HOME points to valid JDK installation.
  ECHO
  EXIT /B
)

SET JRE=%JDK%
IF EXIST "%JRE%\jre" SET JRE=%JDK%\jre
IF EXIST "%JRE%\lib\amd64" SET BITS=64

:: ---------------------------------------------------------------------
:: Collect JVM options and properties.
:: ---------------------------------------------------------------------
IF NOT "%IDEA_PROPERTIES%" == "" SET IDE_PROPERTIES_PROPERTY="-Didea.properties.file=%IDEA_PROPERTIES%"

SET USER_VM_OPTIONS_FILE=%USERPROFILE%\.MPS2017.2\mps%BITS%.exe.vmoptions
SET VM_OPTIONS_FILE=%IDE_BIN_DIR%\mps%BITS%.exe.vmoptions
IF EXIST "%IDE_BIN_DIR%\win\mps%BITS%.exe.vmoptions" SET VM_OPTIONS_FILE=%IDE_BIN_DIR%\win\mps%BITS%.exe.vmoptions
IF EXIST %USER_VM_OPTIONS_FILE% SET VM_OPTIONS_FILE=%USER_VM_OPTIONS_FILE%
IF NOT "%IDEA_VM_OPTIONS%" == "" SET VM_OPTIONS_FILE=%IDEA_VM_OPTIONS%


set ACC=
FOR /F "usebackq delims=" %%i IN ("%VM_OPTIONS_FILE%") DO CALL "%IDE_BIN_DIR%\append.bat" "%%i"
IF EXIST "%VM_OPTIONS_FILE%" SET ACC=%ACC% -Djb.vmOptionsFile="%VM_OPTIONS_FILE%"

:: 32 bit
::set ADDITIONAL_JVM_ARGS=-XX:ReservedCodeCacheSize=240m
::set ADDITIONAL_JVM_ARGS=-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5051
:: 64 bit
::set ADDITIONAL_JVM_ARGS=-XX:ReservedCodeCacheSize=240m
::set ADDITIONAL_JVM_ARGS=-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5051

set IDEA_PATHS_SELECTOR=MPS2017.2
SET COMMON_JVM_ARGS="-XX:ErrorFile=%USERPROFILE%\java_error_in_IDEA_%%p.log" "-XX:HeapDumpPath=%USERPROFILE%\java_error_in_IDEA.hprof" "-Xbootclasspath/a:%IDE_HOME%/lib/boot.jar" -Didea.paths.selector=%IDEA_PATHS_SELECTOR% %IDE_PROPERTIES_PROPERTY%
SET IDE_JVM_ARGS=-Didea.platform.prefix=Idea -Didea.jre.check=true
SET ALL_JVM_ARGS=%ACC% %COMMON_JVM_ARGS% %IDE_JVM_ARGS% %ADDITIONAL_JVM_ARGS%

set CLASS_PATH=%IDE_HOME%\lib\branding.jar
set CLASS_PATH=%CLASS_PATH%;%IDE_HOME%\lib\mps-boot.jar
set CLASS_PATH=%CLASS_PATH%;%IDE_HOME%\lib\mps-boot-util.jar
set CLASS_PATH=%CLASS_PATH%;%IDE_HOME%\lib\bootstrap.jar
set CLASS_PATH=%CLASS_PATH%;%IDE_HOME%\lib\extensions.jar
set CLASS_PATH=%CLASS_PATH%;%IDE_HOME%\lib\util.jar
set CLASS_PATH=%CLASS_PATH%;%IDE_HOME%\lib\jdom.jar
set CLASS_PATH=%CLASS_PATH%;%IDE_HOME%\lib\log4j.jar
set CLASS_PATH=%CLASS_PATH%;%IDE_HOME%\lib\trove4j.jar
set CLASS_PATH=%CLASS_PATH%;%IDE_HOME%\lib\jna.jar
set CLASS_PATH=%CLASS_PATH%;%JDK%\lib\tools.jar
IF NOT "%IDEA_CLASS_PATH%" == "" SET CLASS_PATH=%CLASS_PATH%;%IDEA_CLASS_PATH%

:: ---------------------------------------------------------------------
:: Run the IDE.
:: ---------------------------------------------------------------------
SET OLD_PATH=%PATH%
SET PATH=%IDE_BIN_DIR%;%PATH%;%IDE_HOME%\external_tools\

set MAIN_CLASS=jetbrains.mps.Launcher
start "" "%JAVA_EXE%" %ALL_JVM_ARGS% -Didea.main.class.name=%MAIN_CLASS% -cp "%CLASS_PATH%" %MAIN_CLASS% %*

SET PATH=%OLD_PATH%

