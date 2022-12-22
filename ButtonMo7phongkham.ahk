^+7::
ButtonMở7phòngkhám:
ShowTip("Đang chạy tự động. Nhấn Ctrl + `` để kết thúc")


corY := "011,039,040,041,042,043,120"
Loop, parse, corY, `,
{

WinwaitMQHIS()
Sleep 1000
Send, {Blind}{Alt Down}{Alt Up}kp

tt = Chọn khoa làm việc
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%

MouseClick, L, 75, 55 ; tìm phòng
Sleep 100
Send ^a
Sleep 100
Send %A_LoopField%
Sleep 100
MouseClick, L, 220, 75 ; chọn phòng
Sleep 100
MouseClick, left,  35,  601
}


Sleep 1000
ShowTip()
Gui, Show
return