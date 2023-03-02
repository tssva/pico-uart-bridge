@echo off
set "BASE_DIR=%~dp0"
set "BUILD_DIR=%BASE_DIR%build"
set "PICO_SDK_DIR=%BASE_DIR%pico-sdk"

if not exist "%PICO_SDK_DIR%\.git" (
	git submodule sync --recursive
	git submodule update --init --recursive
)

if not exist "%BUILD_DIR%" (
	mkdir "%BUILD_DIR%"
)

cmake -B %BUILD_DIR% -S %BASE_DIR% -G "MinGW Makefiles" %*
mingw32-make -C %BUILD_DIR%
