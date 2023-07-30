CoordMode("Mouse", "Screen")
button_mo7phongkham_click(ctrl, *){
    mophongkham("011,039,040,041,042,043,120")
}

^+1::
{
mophongkham("011")
}


^+2::
{
mophongkham("039")
}


^+3::
{
mophongkham("040")
}


^+4::
{
mophongkham("041")
}


^+5::
{
mophongkham("042")
}


^+6::
{
mophongkham("043")
}


^+7::
{
mophongkham("120")
}


mophongkham(id){
    Loop parse, id, ","
    {
        WinWaitActiveWindow(tenbenhvien)
        Sleep 100
        Send("{Blind}{Alt Down}{Alt Up}kp{Enter}")
        WinWaitActiveWindow("Chọn khoa làm việc")
        MouseClick "L", 729, 268 ; tìm phòng
        Sleep 100
        Send "^a"
        Sleep 100
        Send A_LoopField  ;ma phong
        Sleep 100
        MouseClick "L", 734, 287 ; chọn phòng
        Sleep 100
        MouseClick "L",  690, 806 ; nhan chon
    }
}
