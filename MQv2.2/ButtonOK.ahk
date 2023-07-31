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

        ; WinWaitActiveWindow(tenbenhvien)
        ; mof7()
        loop SolanChidinh ; nhap chi dinh
        {
            if isToothNumber(ghichu[A_Index])
                note := "Răng " ghichu[A_Index]
            else
                note := " "
            testnhapchidinh(bacsichidinh, machidinh, phantrambaohiem, giochidinh, note)
            Sleep 1000
            note := " "
        }

        ; nhanketthuc()
        ; mabenhnhan := laymabenhnhan()
        ; mof6()

        loop SolanChidinh ; nhap tuong trinh
        {
            testnhaptuongtrinh(ICD, Mathuthuat, thoigianthuthuat, vocam, noidungtuongtrinh, ghichu[A_Index])
            Sleep 500
        }
        ; nhanketthuc()

        gioChiDinhDichVu := DateAdd(gioChiDinhDichVu, 1, "Minutes") ; them 1 phut vao gio chi dinh
    }


    MyGui.Show
    listChidinh := [] ;reset variable
    return
}

testnhapchidinh(bacsichidinh, Machidinh, phantrambaohiem, giochidinh, ghichu := "")
{
    WinWaitActiveWindow("Untitled - Notepad")
    ; global User
    Send "bac si chi dinh " bacsichidinh
    Send "Ma chi dinh " machidinh
    Send "phan tram bao hiem " phantrambaohiem
    Send "bac si chi dinh " thongTinNhanSu[user.Text][3]
    Send "ghi chu " ghichu
    Send "gio chi dinh " giochidinh
    Send "{Enter 2}"
}

testnhaptuongtrinh(ICD, Mathuthuat, thoigianthuthuat, Vocam, noidungtuongtrinh, ghichu := "", noidungvocam := "") {
    global gioNhapTuongTrinh, mabenhnhan
    ; Send "mabenhnhan" mabenhnhan "{enter}"

    giobatdau := FormatTime(gioNhapTuongTrinh, "HH:mm")
    gioNhapTuongTrinh := DateAdd(gioNhapTuongTrinh, thoigianthuthuat, "Minutes")
    gioketthuc := FormatTime(gioNhapTuongTrinh, "HH:mm")
    gioNhapTuongTrinh := DateAdd(gioNhapTuongTrinh, "1", "Minutes")
    Send "gio bat dau " giobatdau
    Send "gio ket thuc " gioketthuc "{Enter}"
    Send "gio bat dau " giobatdau
    Send "gio ket thuc " gioketthuc "{Enter}"
    Send "icd" ICD "{Enter}"
    If isToothNumber(ghichu)
        Send "Răng " ghichu

    Send " mathuthuat" mathuthuat
    Send "vocam " vocam "{enter}"
    nhapPTV()
    Send "{Enter}"
    tuongtrinh%noidungtuongtrinh%(ghichu)
    Sleep 500
    Send "{Enter 3}"
}

