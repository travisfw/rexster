:: Windows launcher script for Rexster
@echo off

cd ..\lib
set LIBDIR=%CD%

cd ..\ext
set EXTDIR=%CD%

cd ..\bin

set JAVA_OPTIONS=-Xms32m -Xmx512m

:: Launch the application
java %JAVA_OPTIONS% %JAVA_ARGS% -cp %LIBDIR%/*;%EXTDIR%/*  com.tinkerpop.rexster.WebServer %*