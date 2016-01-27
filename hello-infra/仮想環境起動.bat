@echo off

rem ----------------------------------------------------------
rem Copyright (c) PlazaCreate Co.,Ltd. 
rem 仮想OS(Ubuntu)をteratermで起動する
rem Written by M.Ito 2016.01.26
rem ----------------------------------------------------------

rem ディレクトリ移動
cd C:\Git\vm\hello-infra

rem vagrantからUbuntuを起動
vagrant up
vagrant teraterm