layChiDinh(dichvu, chidinh, baohiem, toothlist) {
    if baohiem = ""
        baohiem := 100
    if InStr(KhongCanNhapSoRang, chidinh)
        return ["OK", chidinh, baohiem, []]
    danhsachrang := laydanhsachrang(toothlist)
    if dichvu = "Nội nha"
    {
        if danhsachrang.Length != 1 ; nhap sai ten rang
            return ["Fail Nội nha chỉ nhập 1 răng", , baohiem, []]
        firstLetter := SubStr(danhsachrang[1], 1, 1)
        lastLetter := SubStr(danhsachrang[1], 2, 1)
        if chidinh = "Nội nha lần đầu"
        {
            if InStr("54 55 64 65 74 75 84 85", danhsachrang[1])
                return ["OK", "Điều trị tủy răng sữa nhiều chân", baohiem, danhsachrang]
            if InStr("51 52 53 61 62 63 71 72 73 81 82 83", danhsachrang[1])
                return ["OK", "Điều trị tủy răng sữa một chân", baohiem, danhsachrang]
            if InStr("1 2 3 4 5", lastLetter)
                return ["OK", "Điều trị tủy răng số " lastLetter, baohiem, danhsachrang]
            if InStr("6 7", lastLetter)
            {
                if InStr("1 2", firstLetter)
                    return ["OK", "Điều trị tủy răng số " lastLetter " hàm trên", baohiem, danhsachrang]
                else
                    return ["OK", "Điều trị tủy răng số " lastLetter " hàm dưới", baohiem, danhsachrang]
            }
        }
        if chidinh = "Nội nha lại"
        {
            if not InStr(rangvinhvien, danhsachrang[1])
                return ["Fail chỉ nhập nội nha lại răng vĩnh viễn", , baohiem, []]
            return ["OK", "Điều trị tủy lại răng số " lastLetter, baohiem, danhsachrang]
        }
        if chidinh = "Nội nha lần đầu (gây mê)"
        {
            if InStr("54 55 64 65 74 75 84 85", danhsachrang[1])
                return ["OK", "Điều trị tủy răng sữa nhiều chân gây mê", baohiem, danhsachrang]
            if InStr("51 52 53 61 62 63 71 72 73 81 82 83", danhsachrang[1])
                return ["OK", "Điều trị tủy răng sữa một chân gây mê", baohiem, danhsachrang]
            if InStr("1 2 3 4 5", lastLetter)
                return ["OK", "Điều trị tủy răng số " lastLetter " gây mê", baohiem, danhsachrang]

            if InStr("6 7", lastLetter)
            {
                if InStr("1 2", firstLetter)
                    return ["OK", "Điều trị tủy răng số " lastLetter " hàm trên gây mê", baohiem, danhsachrang]
                else
                    return ["OK", "Điều trị tủy răng số " lastLetter " hàm dưới gây mê", baohiem, danhsachrang]
            }
        }
        if chidinh = "Nội nha lại (gây mê)"
        {
            return ["OK", "Điều trị tủy lại răng số " lastLetter " gây mê", baohiem, danhsachrang]
        }
    }
    ; nho rang phẫu thuật chỉ nhập 1 răng
    if dichvu = "Nhổ răng" {
        if InStr(danhmucNhoRangPhauthuat, chidinh) {
            if danhsachrang.Length != 1
                return ["Fail Chỉ nhổ 1 răng phẫu thuật", , baohiem, []]
        }

        if InStr("Nhổ răng khôn hàm trên 500K, Nhổ răng khôn hàm trên 1M, Nhổ răng khôn hàm trên 1.5M, Nhổ răng khôn hàm trên 2M, Nhổ răng khôn hàm trên 2.5M, Nhổ răng khôn hàm trên 3M, Nhổ răng khôn hàm trên 3.5M", chidinh)
            if not InStr("18 28", danhsachrang[1])
                return ["Fail Nhổ răng không phù hợp chỉ định", , baohiem, []]
        if InStr("Nhổ răng khôn hàm dưới 500K, Nhổ răng khôn hàm dưới 1M, Nhổ răng khôn hàm dưới 1.5M, Nhổ răng khôn hàm dưới 2M, Nhổ răng khôn hàm dưới 2.5M, Nhổ răng khôn hàm dưới 3M, Nhổ răng khôn hàm dưới 3.5M", chidinh)
            if not InStr("38 48", danhsachrang[1])
                return ["Fail Nhổ răng không phù hợp chỉ định", , baohiem, []]
        if chidinh = "Nhổ răng sữa" ; nhap duoc nhieu rang
            for tooth in danhsachrang {
                if not InStr(rangsua, tooth)
                    return ["Fail Nhổ răng không phù hợp chỉ định", , baohiem, []]
            }
        if InStr("Nhổ răng ngầm, Nhổ răng vĩnh viễn, Nhổ răng thì 1, Nhổ răng thì 2, Nhổ răng thừa, Nhổ răng sữa, Nhổ răng lung lay, Nhổ chân răng,Ghép huyết tương", chidinh)
            for tooth in danhsachrang {
                if not InStr(rangvinhvien, tooth)
                    return ["Fail Nhổ răng không phù hợp chỉ định", , baohiem, []]
            }
        return ["OK", chidinh, baohiem, danhsachrang]
    }

    if danhsachrang.Length > 0
        return ["OK", chidinh, baohiem, danhsachrang]
    return ["Fail kiểm tra lại, lỗi không xác định", , baohiem, []]

}
