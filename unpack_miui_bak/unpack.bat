@echo off
color b
title ���С�ױ�������  By���ƷƲ��� - www.feifeiboke.com
echo.
set bakFile=%1
if defined bakFile (goto javas) else set /p bakFile=�������޸ĺ��Bak�ļ���
:javas
python miuibak_to_abe.py %bakFile%
java -jar "%~dp0\abe.jar" unpack tmp.jar %bakFile%.tar
del tmp.jar
echo.
echo ��������...
pause>nul