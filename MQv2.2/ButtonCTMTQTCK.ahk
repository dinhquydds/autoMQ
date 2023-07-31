^+m::
button_ctmtqtck_click(ctrl, *) {
    if User.Text = ""
    {
        MsgBox "Nhập BS chỉ định"
        MyGui.Show()
        return
    }
    bacsichidinh := thongTinNhanSu[User.Text][3]
    WinWaitActiveWindow(tenbenhvien)
    mof7()
    danhsachxetnghiem := "22.121,22.1,22.5,24.169"
    Loop parse, danhsachxetnghiem, ","
    {
        nhapchidinh(bacsichidinh, A_LoopField, 100, FormatTime(A_Now, "HH:mm"))
    }
}