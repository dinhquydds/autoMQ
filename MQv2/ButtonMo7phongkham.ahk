CoordMode("Mouse", "Window")

tenbenhvien := "BỆNH VIỆN ĐẠI HỌC Y DƯỢC BUÔN MA THUỘT"
MyGui := Gui()
btn_mo7phongKham := MyGui.Add("Button", ,"Mở 7 phòng khám")
btn_mo7phongKham.OnEvent("Click", btn_mo7phongKham_click)

MyGui.Show()

btn_mo7phongKham_click(ctrl, *){
    WinActivate(tenbenhvien)
    Sleep 100
    ;vong lap
    Send("{Blind}{Alt Down}{Alt Up}kp{Enter}")
    WinWaitActive("Chọn khoa làm việc")
    MouseClick "L", 75, 55 ; tìm phòng
    Sleep 100
    Send "^a"
    Sleep 100
    Send 011    
    Sleep 100
    MouseClick "L", 220, 75 ; chọn phòng
    Sleep 100
    MouseClick "L",  35,  601
    }
    Sleep 500


; ButtonMở7phòngkhám:

; corY := "011,039,040,041,042,043,120"
; Loop, parse, corY, `,
; {
; WinwaitMQHIS()
; Sleep 1000
; Send, {Blind}{Alt Down}{Alt Up}kp{Enter}

; tt = Chọn khoa làm việc
; WinWait, %tt%
; IfWinNotActive, %tt%,, WinActivate, %tt%

; MouseClick, L, 75, 55 ; tìm phòng
; Sleep 100
; Send ^a
; Sleep 100
; Send %A_LoopField%
; Sleep 100
; MouseClick, L, 220, 75 ; chọn phòng
; Sleep 100
; MouseClick, left,  35,  601
; }
; Sleep 500
; Gui, Show
; return

; ^+1::
; corY := "011"
; WinwaitMQHIS()
; Sleep 1000
; Send, {Blind}{Alt Down}{Alt Up}kp{Enter}

; tt = Chọn khoa làm việc
; WinWait, %tt%
; IfWinNotActive, %tt%,, WinActivate, %tt%

; MouseClick, L, 75, 55 ; tìm phòng
; Sleep 100
; Send ^a
; Sleep 100
; Send %corY%
; Sleep 100
; MouseClick, L, 220, 75 ; chọn phòng
; Sleep 100
; MouseClick, left,  35,  601
; Sleep 500
; Gui, Show
; return

; ^+2::
; corY := "039"
; WinwaitMQHIS()
; Sleep 1000
; Send, {Blind}{Alt Down}{Alt Up}kp{Enter}

; tt = Chọn khoa làm việc
; WinWait, %tt%
; IfWinNotActive, %tt%,, WinActivate, %tt%

; MouseClick, L, 75, 55 ; tìm phòng
; Sleep 100
; Send ^a
; Sleep 100
; Send %corY%
; Sleep 100
; MouseClick, L, 220, 75 ; chọn phòng
; Sleep 100
; MouseClick, left,  35,  601
; Sleep 500
; Gui, Show
; return

; ^+3::
; corY := "040"
; WinwaitMQHIS()
; Sleep 1000
; Send, {Blind}{Alt Down}{Alt Up}kp{Enter}

; tt = Chọn khoa làm việc
; WinWait, %tt%
; IfWinNotActive, %tt%,, WinActivate, %tt%

; MouseClick, L, 75, 55 ; tìm phòng
; Sleep 100
; Send ^a
; Sleep 100
; Send %corY%
; Sleep 100
; MouseClick, L, 220, 75 ; chọn phòng
; Sleep 100
; MouseClick, left,  35,  601
; Sleep 500
; Gui, Show
; return

; ^+4::
; corY := "041"
; WinwaitMQHIS()
; Sleep 1000
; Send, {Blind}{Alt Down}{Alt Up}kp{Enter}

; tt = Chọn khoa làm việc
; WinWait, %tt%
; IfWinNotActive, %tt%,, WinActivate, %tt%

; MouseClick, L, 75, 55 ; tìm phòng
; Sleep 100
; Send ^a
; Sleep 100
; Send %corY%
; Sleep 100
; MouseClick, L, 220, 75 ; chọn phòng
; Sleep 100
; MouseClick, left,  35,  601
; Sleep 500
; Gui, Show
; return

; ^+5::
; corY := "042"
; WinwaitMQHIS()
; Sleep 1000
; Send, {Blind}{Alt Down}{Alt Up}kp{Enter}

; tt = Chọn khoa làm việc
; WinWait, %tt%
; IfWinNotActive, %tt%,, WinActivate, %tt%

; MouseClick, L, 75, 55 ; tìm phòng
; Sleep 100
; Send ^a
; Sleep 100
; Send %corY%
; Sleep 100
; MouseClick, L, 220, 75 ; chọn phòng
; Sleep 100
; MouseClick, left,  35,  601
; Sleep 500
; Gui, Show
; return

; ^+6::
; corY := "043"
; WinwaitMQHIS()
; Sleep 1000
; Send, {Blind}{Alt Down}{Alt Up}kp{Enter}

; tt = Chọn khoa làm việc
; WinWait, %tt%
; IfWinNotActive, %tt%,, WinActivate, %tt%

; MouseClick, L, 75, 55 ; tìm phòng
; Sleep 100
; Send ^a
; Sleep 100
; Send %corY%
; Sleep 100
; MouseClick, L, 220, 75 ; chọn phòng
; Sleep 100
; MouseClick, left,  35,  601
; Sleep 500
; Gui, Show
; return

; ^+7::
; corY := "120"

; WinwaitMQHIS()
; Sleep 1000
; Send, {Blind}{Alt Down}{Alt Up}kp{Enter}

; tt = Chọn khoa làm việc
; WinWait, %tt%
; IfWinNotActive, %tt%,, WinActivate, %tt%

; MouseClick, L, 75, 55 ; tìm phòng
; Sleep 100
; Send ^a
; Sleep 100
; Send %corY%
; Sleep 100
; MouseClick, L, 220, 75 ; chọn phòng
; Sleep 100
; MouseClick, left,  35,  601

; Sleep 500
; Gui, Show
; return