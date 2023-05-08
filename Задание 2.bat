@chcp 65001
@echo off
setlocal enabledelayedexpansion
title Batch count

echo Если вам нужна помощь о том как работает программа, введите ^/help. Инче нажмите Enter
set /p he=
if "%he%" equ "/help" (
echo.
echo ^-------------------------------------------------------------------------------------
echo.
echo Эта программа подсчитывает количество подпапок с указаным атрибутом ^(h,r,a^)
echo.
echo h - Скрытые папки
echo r - Только для чтения
echo a - Архивные
echo.
echo Если вы не укажите атрибут будут подсчитаны все подкаталоги папки
echo.
echo Для того что бы программа зарботала вам нужно ввести полный путь к файлу
echo.
echo -------------------------------------------------------------------------------------
echo.
) else (
echo Удачи
echo.
)
set /p rootpath=Введите полный путь к файлу:

if not exist %rootpath% (
echo Error
pause
exit /b 1
)

set /p at=Введите атрибут (h,r,a):

set a=
set /a cnt_dirs=0

if %at% equ h (
set a=h
)


if %at% equ r (
set a=r
)

if %at% equ a (
set a=a
)


for /f %%f in ('dir %rootpath% /b /s /ad%a%') do (
set /a cnt_dirs+=1
)

echo Всего папок:%cnt_dirs%

endlocal

pause
exit /b 0
