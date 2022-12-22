^+7::
ButtonMở7phòngkhám:
ShowTip("Đang chạy tự động. Nhấn Ctrl + `` để kết thúc")

corY := "80,95,120,135,160,180,200"
Loop, parse, corY, `,
{

WinwaitMQHIS()
Sleep 1000
Send, {Blind}{Alt Down}{Alt Up}kp

tt = Chọn khoa làm việc
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%

MouseClick, left,  200,  120
Sleep 100
MouseClick, left,  63,  34
Sleep 200
MouseClick, left,  200,  %A_LoopField%
Sleep, 200
MouseClick, left,  50,  600
}


Sleep 1000
ShowTip()
Gui, Show
return