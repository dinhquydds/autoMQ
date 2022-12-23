ButtonĐăngNhập:
Gui, Submit, NoHide
; ShowTip("Đang chạy tự động. Nhấn Ctrl + `` để kết thúc")
tendangnhap := thongtindangnhap(User)[1]
matkhau := thongtindangnhap(User)[2]
; Đóng cửa sổ có sẵn
Loop, 3
	{
	If WinExist("BỆNH VIỆN ĐẠI HỌC Y DƯỢC BUÔN MA THUỘT")
		WinClose
	Sleep 500
	}

Run, MQHIS, D:\MQSOFT\MQHIS\bin\Debug

tt = ĐĂNG NHẬP HỆ THỐNG
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%

dangnhapMQ(tendangnhap, matkhau)

tt = BỆNH VIỆN ĐẠI HỌC Y DƯỢC BUÔN MA THUỘT
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%

Sleep 500
; ShowTip()
Gui, Show
Return

