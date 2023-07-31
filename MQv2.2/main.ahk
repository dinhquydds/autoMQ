#Requires AutoHotkey v2.0

#Warn  ; Enable warnings to assist with detecting common errors.
; SendMode "Input" ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir A_ScriptDir  ; Ensures a consistent starting directory.
#SingleInstance Force
SetKeyDelay 0
SetTitleMatchMode 2
tenbenhvien := "BỆNH VIỆN ĐẠI HỌC Y DƯỢC BUÔN MA THUỘT"
#Include danhsachnhansu.ahk
#Include danhsachdichvu.ahk
#Include giaodien.ahk
#Include function.ahk
#Include tuongtrinh.ahk
#Include glabel1.ahk
#Include ButtonCTMTQTCK.ahk
#Include ButtonDangNhap.ahk
#Include ButtonOK.ahk
#Include ButtonChinhNha.ahk
#Include ButtonMo7phongkham.ahk
#Include ButtonMoXQuang.ahk

; #Include dexuatdieutri.ahk




^`::Reload
^Esc::ExitApp

