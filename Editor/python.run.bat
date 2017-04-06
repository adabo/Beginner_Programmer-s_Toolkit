@ECHO OFF
CD %1
CD ..\
REG QUERY "HKLM\Hardware\Description\System\CentralProcessor\0" | FIND /i "x86" > NUL && SET OS=32BIT || SET OS=64BIT
IF %OS%==32BIT (Python\32Bit\pythonw.exe -u %2)
IF %OS%==64BIT (Python\64Bit\pythonw.exe -u %2)
