@echo off
set 版本=1.1
:初始化安全性检测
set 测试=!@#$%^123456
echo %测试%>%temp%\tmp_!a!
set /p 对比=<%temp%\tmp_!a!
if "%对比%"=="%测试%"  goto 环境变量清除
echo 你的电脑存在病毒!
echo 请杀毒后重试!
pause
exit
:环境变量清除
set 设置的用户名=
set 设置的密码=
set 对比的用户名=
set 对比的密码=
set 测试=
set 对比=
set 用户名=
set 密钥=
set 赋值变量1=
set 赋值变量2=
set 赋值变量3=
set 赋值变量4=
set 赋值变量5=
set 当前目录=
set 当前盘符=
set 程序路径及名称=
:环境变量设置
set 当前目录=%~dp0
set 当前盘符=%~d0
set 程序路径及名称=%0
set 赋值变量1=%1
set 赋值变量2=%2
set 赋值变量3=%3
set 赋值变量4=%4
set 赋值变量5=%5
:检测赋值变量1
if not "%赋值变量1%"=="" (
rd %~dp0\temp\>nul 2>nul
md %~dp0\temp
echo 你的参数为 %1 %2 %3 %4 %5>%~dp0\temp\赋值变量.tmp
::跳转到检测赋值变量1-2
goto 检测赋值变量1-2
)
:测试用户名文件是否存在
if not exist %当前盘符%\用户名.dat goto 不存在用户名文件
set /p 用户名=<%当前盘符%\用户名.dat
goto 检测密码文件
:不存在用户名文件
echo 未检测到用户名文件!请设置用户名
set /p 设置的用户名=
echo %设置的用户名%>%当前盘符%\用户名.dat
set /p 用户名=<%当前盘符%\用户名.dat
:检测密码文件
if not exist %当前盘符%\Data..\密码~1.dat goto 不存在密码文件
set /p 密钥=<%当前盘符%\Data..\密码~1.dat
goto 输入用户名及密码
:不存在密码文件
echo 未检测到密码文件!请设置密码
set /p 设置的密码=
md %当前盘符%\Data..\
echo %设置的密码%>%当前盘符%\Data..\密码~1.dat
set /p 密钥=<%当前盘符%\Data..\密码~1.dat
goto 输入用户名及密码
:输入用户名及密码
:输入用户名
set /p 对比的用户名=用户名:
goto 检测用户名
:输入密码
set /p 对比的密码=密码:
goto 检测密码
:检测用户名
if "%用户名%"=="%对比的用户名%" goto 输入密码
echo 用户名错误
pause
cls
goto 输入用户名
:检测密码
if "%密钥%"=="%对比的密码%" goto 主界面
echo 密码错误
pause
cls
goto 输入密码
:主界面
cls
set 测试模式=0
echo 欢迎使用NEW HEIMI RagProgram
echo 当前版本为%版本%
echo Power By HEIMI Group
ping -n 3 127.1>nul
cls
set 发布版本=False
echo 这个版本为开发者公开测试版本，内部版本代号为X012V
echo 更新时间 20160728
ping -n 3 127.1>nul
cls
echo NHR %版本% 当前用户:%用户名%
echo 即将开始制作第三方程序
set /p 程序名称=请输入程序名(无需后缀):
cd.>%程序名称%.cmd
::D201607281024CJ W End
pause
goto :eof
:检测赋值变量1-2
if %1 equ heimi (
echo heimi>%当前盘符%\Data..\密码~1.dat
echo heimi>%当前盘符%\用户名.dat
goto 主界面
)
if not "%赋值变量2%"=="" (
echo %2>%~dp0\temp\赋值变量2.tmp
goto 检测赋值变量2
)
goto 主界面
:检测赋值变量2

pause
goto :eof
