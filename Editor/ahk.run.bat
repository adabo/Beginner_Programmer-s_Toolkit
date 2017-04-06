::"$(SciteDefaultHome)" "$(FilePath)"
@ECHO off
CD %1
CD ..\
reg Query "HKLM\Hardware\Description\System\CentralProcessor\0" | find /i "x86" > NUL && set OS=32BIT || set OS=64BIT
IF %OS%==32BIT (AutoHotkey\AutoHotkeyU32.exe %2)
IF %OS%==64BIT (AutoHotkey\AutoHotkeyU64.exe %2)
