@echo off && setlocal ENABLEEXTENSIONS && pushd "%~dp0" && call "%~dp0..\scripts\base.bat" || exit /b 1

set URL_PREFIX=https://raw.githubusercontent.com/CM3D2-01/CM3D2.AddModsSlider.Plugin/8b615573d728c7a8517f48f001df6bc1d4d41e10
set SRC_URL=%URL_PREFIX%/CM3D2.AddModsSlider.Plugin.cs
set SRC_FILE=CM3D2.AddModsSlider.Plugin.cs

echo �u%SRC_URL%�v����u%SRC_FILE%�v���_�E�����[�h���܂�
powershell -Command "(New-Object Net.WebClient).DownloadFile('%SRC_URL%', '%SRC_FILE%')"

if not exist "%SRC_FILE%" (
  echo �_�E�����[�h�Ɏ��s���܂���
  exit /b 1
)


set PNG_URL=%URL_PREFIX%/UnityInjector/Config/ModsSliderWin.png
set PNG_FILE=ModsSliderWin.png

echo �u%PNG_URL%�v����u%PNG_FILE%�v���_�E�����[�h���܂�
powershell -Command "(New-Object Net.WebClient).DownloadFile('%PNG_URL%', '%PNG_FILE%')"

if not exist "%PNG_FILE%" (
  echo �_�E�����[�h�Ɏ��s���܂���
  exit /b 1
)

echo �_�E�����[�h����

popd
