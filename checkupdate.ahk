#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force
SetKeyDelay, 0
SetTitleMatchMode, 2

Name = d:\tuongtrinhRHM.exe

whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
whr.Open("GET", "https://raw.githubusercontent.com/dinhquydds/autoMQ/main/version.txt", true)
whr.Send()
; Using 'true' above and the call below allows the script to remain responsive.
whr.WaitForResponse()
onlineVersion := whr.ResponseText

FileRead, currentVersion, d:\tuongtrinhRHMver.txt
MsgBox %currentVersion% %onlineVersion%

if (currentVersion = "") or (currentVersion < onlineVersion)
{
    MsgBox capnhat
    UrlDownloadToFile, https://github.com/dinhquydds/autoMQ/raw/main/main.exe, D:\tuongtrinhRHM.exe
    UrlDownloadToFile, https://github.com/dinhquydds/autoMQ/raw/main/version.txt, d:\tuongtrinhRHMVer.txt
    Sleep 500
    gosub, Run
}
Else
{
    MsgBox giu nguyen
    Gosub, Run
}

return


Run:
Run, %Name%

ExitApp