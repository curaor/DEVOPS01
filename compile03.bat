@echo off
echo user %USR1%> ftpcmd.dat

echo %PAS1%>> ftpcmd.dat

echo ASCII>> ftpcmd.dat

echo LCD %WORKSPACE% >> ftpcmd.dat

echo CD CURAOD >> ftpcmd.dat

echo PUT DEVOPS\DEVOPS03.RPGLE   DEVOPS.DEVOPS03>> ftpcmd.dat

echo quote rcmd CHGPFM FILE(CURAOD/DEVOPS) MBR(DEVOPS03) SRCTYPE(RPGLE) TEXT('DEVOPS WAY TO DEPLOY') >> ftpcmd.dat

echo quote rcmd CRTBNDRPG PGM(CURAOD/DEVOPS03) SRCFILE(CURAOD/DEVOPS) SRCMBR(DEVOPS03) >> ftpcmd.dat




echo bye>> ftpcmd.dat

ftp -n -s:ftpcmd.dat 9.51.97.40

del "%WORKSPACE%\ftpcmd.dat"

echo "Deployment!!!"

