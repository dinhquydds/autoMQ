#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force
SetKeyDelay, 0
SetTitleMatchMode, 2

Name = d:\tuongtrinhRHM.exe

FileRead, text, d:\tuongtrinhRHMver.txt
MsgBox %text% here
;UrlDownloadToFile, https://github.com/dinhquydds/autoMQ/raw/main/tuongtrinhRHMver.txt, d:\tuongtrinhRHMOnlineVer.txt
FileRead, text, %A_Workingdir%\Update.txt
if InStr(text, "Update") ;Change "Pinda" to a new word after you are going to push a update change your txt file to text="YourWord"
{
    UrlDownloadToFile, https://github.com/dinhquydds/autoMQ/raw/main/main.exe, D:\tuongtrinhRHM.exe
    Sleep 500
    gosub, Run
}
Else
{
    Gosub, Run
}

return


Run:
Run, %Name%

ExitApp