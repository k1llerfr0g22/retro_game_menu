@echo off
REM DOS Games Archive DOSBox launch script
REM 
REM Game: Duke Nukem 3D Shareware 1.3D
REM Configuration: standard
REM 
config -set "cpu cycles=auto 7800 100%% limit 77000"
config -set render aspect=true
C:\S3VBE20\S3VBE20 /INSTALL
cd DUKE3D
REM select hi-res settings
del DUKE3D.BAK >NUL
ren DUKE3D.CFG DUKE3D.BAK >NUL
copy DUKE3D.HI DUKE3D.CFG >NUL
loadfix
dos32a DUKE3D.EXE
loadfix -f
REM backup current settings
del DUKE3D.HI >NUL
copy DUKE3D.CFG DUKE3D.HI >NUL
cd..
C:\S3VBE20\S3VBE20 /UNLOAD
cls
echo Thank you for playing Duke Nukem 3D Shareware!
echo.
echo To play again, type DUKE3D and press Enter
echo.
echo Your DOS Games Archive http://www.dosgamesarchive.com/
@echo on