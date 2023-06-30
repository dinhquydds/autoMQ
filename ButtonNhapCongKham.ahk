^+k::
ButtonNhậpcôngkhám:
Gui, Submit, Hide

tt = BỆNH VIỆN ĐẠI HỌC Y DƯỢC BUÔN MA THUỘT
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%

Machidinh := "KHA009"
phantrambaohiem := 100
ghichu := ""
mof7()
WinGetTitle, title, Chỉ định dịch vụ
giochidinh := SubStr(title, -4)
; thoigianchidinhgio := StrSplit(thoigianchidinh, ":")[1]
; thoigianchidinhphut := StrSplit(thoigianchidinh, ":")[2]
; giochidinhdichvu := getStartTime(thoigianchidinhgio, thoigianchidinhphut)
; MsgBox % thoigianchidinhgio thoigianchidinhphut
nhapchidinh(Machidinh, phantrambaohiem, giochidinh, ghichu)
nhanketthuc()
gui, Show 
return 
Reload

