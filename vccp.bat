@echo off
cls
setlocal EnableDelayedExpansion 
mode con: cols=75 lines=40

rem +------------------------------------------------+
rem |           DO NOT EDIT BELOW THIS LINE          |
rem +------------------------------------------------+

rem ---------------------
rem   Default Variables
rem ---------------------
set $scriptVersion=0.9.0

set $cliMode=0

set $colorWarning=0E

rem Set the title.
title Visual Studio CLI Version Launcher v%$scriptVersion%

set PROGFILES=%ProgramFiles%
if not "%ProgramFiles(x86)%" == "" set PROGFILES=%ProgramFiles(x86)%

set counter=0

REM Check if Visual Studio 2019 is installed
set MSVCDIR="%PROGFILES%\Microsoft Visual Studio\2019"
set VCVARSALLPATH="%PROGFILES%\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvarsall.bat"
if exist %MSVCDIR% (
  if exist %VCVARSALLPATH% (
   	set COMPILER_VER="2019"
	
	set /A counter=counter+1
	set $availableVCItemLabel[!counter!]=x64_x86 Cross Tools Command Prompt for VS 2019
	set $availableVCVARSALLPATH[!counter!]=%VCVARSALLPATH% x64_x86
	
    set /A counter=counter+1
	set $availableVCItemLabel[!counter!]=x86_x64 Cross Tools Command Prompt for VS 2019
	set $availableVCVARSALLPATH[!counter!]=%VCVARSALLPATH% x86_x64
	
	set /A counter=counter+1
	set $availableVCItemLabel[!counter!]=x64 Native Tools Command Prompt for VS 2019
	set $availableVCVARSALLPATH[!counter!]=%VCVARSALLPATH% x64
	
	set /A counter=counter+1
	set $availableVCItemLabel[!counter!]=x86 Native Tools Command Prompt for VS 2019
	set $availableVCVARSALLPATH[!counter!]=%VCVARSALLPATH% x86
	
  )
)


REM Check if Visual Studio 2017 is installed
set MSVCDIR="%PROGFILES%\Microsoft Visual Studio\2017"
set VCVARSALLPATH="%PROGFILES%\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvarsall.bat"
if exist %MSVCDIR% (
  if exist %VCVARSALLPATH% (
   	set COMPILER_VER="2017"

	set /A counter=counter+1
	set $availableVCItemLabel[!counter!]=x64_x86 Cross Tools Command Prompt for VS 2017
	set $availableVCVARSALLPATH[!counter!]=%VCVARSALLPATH% x64_x86
	
    set /A counter=counter+1
	set $availableVCItemLabel[!counter!]=x86_x64 Cross Tools Command Prompt for VS 2017
	set $availableVCVARSALLPATH[!counter!]=%VCVARSALLPATH% x86_x64
	
	set /A counter=counter+1
	set $availableVCItemLabel[!counter!]=x64 Native Tools Command Prompt for VS 2017
	set $availableVCVARSALLPATH[!counter!]=%VCVARSALLPATH% x64
	
	set /A counter=counter+1
	set $availableVCItemLabel[!counter!]=x86 Native Tools Command Prompt for VS 2017
	set $availableVCVARSALLPATH[!counter!]=%VCVARSALLPATH% x64
	
  )
)
REM Check if Visual Studio 2015 is installed
set MSVCDIR="%PROGFILES%\Microsoft Visual Studio 14.0"
set VCVARSALLPATH="%PROGFILES%\Microsoft Visual Studio 14.0\VC\vcvarsall.bat"
if exist %MSVCDIR% (
  if exist %VCVARSALLPATH% (
   	set COMPILER_VER="2015"

	set /A counter=counter+1
	set $availableVCItemLabel[!counter!]=x64 ARM Cross Tools Command Prompt for VS2015
	set $availableVCVARSALLPATH[!counter!]=%VCVARSALLPATH% amd64_arm
	
	set /A counter=counter+1
	set $availableVCItemLabel[!counter!]=x64 Native Tools Command Prompt for VS2015
	set $availableVCVARSALLPATH[!counter!]=%VCVARSALLPATH% amd64
	
	set /A counter=counter+1
	set $availableVCItemLabel[!counter!]=x64 x86 Cross Tools Command Prompt for VS2015
	set $availableVCVARSALLPATH[!counter!]=%VCVARSALLPATH% amd64_x86
	
	set /A counter=counter+1
	set $availableVCItemLabel[!counter!]=x86 ARM Cross Tools Command Prompt for VS2015
	set $availableVCVARSALLPATH[!counter!]=%VCVARSALLPATH% x86_arm
	
	set /A counter=counter+1
	set $availableVCItemLabel[!counter!]=x86 Native Tools Command Prompt for VS2015
	set $availableVCVARSALLPATH[!counter!]=%VCVARSALLPATH% x86
	
	set /A counter=counter+1
	set $availableVCItemLabel[!counter!]=x64 x86 Cross Tools Command Prompt for VS2015
	set $availableVCVARSALLPATH[!counter!]=%VCVARSALLPATH% x86_amd64
	
  )
)
REM Check if Visual Studio 2013 is installed
set MSVCDIR="%PROGFILES%\Microsoft Visual Studio 12.0"
set VCVARSALLPATH="%PROGFILES%\Microsoft Visual Studio 12.0\VC\vcvarsall.bat"
if exist %MSVCDIR% (
  if exist %VCVARSALLPATH% (
    set COMPILER_VER="2013"

	REM set /A counter=counter+1
	REM set $availableVCItemLabel[!counter!]=Visual Studio 2013
	REM set $availableVCVARSALLPATH[!counter!]=%VCVARSALLPATH%
	
  )
)

