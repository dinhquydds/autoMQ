CoordMode("Mouse", "Window")
button_mo7phongkham_click(ctrl, *){
    mophongkham("011,039,040,041,042,043,120")
}

mophongkham(id){
    Loop parse, id, ","
    {
        WinActivate(tenbenhvien)
        Sleep 100
        Send("{Blind}{Alt Down}{Alt Up}kp{Enter}")
        WinWaitActive("Chọn khoa làm việc")
        MouseClick "L", 75, 55 ; tìm phòng
        Sleep 100
        Send "^a"
        Sleep 100
        Send A_LoopField  ;ma phong
        Sleep 100
        MouseClick "L", 220, 75 ; chọn phòng
        Sleep 100
        MouseClick "L",  35,  601 ; nhan chon
        Sleep 500
    }
}
