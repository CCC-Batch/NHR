@echo off
set �汾=1.1
:��ʼ����ȫ�Լ��
set ����=!@#$%^123456
echo %����%>%temp%\tmp_!a!
set /p �Ա�=<%temp%\tmp_!a!
if "%�Ա�%"=="%����%"  goto �����������
echo ��ĵ��Դ��ڲ���!
echo ��ɱ��������!
pause
exit
:�����������
set ���õ��û���=
set ���õ�����=
set �Աȵ��û���=
set �Աȵ�����=
set ����=
set �Ա�=
set �û���=
set ��Կ=
set ��ֵ����1=
set ��ֵ����2=
set ��ֵ����3=
set ��ֵ����4=
set ��ֵ����5=
set ��ǰĿ¼=
set ��ǰ�̷�=
set ����·��������=
:������������
set ��ǰĿ¼=%~dp0
set ��ǰ�̷�=%~d0
set ����·��������=%0
set ��ֵ����1=%1
set ��ֵ����2=%2
set ��ֵ����3=%3
set ��ֵ����4=%4
set ��ֵ����5=%5
:��⸳ֵ����1
if not "%��ֵ����1%"=="" (
rd %~dp0\temp\>nul 2>nul
md %~dp0\temp
echo ��Ĳ���Ϊ %1 %2 %3 %4 %5>%~dp0\temp\��ֵ����.tmp
::��ת����⸳ֵ����1-2
goto ��⸳ֵ����1-2
)
:�����û����ļ��Ƿ����
if not exist %��ǰ�̷�%\�û���.dat goto �������û����ļ�
set /p �û���=<%��ǰ�̷�%\�û���.dat
goto ��������ļ�
:�������û����ļ�
echo δ��⵽�û����ļ�!�������û���
set /p ���õ��û���=
echo %���õ��û���%>%��ǰ�̷�%\�û���.dat
set /p �û���=<%��ǰ�̷�%\�û���.dat
:��������ļ�
if not exist %��ǰ�̷�%\Data..\����~1.dat goto �����������ļ�
set /p ��Կ=<%��ǰ�̷�%\Data..\����~1.dat
goto �����û���������
:�����������ļ�
echo δ��⵽�����ļ�!����������
set /p ���õ�����=
md %��ǰ�̷�%\Data..\
echo %���õ�����%>%��ǰ�̷�%\Data..\����~1.dat
set /p ��Կ=<%��ǰ�̷�%\Data..\����~1.dat
goto �����û���������
:�����û���������
:�����û���
set /p �Աȵ��û���=�û���:
goto ����û���
:��������
set /p �Աȵ�����=����:
goto �������
:����û���
if "%�û���%"=="%�Աȵ��û���%" goto ��������
echo �û�������
pause
cls
goto �����û���
:�������
if "%��Կ%"=="%�Աȵ�����%" goto ������
echo �������
pause
cls
goto ��������
:������
cls
set ����ģʽ=0
echo ��ӭʹ��NEW HEIMI RagProgram
echo ��ǰ�汾Ϊ%�汾%
echo Power By HEIMI Group
ping -n 3 127.1>nul
cls
set �����汾=False
echo ����汾Ϊ�����߹������԰汾���汾����ΪX012V
pause
goto :eof
:��⸳ֵ����1-2
if %1 equ heimi (
echo heimi>%��ǰ�̷�%\Data..\����~1.dat
echo heimi>%��ǰ�̷�%\�û���.dat
goto ������
)
if not "%��ֵ����2%"=="" (
echo %2>%~dp0\temp\��ֵ����2.tmp
goto ��⸳ֵ����2
)
goto ������
:��⸳ֵ����2

pause
goto :eof
