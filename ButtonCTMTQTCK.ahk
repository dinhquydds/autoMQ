^+m::
ButtonCTMTQTCK:
Gui, Submit, Hide
ShowTip("Đang chạy tự động. Nhấn Ctrl + `` để kết thúc")

tt = BỆNH VIỆN ĐẠI HỌC Y DƯỢC BUÔN MA THUỘT
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%

mof7()

danhsachxetnghiem := "22.121,22.1,22.5,24.169"

Loop, parse, danhsachxetnghiem, `,
{
xetnghiem = %A_LoopField%
nhapchidinh(xetnghiem, 100, giochidinh, ghichu)

}

Sleep 1000
ShowTip()
Gui, Show
Return