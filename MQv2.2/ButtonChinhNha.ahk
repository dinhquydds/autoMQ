OK_chinhnha(ctrl, *) {
    Global IDbacsy, IDphuta, IDvongtrong, IDvongngoai, StartHour, StartMinute, giotuongtrinh, phuttuongtrinh, gioNhapTuongTrinh, mabenhnhan
    if not laythongtinnhansu(UserChinhNha.Text, bacsiChinhNha.Text, phutaChinhNha.Text, vongngoaiChinhNha.Text, vongtrongChinhNha.Text)
    {
        MyGui.Show()
        return
    }
    IDbacsy := thongTinNhanSu[bacsiChinhNha.Text][3]
    IDphuta := thongTinNhanSu[phutaChinhNha.Text][3]
    IDvongtrong := thongTinNhanSu[vongtrongChinhNha.Text][3]
    IDvongngoai := thongTinNhanSu[vongngoaiChinhNha.Text][3]
    bacsichidinh := thongTinNhanSu[UserChinhNha.Text][3]
    ; thoi gian
    gioChiDinhDichVu := layGioChiDinh(StartHourChinhNha.Value, StartMinuteChinhNha.Value) ;yyyymmddhhmmss
    gioNhapTuongTrinh := laygioNhapTuongTrinh(giotuongtrinhchinhnha.Value, phuttuongtrinhchinhnha.Value, gioChiDinhDichVu)

    if namtramK.Text
    {
        WinWaitActiveWindow(tenbenhvien)
        mof7
        giochidinh := FormatTime(gioChiDinhDichVu, "HH:mm")
        loop namtramK.Text
        {
            nhapchidinh(bacsichidinh, "CHI914", "100", giochidinh)
            Sleep 1000
        }
        gioChiDinhDichVu := DateAdd(gioChiDinhDichVu, 1, "Minutes") ; them 1 phut vao gio chi dinh
        nhanketthuc()
        mabenhnhan := laymabenhnhan()
        mof6()
        loop namtramK.Text
        {
            nhaptuongtrinh("K00.6", "T05555", 1, "00", "chinhnha")
        }
        nhanketthuc()
    }

    if haitramruoiK.Text
    {
        WinWaitActiveWindow(tenbenhvien)
        mof7
        giochidinh := FormatTime(gioChiDinhDichVu, "HH:mm")
        loop haitramruoiK.Text
        {
            nhapchidinh(bacsichidinh, "CHI311", "100", giochidinh)
            Sleep 1000
        }
        gioChiDinhDichVu := DateAdd(gioChiDinhDichVu, 1, "Minutes") ; them 1 phut vao gio chi dinh
        nhanketthuc()
        mabenhnhan := laymabenhnhan()
        mof6()
        loop haitramruoiK.Text
        {
            nhaptuongtrinh("K00.6", "T05555", 1, "00", "chinhnha")
        }
        nhanketthuc()
    }

    if mottramK.Text
    {
        WinWaitActiveWindow(tenbenhvien)
        mof7
        giochidinh := FormatTime(gioChiDinhDichVu, "HH:mm")
        loop mottramK.Text
        {
            nhapchidinh(bacsichidinh, "CHINH015", "100", giochidinh)
            Sleep 1000
        }
        gioChiDinhDichVu := DateAdd(gioChiDinhDichVu, 1, "Minutes") ; them 1 phut vao gio chi dinh
        nhanketthuc()
        mabenhnhan := laymabenhnhan()
        mof6()
        loop mottramK.Text
        {
            nhaptuongtrinh("K00.6", "T05555", 1, "00", "chinhnha")
        }
        nhanketthuc()
    }

    if haimuoiK.Text
    {
        WinWaitActiveWindow(tenbenhvien)
        mof7
        giochidinh := FormatTime(gioChiDinhDichVu, "HH:mm")
        loop haimuoiK.Text
        {
            nhapchidinh(bacsichidinh, "CH500", "100", giochidinh)
            Sleep 1000
        }
        gioChiDinhDichVu := DateAdd(gioChiDinhDichVu, 1, "Minutes") ; them 1 phut vao gio chi dinh
        nhanketthuc()
        mabenhnhan := laymabenhnhan()
        mof6()
        loop haimuoiK.Text
        {
            nhaptuongtrinh("K00.6", "T05555", 1, "00", "chinhnha")
        }
        nhanketthuc()
    }
    if muoiK.Text
    {
        WinWaitActiveWindow(tenbenhvien)
        mof7
        giochidinh := FormatTime(gioChiDinhDichVu, "HH:mm")
        loop muoiK.Text
        {
            nhapchidinh(bacsichidinh, "CH501", "100", giochidinh)
            Sleep 1000
        }
        gioChiDinhDichVu := DateAdd(gioChiDinhDichVu, 1, "Minutes") ; them 1 phut vao gio chi dinh
        nhanketthuc()
        mabenhnhan := laymabenhnhan()
        mof6()
        loop muoiK.Text
        {
            nhaptuongtrinh("K00.6", "T05555", 1, "00", "chinhnha")
        }
        nhanketthuc()
    }

    if namK.Text
    {
        WinWaitActiveWindow(tenbenhvien)
        mof7
        giochidinh := FormatTime(gioChiDinhDichVu, "HH:mm")
        loop namK.Text
        {
            nhapchidinh(bacsichidinh, "CHIN191", "100", giochidinh)
            Sleep 1000
        }
        gioChiDinhDichVu := DateAdd(gioChiDinhDichVu, 1, "Minutes") ; them 1 phut vao gio chi dinh
        nhanketthuc()
        mabenhnhan := laymabenhnhan()
        mof6()
        loop namK.Text
        {
            nhaptuongtrinh("K00.6", "T05555", 1, "00", "chinhnha")
        }
        nhanketthuc()
    }


    if lanbatdau.Text = ""
    {
        chinhnhaGui.Show
        return
    }
    else
    {
        i := lanbatdau.Text
        if lanketthuc.Text = ""
            loopcount := 1
        else
            {
                if lanketthuc.Text > 45
                {
                    MsgBox "Tối đa 45 lần"
                    chinhnhaGui.Show
                    return
                }

            }

        if lanketthuc.Text = ""
            loopcount := 1
        else
        {
            loopcount := Integer(lanketthuc.Text) - Integer(lanbatdau.Text) + 1
            if loopcount < 0
            {
                MsgBox "nhap sai"
                chinhnhaGui.Show
                return
            }
        }

        giochidinh := FormatTime(gioChiDinhDichVu, "HH:mm")
        WinWaitActiveWindow(tenbenhvien)
        mof7()
        loop loopcount {
            z := i + 13
            madichvu := "CHI0" z
            nhapchidinh(bacsichidinh, madichvu, "100", giochidinh)
            i++
            Sleep 100
        }
        nhanketthuc()
        mabenhnhan := laymabenhnhan()
        ; nhap tuong trinh
        CoordMode "Mouse", "Screen"

        Sleep 1000
        mof6()
        Loop Loopcount
        {

            Sleep 1000

            MouseClick "L", 567, 845 ;Click mới
            Sleep 500
            MouseClick "L", 643, 846 ; Click Danh sách
            WinWaitActiveWindow("Danh sách chỉ định")

            ; gui ma benh nhan
            Sleep 100
            MouseClick "L", 146, 110
            Sleep 100
            Send mabenhnhan
            Sleep 100
            Send "{Enter}"
            Sleep 500
            MouseClick "Left", 680, 90, 1 ; sap xep theo thoi gian
            Sleep 300
            MouseClick "Left", 500, 133, 1 ; lay chi dinh
            Sleep 200
            A_Clipboard := ""
            Send "^a"
            Sleep 100
            Send "^c"
            ClipWait
            chidinhchinhnha := A_Clipboard
            Sleep 100
            ; MsgBox %chidinhchinhnha%
            chidinhchinhnha := StrReplace(chidinhchinhnha, "[", "")
            chidinhchinhnha := StrReplace(chidinhchinhnha, "]", "")

            ; lay ma chi dinh, phuong phap vo cam va tuong trinh

            if (!chidinhchinhnha)
            { ; neu khong co chi dinh thi ket thuc
                MouseClick "Left", 728, 43, 1 ; nhan ket thuc
                Msgbox "Da nhap xong tuong trinh"
                return
            }

            giobatdau := FormatTime(gioChiDinhDichVu, "HH:mm") ; format the time
            gioketthuc := FormatTime(gioChiDinhDichVu, "HH:mm") ; format the time
            gioChiDinhDichVu := DateAdd(gioChiDinhDichVu, 1, "Minutes")

            MouseClick "Left", 65, 130 ; Click chọn thủ thuật
            WinWaitActiveWindow("Thông tin phẫu thủ thuật")

            ; chon rang ham mat
            MouseClick "L", 1252, 211
            Sleep 300
            MouseClick "L", 1207, 293

            Send "{tab 2}"
            Sleep 100
            Send giobatdau
            Sleep 100
            Send "{tab}"
            Sleep 100
            ;Send %ngaytuongtrinh%
            Sleep 100
            Send "{tab}"
            Send gioketthuc
            Sleep 500
            Send "{tab}"
            Sleep 100
            ;Send %ngaytuongtrinh%
            Sleep 100
            Send "{tab}"
            Sleep 100
            Send giobatdau
            Sleep 100
            Send "{tab}"
            Sleep 100
            ;Send %ngaytuongtrinh%
            Sleep 100
            Send "{tab}"
            Send gioketthuc
            Sleep 100
            Send "{tab 2}"
            Send "K00.6"
            Sleep 100
            Send "{tab 2}"
            Send "K00.6"
            Sleep 100
            Send "{tab 3}"
            Sleep 100
            Send chidinhchinhnha
            Sleep 1000
            Send "{enter}"
            Sleep 100
            Send "{enter}"
            Sleep 100
            Send "{tab 2}"
            Sleep 100
            Send "00"
            Sleep 500
            Send "{tab 2}"
            Sleep 100
            nhapPTV()
            Sleep 100
            ; nhap noi dung tuong trinh
            Send "!t"
            Sleep 500
            MouseClick "Left", 1000, 500
            Sleep 500
            Send "^a"
            Sleep 100
            Send "{del}"
            Sleep 100
            Send "Gắn mắc cài"

            Sleep 500
            Send "{f6}" ;Lưu
            Sleep 500
            Send "!y"
            Sleep 1000

        }
    }
}