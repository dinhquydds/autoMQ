ButtonQuảnlýDược:
; ShowTip("Đang chạy tự động. Nhấn Ctrl + `` để kết thúc")
Gui, Submit, NoHide
tendangnhap := thongtindangnhap(User)[1]
matkhau := "123456"

; Đóng cửa sổ có sẵn
Loop, 3 
	{
	If WinExist("Dược -") 
		WinClose 
	Sleep 500
	}

Run, MQPHIS, D:\MQSOFT\MQPHIS\bin\Debug
Winwait, ĐĂNG NHẬP HỆ THỐNG
sleep 500
WinActivate, ĐĂNG NHẬP HỆ THỐNG
Sleep 500
dangnhapMQ(tendangnhap, matkhau)
Sleep 500
Send !y
Sleep 500
Send !y

Sleep 2000
If WinExist("Những mặt hàng hết hạn") 
		WinClose
Sleep 500
Send {alt down}
Sleep 100
Send {alt up}
Sleep 100
Send x
Sleep, 100
Send {right}
Sleep 100
Send {enter}
Sleep 1000

; ShowTip()
Gui, Show
return


ButtonThuViệnPhí:
Gui, Submit, NoHide
; ShowTip("Đang chạy tự động. Nhấn Ctrl + `` để kết thúc")
tendangnhap := thongtindangnhap(User)[1]
matkhau := thongtindangnhap(User)[2]

; Đóng cửa sổ có sẵn
Loop, 3 
	{
	If WinExist("MQBIS") 
		WinClose 
	Sleep 500
	}

Run, MQBIS, D:\MQSOFT\MQBIS\bin\Debug
Winwait, ĐĂNG NHẬP HỆ THỐNG
sleep 500
WinActivate, ĐĂNG NHẬP HỆ THỐNG
Sleep 500
Send {tab}
Sleep 100
dangnhapMQ(tendangnhap, matkhau)
Sleep 500

;Mở thu viện phí

SetTitleMatchMode, 2
CoordMode, Mouse, Screen

tt = MQBIS ahk_exe MQBIS.exe
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%

Sleep, 500

Send, {Blind}{Alt Down}{Alt Up}v

Sleep, 100

Send, {Blind}{Enter}

Sleep, 100

tt = THU VIỆN PHÍ ahk_exe MQBIS.exe
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%

Sleep, 1000

MouseClick, L, 1111, 477

Sleep, 500

MouseClick, L, 1101, 553

Sleep, 500

MouseClick, L, 930, 611

Sleep, 300

;toanhathuoc
tt = MQBIS - [Thu viện phí] ahk_exe MQBIS.exe
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%

Sleep, 1000

Send, {Blind}{Alt Down}{Alt Up}v

Sleep, 500

Send, {Blind}{Down}
Sleep 100
Send {Enter}

Sleep, 164

tt = TOA NHÀ THUỐC ahk_exe MQBIS.exe
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%

Sleep, 1000

MouseClick, L, 1102, 480

Sleep, 300

MouseClick, L, 1088, 537

Sleep, 500

MouseClick, L, 757, 436

Sleep, 300

MouseClick, L, 775, 509

Sleep, 300

MouseClick, L, 858, 533

Sleep, 300

MouseClick, L, 864, 601

Sleep, 300

MouseClick, L, 929, 612

Sleep, 300

tt = Chọn kho ahk_exe MQBIS.exe
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%

Sleep, 500

MouseClick, L, 918, 582

Sleep, 140

;thutamung
tt = MQBIS - [NHÀ THUỐC - HDDT - TRONG GIỜ] ahk_exe MQBIS.exe
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%

Sleep, 1000

Send, {Blind}{Alt Down}{Alt Up}v

Sleep, 100

Send, {Blind}{Down}{Down}{Down}{Enter}

Sleep, 100

tt = THU TIỀN TẠM ỨNG KHÁM BỆNH ahk_exe MQBIS.exe
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%

Sleep, 1000


MouseClick, L, 902, 504

Sleep, 300

MouseClick, L, 887, 543
Sleep, 351

MouseClick, L, 919, 527

Sleep, 484

MouseClick, L, 904, 545



Sleep, 390

MouseClick, L, 934, 610

Sleep, 382

;tim hoa don
tt = MQBIS - [Thu tạm ứng khám bệnh] ahk_exe MQBIS.exe
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%

Sleep, 1000

Send, {Blind}{Alt Down}{Alt Up}v{Down}{Down}{Down}{Down}{Down}{Down}{Down}
Sleep 100
Send {Enter}

Sleep, 218

tt = MQBIS - [Tìm hoá đơn] ahk_exe MQBIS.exe
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%

Sleep, 1000
; ShowTip()
Gui, Show
return


ButtonMởXQuang:
; ShowTip("Đang chạy tự động. Nhấn Ctrl + `` để kết thúc")
moxquang()
Sleep 1000
; ShowTip()
Gui, Show
return

ButtonNhậpcôngkhám:
; ShowTip("Đang chạy tự động. Nhấn Ctrl + `` để kết thúc")
mof7()
nhapchidinh("KHA009", "100", giochidinh, ghichu)
nhanketthuc()
Gui, Show
; ShowTip()
return