SetWorkingDir, C:\SAV_Application

Run, SAVlsc.exe -mode 2

Sleep 4000

WinSet, AlwaysOnTop, On, PRIVATIZED
WinSet, Style, -0xC00000, PRIVATIZED
WinMove, PRIVATIZED, 0, 0, 1366, 768
WinMinimize, SCENE

WinHide, ahk_class Shell_TrayWnd
