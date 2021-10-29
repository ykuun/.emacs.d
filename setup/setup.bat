@echo off

echo "Start setting up for conf share"

REM ~ will delete the ""
pushd %~dp0
if %~1 == emacs (
   echo "emacs setup begins"
   mklink /D %userprofile%\.emacs.d %~dp0..\emacs.d
   )

if %~1 == vim (
   echo "vim setup begins"
   mklink /D %userprofile%\vimfiles %~dp0..\general_vim
   )

if %~1 == neovim (
   echo "neovim setup begins"
   mklink /D %userprofile%\AppData\Local\nvim %~dp0..\general_vim
   )
popd
