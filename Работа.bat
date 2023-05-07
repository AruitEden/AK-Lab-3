@chcp 65001
@echo off
Title Batch test
cd C:\Users\Наталья\Documents\"Лабораторная АК 3"\ПЗ-22-1\"Олексієнко Ганна Вікторівна"
mkdir Batch\"Not hidden folder"
cd C:\Users\Наталья\Documents\"Лабораторная АК 3"\ПЗ-22-1\"Олексієнко Ганна Вікторівна"\Batch
mkdir "Hidden folder"
cd C:\Users\Наталья\Documents\"Лабораторная АК 3"\ПЗ-22-1\"Олексієнко Ганна Вікторівна"\Batch
attrib +h "Hidden folder"
cd C:\Users\Наталья\Documents\"Лабораторная АК 3"\ПЗ-22-1\"Олексієнко Ганна Вікторівна"\Batch\"Not hidden folder"
echo.>copyhelp1.txt
xcopy/?
cd C:\Users\Наталья\Documents\"Лабораторная АК 3"\ПЗ-22-1\"Олексієнко Ганна Вікторівна"\Batch\"Not hidden folder"
xcopy/? >copyhelp1.txt
xcopy C:\Users\Наталья\Documents\"Лабораторная АК 3"\ПЗ-22-1\"Олексієнко Ганна Вікторівна"\Batch\"Not hidden folder"\copyhelp1.txt C:\Users\Наталья\Documents\"Лабораторная АК 3"\ПЗ-22-1\"Олексієнко Ганна Вікторівна"\Batch\"Hidden folder"\copied_copyhelp1.txt \y /h
pause
