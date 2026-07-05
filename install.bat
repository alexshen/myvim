@echo off
setlocal

set HOME=%HOMEDRIVE%%HOMEPATH%

echo Installing Vim config...

if exist %HOME%\.vimrc del %HOME%\.vimrc
mklink %HOME%\.vimrc "%~dp0.vimrc"

if exist %HOME%\.gvimrc del %HOME%\.gvimrc
mklink %HOME%\.gvimrc "%~dp0.gvimrc"

del %HOME%\.vim
mklink /D %HOME%\.vim "%~dp0\vimfiles"

echo.
echo Installing Neovim config...

set NVIM_DIR=%LOCALAPPDATA%\nvim
if not exist "%NVIM_DIR%" mkdir "%NVIM_DIR%"

if exist "%NVIM_DIR%\init.vim" del "%NVIM_DIR%\init.vim"
mklink "%NVIM_DIR%\init.vim" "%~dp0init.vim"
