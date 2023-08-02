Button_OK_Click(ctrl, *)
{
    Global IDbacsy, IDphuta, IDvongtrong, IDvongngoai, StartHour, StartMinute, giotuongtrinh, phuttuongtrinh, gioNhapTuongTrinh, mabenhnhan
    ; kiểm tra nhập dữ liệu
    if not laythongtinnhansu(User.Text, bacsi.Text, phuta.Text, vongngoai.Text, vongtrong.Text)
    {
        MyGui.Show()
        return
    }
    rowNum := 7
    listChidinh := [] ; chidnh, bao hiem danhsachrang
    loop rowNum
    {
        if not Dichvu%A_Index%.Text
            continue
        if not Chidinh%A_Index%.Text
        {
            MsgBox "Chưa nhập dịch vụ"
            MyGui.Show
            return
        }
        temp := layChiDinh(Dichvu%A_Index%.Text, Chidinh%A_Index%.Text, BaoHiem%A_Index%.Text, Toothlist%A_Index%.Text)
        if InStr(temp[1], "Fail")
        {
            MsgBox temp[1]
            MyGui.Show
            return
        }
        listChidinh.Push([temp[2], temp[3], temp[4]]) ; chi dinh, bao hiem danh sach rang
    }

    canhbaoBaohiem := ""

    if listChidinh.Length > 1
    {
        for i in listChidinh
        {
            canhbaoBaohiem .= i[1] ": " i[2] " `n"
        }
        if MsgBox(canhbaoBaohiem "`n Nhấn Yes để tiếp tục, No để sửa lại phần trăm", "Kiểm tra phần trăm bảo hiểm", "YesNo") = "No"
        {
            MyGui.Show
            return
        }
    }

    gioChiDinhDichVu := layGioChiDinh(StartHour.Value, StartMinute.Value) ;yyyymmddhhmmss
    gioNhapTuongTrinh := laygioNhapTuongTrinh(giotuongtrinh.Value, phuttuongtrinh.Value, gioChiDinhDichVu)
    IDbacsy := thongTinNhanSu[bacsi.Text][3]
    IDphuta := thongTinNhanSu[phuta.Text][3]
    IDvongtrong := thongTinNhanSu[vongtrong.Text][3]
    IDvongngoai := thongTinNhanSu[vongngoai.Text][3]
    bacsichidinh := thongTinNhanSu[User.Text][3]

    for i in listChidinh ; vong lap qua danh sach chi dinh
    {

        ghichu := [] ;xoa sach ghi chu
        ; MsgBox "chidinh" i[1] "`t baohiem" i[2] "`tdanhsachrang" i[3].Length
        if i[3].Length = 0 ; chi dinh khong can nhap so rang
        {
            ghichu := [" "]
            SolanChidinh := 1
        }
        else ; danh sach rang co gi do
        {
            for tooth in i[3] ; vong lap qua danh sach rang lay ghi chu so rang
            {
                ghichu.Push(tooth)
            }
            SolanChidinh := i[3].Length
        }
        ; lay duoc ghi chu + so vong lap nhap chi dinh

        ICD := danhMucDichVu[i[1]][1]
        machidinh := danhMucDichVu[i[1]][2]
        Mathuthuat := danhMucDichVu[i[1]][3]
        thoigianthuthuat := Random(danhMucDichVu[i[1]][6], danhMucDichVu[i[1]][7])
        noidungtuongtrinh := danhMucDichVu[i[1]][4]
        Vocam := danhMucDichVu[i[1]][5]
        phantrambaohiem := i[2]
        giochidinh := FormatTime(giochidinhdichvu, "HH:mm")

        WinWaitActiveWindow(tenbenhvien)
        mof7()


        loop SolanChidinh ; nhap chi dinh
        {
            if isToothNumber(ghichu[A_Index])
                note := "Răng " ghichu[A_Index]
            else
                note := " "
            nhapchidinh(bacsichidinh, machidinh, phantrambaohiem, giochidinh, note)
            Sleep 1000
            note := " "
        }

        nhanketthuc()
        mabenhnhan := laymabenhnhan()
        mof6()

        loop SolanChidinh ; nhap tuong trinh
        {
            nhaptuongtrinh(ICD, Mathuthuat, thoigianthuthuat, vocam, noidungtuongtrinh, ghichu[A_Index])
            Sleep 500
        }
        nhanketthuc()

        gioChiDinhDichVu := DateAdd(gioChiDinhDichVu, 1, "Minutes") ; them 1 phut vao gio chi dinh
    }


    MyGui.Show
    listChidinh := [] ;reset variable
    return
}


