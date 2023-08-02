CoordMode("Mouse", "Screen")
button_mo7phongkham_click(ctrl, *) {
    mophongkham(listPhongKham)
}

listPhongKham := ["011", "039", "040", "041", "042", "043", "120"]

^+1::
{
    mophongkham([listPhongKham[SubStr(A_ThisHotkey, -1)]])
}

^+2::
{
    mophongkham([listPhongKham[SubStr(A_ThisHotkey, -1)]])
}

^+3::
{
    mophongkham([listPhongKham[SubStr(A_ThisHotkey, -1)]])
}

^+4::
{
    mophongkham([listPhongKham[SubStr(A_ThisHotkey, -1)]])
}

^+5::
{
    mophongkham([listPhongKham[SubStr(A_ThisHotkey, -1)]])
}

^+6::
{
    mophongkham([listPhongKham[SubStr(A_ThisHotkey, -1)]])
}

^+7::
{
    mophongkham([listPhongKham[SubStr(A_ThisHotkey, -1)]])
}

mophongkham(listPhongkham) {
    for phongkham in listPhongkham
    {
        WinWaitActiveWindow(tenbenhvien)
        Sleep 100
        Send("{Blind}{Alt Down}{Alt Up}kp{Enter}")
        WinWaitActiveWindow("Chọn khoa làm việc")
        MouseClick "L", 729, 268 ; tìm phòng
        Sleep 100
        Send "^a"
        Sleep 100
        Send phongkham  ;ma phong
        Sleep 100
        MouseClick "L", 734, 287 ; chọn phòng
        Sleep 100
        MouseClick "L", 690, 806 ; nhan chon
    }
}
