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

set ycm_python=%~dp0\vimfiles\bundle\ycm-win\python
set ycm_bin_ver=%ycm_python%\%version%

del "%ycm_python%\libclang.dll"
mklink "%ycm_python%\libclang.dll" "%ycm_bin_ver%\libclang.dll"

del "%ycm_python%\ycm_client_support.pyd"
mklink "%ycm_python%\ycm_client_support.pyd" "%ycm_bin_ver%\ycm_client_support.pyd"

del "%ycm_python%\ycm_core.pyd"
mklink "%ycm_python%\ycm_core.pyd" "%ycm_bin_ver%\ycm_core.pyd"
