@echo off

setlocal

set HOME=%HOMEDRIVE%%HOMEPATH%

if exist %HOME%\.vimrc del %HOME%\.vimrc
mklink %HOME%\.vimrc "%~dp0\_vimrc"

if exist %HOME%\.gvimrc del %HOME%\.gvimrc
mklink %HOME%\.gvimrc "%~dp0\_gvimrc"

del %HOME%\.vim
mklink /D %HOME%\.vim "%~dp0\vimfiles"