REM Check if Visual Studio 2012 is installed
set MSVCDIR="%PROGFILES%\Microsoft Visual Studio 11.0"
set VCVARSALLPATH="%PROGFILES%\Microsoft Visual Studio 11.0\VC\vcvarsall.bat"
if exist %MSVCDIR% (
  if exist %VCVARSALLPATH% (
    set COMPILER_VER="2012"

	REM set /A counter=counter+1
	REM set $availableVCItemLabel[!counter!]=Visual Studio 2012
	REM set $availableVCVARSALLPATH[!counter!]=%VCVARSALLPATH%
	
  )
)

REM Check if Visual Studio 2010 is installed
set MSVCDIR="%PROGFILES%\Microsoft Visual Studio 10.0"
set VCVARSALLPATH="%PROGFILES%\Microsoft Visual Studio 10.0\VC\vcvarsall.bat"
if exist %MSVCDIR% (
  if exist %VCVARSALLPATH% (
    set COMPILER_VER="2010"

    REM set /A counter=counter+1
	REM set $availableVCItemLabel[!counter!]=Visual Studio 2010
	REM set $availableVCVARSALLPATH[!counter!]=%VCVARSALLPATH%
	
  )
)

REM Check if Visual Studio 2008 is installed
set MSVCDIR="%PROGFILES%\Microsoft Visual Studio 9.0"
set VCVARSALLPATH="%PROGFILES%\Microsoft Visual Studio 9.0\VC\vcvarsall.bat"
if exist %MSVCDIR% (
  if exist %VCVARSALLPATH% (
    set COMPILER_VER="2008"
   
	REM set /A counter=counter+1
	REM set $availableVCItemLabel[!counter!]=Visual Studio 2008
	REM set $availableVCVARSALLPATH[!counter!]=%VCVARSALLPATH%
	
  )
)

REM Check if Visual Studio 2005 is installed
set MSVCDIR="%PROGFILES%\Microsoft Visual Studio 8"
set VCVARSALLPATH="%PROGFILES%\Microsoft Visual Studio 8\VC\vcvarsall.bat"
if exist %MSVCDIR% (
  if exist %VCVARSALLPATH% (
	set COMPILER_VER="2005"

	REM set /A counter=counter+1
	REM set $availableVCItemLabel[!counter!]=Visual Studio 2005
	REM set $availableVCVARSALLPATH[!counter!]=%VCVARSALLPATH%
	
  )
) 

REM Check if Visual Studio 6 is installed
set MSVCDIR="%PROGFILES%\Microsoft Visual Studio\VC98"
set VCVARSALLPATH="%PROGFILES%\Microsoft Visual Studio\VC98\vcvarsall.bat"
if exist %MSVCDIR% (
  if exist %VCVARSALLPATH% (
	set COMPILER_VER="6"

	REM set /A counter=counter+1
	REM set $availableVCItemLabel[!counter!]=Visual Studio 6 (2003)
	REM set $availableVCVARSALLPATH[!counter!]=%VCVARSALLPATH%
	
  )
) 

rem Set the last available VC versions array id.
set $lastavailableVCItemLabelId=!counter!

if %counter% equ 0 (
 echo No compiler : Microsoft Visual Studio 6, 2005, 2008, 2010, 2012, 2013, 2015, 2017 or 2019
 goto :end
)

rem Show the header.
echo:
echo   Available Visual Studio Command Prompt Versions
echo   -------------------------------------
echo:

rem List all installed VC Command Prompt names.
for /L %%a in (1,1,%$lastavailableVCItemLabelId%) do (
     echo  %%a - !$availableVCItemLabel[%%a]!
)

rem Prompt the user to make a new selection.
echo:
set /p $newSelectionId=%backspace%  Selection (1-%$lastavailableVCItemLabelId%): 
echo:

rem --------------------
rem   Check User Input
rem --------------------
:checkUserInput

rem Check if the new selection comprises of digits.
echo %$newSelectionId%| findstr /r "^[1-9][0-9]*$">nul
if %errorlevel% neq 0 goto invalidSelectionGiven

rem Check if the new selection is a valid selection.
if %$newSelectionId% gtr %$lastavailableVCItemLabelId% goto invalidSelectionGiven


rem ---------------------------------
rem   Launch Selected VS CLI
rem ---------------------------------

rem call !$availableVCVARSALLPATH[%$newSelectionId%]! x86
cmd /k !$availableVCVARSALLPATH[%$newSelectionId%]! 

goto :end


rem ------------------------------
rem   Exit Subroutines - Failure
rem ------------------------------

rem An invalid selection was given.
:invalidSelectionGiven

if %$cliMode% equ 0 (
    color %$colorWarning%
    echo   An invalid selection was given.
    echo:
    echo   Press any key to exit.
    pause >nul
)
exit 1

:end