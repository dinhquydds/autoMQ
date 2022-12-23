#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force
SetKeyDelay, 0
SetTitleMatchMode, 2

Name = d:\tuongtrinhRHM.exe


UrlDownloadToFile, https://raw.githubusercontent.com/dinhquydds/autoMQ/main/version.txt, d:\latestVersion.txt

FileRead, latestVersion, d:\latestVersion.txt
FileRead, currentVersion, d:\version.txt

if (currentVersion = "") or (currentVersion < latestVersion)
{
    UrlDownloadToFile, https://github.com/dinhquydds/autoMQ/raw/main/main.exe, D:\tuongtrinhRHM.exe
    UrlDownloadToFile, https://github.com/dinhquydds/autoMQ/raw/main/version.txt, d:\version.txt
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