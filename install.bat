@echo off

setlocal

if "%1"=="" set version=win32
if not "%1"=="" set version=%1

set HOME=%HOMEDRIVE%%HOMEPATH%

if exist %HOME%\.vimrc del %HOME%\.vimrc
mklink %HOME%\.vimrc "%~dp0\_vimrc"

if exist %HOME%\.gvimrc del %HOME%\.gvimrc
mklink %HOME%\.gvimrc "%~dp0\_gvimrc"

del %HOME%\.vim
mklink /D %HOME%\.vim "%~dp0\vimfiles"

set ycmd=%~dp0\vimfiles\bundle\ycm-win\third_party\ycmd
set ycm_bin_ver=%ycmd%\%version%

del "%ycmd%\libclang.dll"
mklink "%ycmd%\libclang.dll" "%ycm_bin_ver%\libclang.dll"

del "%ycmd%\ycm_client_support.pyd"
mklink "%ycmd%\ycm_client_support.pyd" "%ycm_bin_ver%\ycm_client_support.pyd"

del "%ycmd%\ycm_core.pyd"
mklink "%ycmd%\ycm_core.pyd" "%ycm_bin_ver%\ycm_core.pyd"
