%*
@echo off
setlocal

if "%1"=="" exit

set TT_HOME=C:\Program Files (x86)\teraterm
set TT_OPTS=/KR=UTF8 /KT=UTF8 /DS

set userhost=127.0.0.1
shift
:loop
  if "%~1"=="-p" set port=2222
  if "%~1"=="-i" set keyfile=c:/Git/vm/hello-infra/.vagrant/machines/default/virtualbox/private_key
  shift
if not "%~1"=="" goto loop

start "" "%TT_HOME%\ttermpro.exe" %userhost%:%port% /ssh2 /auth=publickey /keyfile=%keyfile% %TT_OPTS%