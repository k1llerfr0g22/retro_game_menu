@echo off
REM DOS Games Archive DOSBox launch script
REM 
REM Game: Duke Nukem 3D Shareware 1.3D
REM Configuration: online/browser
REM 
config -set "cpu cycles=fixed 18500"
config -set sdl output=overlay
config -set render aspect=true
config -set speaker pcspeaker=false
config -set speaker disney=false
config -set joystick joysticktype=none
config -set mixer rate=22050
config -set sblaster oplrate=22050
config -set midi mpu401=none
C:\S3VBE20\S3VBE20 /INSTALL
C:\S3SPDUP\S3SPDUP VGA+
cd DUKE3D
REM select lo-res settings
ren DUKE3D.CFG DUKE3D.BAK >NUL
copy DUKE3D.LO DUKE3D.CFG >NUL
loadfix
dos32a DUKE3D.EXE
loadfix -f
REM revert to current settings
del DUKE3D.CFG >NUL
ren DUKE3D.BAK DUKE3D.CFG >NUL
cd..
C:\S3SPDUP\S3SPDUP /UNLOAD
C:\S3VBE20\S3VBE20 /UNLOAD
config -set "cpu cycles=auto 7800 100%% limit 26800"
config -set speaker pcspeaker=true
config -set speaker disney=true
config -set joystick joysticktype=auto
config -set mixer rate=44100
config -set sblaster oplrate=44100
config -set midi mpu401=intelligent
cls
echo Thank you for playing Duke Nukem 3D Shareware!
echo.
echo Your DOS Games Archive http://www.dosgamesarchive.com/
@echo on