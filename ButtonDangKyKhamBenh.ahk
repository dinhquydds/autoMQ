ButtonĐăngKýKhámBệnh:
ShowTip("Đang chạy tự động. Nhấn Ctrl + `` để kết thúc")
tt = BỆNH VIỆN ĐẠI HỌC Y DƯỢC BUÔN MA THUỘT
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%

Sleep 500
Send, {Blind}{Alt Down}{Alt Up}k
Sleep, 500
Send {Enter}

tt = Chọn quầy
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%

Send {enter}
Sleep 500
ShowTip()
Gui, Show
return