﻿Button_OK_Click(ctrl, *)
{
    Global IDbacsy, IDphuta, IDvongtrong, IDvongngoai, StartHour, StartMinute, giotuongtrinh, phuttuongtrinh, gioNhapTuongTrinh, mabenhnhan
    MyGui.Submit()
    ; kiem tra thong tin nhap du ten chua, nhap trung nguoi nghi khong
    if !(User.Text and phuta.Text and vongngoai.Text and vongtrong.Text) 
        {
            MsgBox "Chưa nhập đủ nhân sự"
            MyGui.Show()
            return
        }
    IDbacsy := thongTinNhanSu[bacsi.Text][3]
    IDphuta := thongTinNhanSu[phuta.Text][3]
    IDvongtrong := thongTinNhanSu[vongtrong.Text][3]
    IDvongngoai := thongTinNhanSu[vongngoai.Text][3]
    bacsichidinh := thongTinNhanSu[User.Text][3]
    ;lay thong tin nguoi nghi
    ; doc := "1azSdvq9PYTdy9ez6I63_-Q6WR-VgL6QvVupayG-X9wo"
    ; sht := "0"
    ; lst := ""
    ; Download(Format("https://docs.google.com/spreadsheets/d/{1}/export?format=csv&id={1}&gid={2}", doc, sht), "tmpnew.csv")
    ; FileEncoding("Utf-8")
    ; if FileExist("danhsachnghi.csv")
    ;     FileDelete("danhsachnghi.csv")
    ; Loop read, "tmpnew.csv", "danhsachnghi.csv"
    ;     {
    ;         if InStr(A_LoopReadLine, "TRUE")
    ;             FileAppend(A_LoopReadLine "`n")
    ;     }
    ; if FileExist("tmpnew.csv")
    ;     FileDelete("tmpnew.csv")
    ; danhsachnghi := FileRead("danhsachnghi.csv")
    ; var1 := Format("{1},{2},{3},{4},{5}", User.Text, bacsi.Text, phuta.Text, vongngoai.Text, vongtrong.Text)
    ; loop parse var1, ","
    ;     {
    ;         if InStr(danhsachnghi, A_LoopField)
    ;             {
    ;                 MsgBox(Format("Không nhập tên {1}", A_LoopField))
    ;                 MyGui.Show()
    ;                 return
    ;             }
    ;     }
    ; kiem tra thong tin nhan su xong
    ; kiem tra gio chi dinh
    ; ;lay thoi gian yyyymmddhhmmss
    if (StartHour.Value = 0) and (StartMinute.Value = 0)
    	time := A_now
    else
    	time := getStartTime(StartHour.Value, StartMinute.Value)
    
    gioChiDinhDichVu := time ;yyyymmddhhmmss
    ; gioChiDinhNhapVaoMay := FormatTime(giochidinhdichvu, "HH:mm")
    Sleep 100
    
    if (giotuongtrinh.Value = 0) and (phuttuongtrinh.Value = 0)
    	{
            gioNhapTuongTrinh := DateAdd(time, Random(3,7), "Minutes") ;yyyymmddhhmmss
            ; EnvAdd, time, %randomtime% ,Minits ; gio tuong trinh sau gio chi dinh 3 - 7 phut
        }
        else
            gioNhapTuongTrinh := getStartTime(giotuongtrinh.Value, phuttuongtrinh.Value)
        
    ; gioNhapTuongTrinhVaoMay := FormatTime(gioNhapTuongTrinh, "HH:mm")

    ; if WinWait(tenbenhvien)
    ;     WinActivate
    
    ; Lay thong tin dich vu duoc lam
    ;kiem tra thong tin da nhap dung chua
    dichvu := []
    toothlist := []
    savebaohiem := []
    loop 7
        {
            stt := A_Index ; save index
            if not Dichvu%stt%.Text
                continue

            if Dichvu%stt%.Text = "Bôi SDF"
                {
                    danhsachrang := laydanhsachrang(Toothlist%stt%.Text)
                    if danhsachrang.Length = 0
                        {
                            MsgBox "Nhập răng cần bôi SDF"
                            MyGui.Show
                            return
                        }
                    dichvu.Push("Bôi SDF")
                    savebaohiem.Push(baohiem%stt%.Text)
                    toothlist.Push(danhsachrang)
                }
            if Dichvu%stt%.Text = "Cạo vôi răng"
                {
                    if not CaoVoi%stt%.Value
                        {
                            MsgBox "Chưa nhập số lượng vôi răng"
                            MyGui.Show
                            return
                        }
                    dichvu.Push(danhmuccaovoirang[CaoVoi%stt%.Value])
                    savebaohiem.Push(baohiem%stt%.Text)
                    toothlist.Push("")
                }
            if Dichvu%stt%.Text = "Cắt thắng lưỡi"
                {
                    if not CatThangLuoi%stt%.Value
                        {
                            MsgBox "Chưa nhập đủ dịch vụ cắt thắng lưỡi"
                            MyGui.Show
                            return
                        }
                    dichvu.Push(danhMucCatThangLuoi[CatThangLuoi%stt%.Value])
                    savebaohiem.Push(baohiem%stt%.Text)
                    toothlist.Push("")
                }
            
            if Dichvu%stt%.Text = "Chỉnh nha"
                {
                    MsgBox "Chua viet xong chinh nha"
                    MyGui.Show
                    return
                }
            
            if Dichvu%stt%.Text = "Ghép huyết tương"
                {   
                    danhsachrang := laydanhsachrang(Toothlist%stt%.Text)
                    if danhsachrang.Length = 0
                        {
                            MsgBox "Ghép huyết tương cho răng nào `nKiểm tra lại bạn nhé"
                            MyGui.Show
                            return
                        }
                    dichvu.Push("Ghép huyết tương")
                    savebaohiem.Push(baohiem%stt%.Text)
                    toothlist.Push(danhsachrang)
                }
            if Dichvu%stt%.Text = "Ghép xương"
                {
                    try {
                        Integer(Toothlist%stt%.Text)
                    } catch Error as e {
                        MsgBox "Nhập số lượng đơn vị xương ghép `nKiểm tra lại bạn nhé"
                        MyGui.Show
                        return
                    }
                    if MsgBox("Ghép" Toothlist%stt%.Text " đơn vị xương `nBạn chắc không",,"YesNo") = "No"
                        {
                            MyGui.Show
                            return
                        }
                    dichvu.Push("Ghép xương")
                    savebaohiem.Push(baohiem%stt%.Text)
                    toothlist.Push(Toothlist%stt%.Text)
                }
            if Dichvu%stt%.Text = "Implant"
                {
                    if not Implant%stt%.Value
                        {
                            MsgBox "Chưa nhập hãng implant"
                            MyGui.Show
                            return
                        }
                    danhsachrang := laydanhsachrang(Toothlist%stt%.Text)
                    if danhsachrang.Length = 0
                        {
                            MsgBox "Dịch vụ implant `nKiểm tra lại số răng"
                            MyGui.Show
                            return
                        }
                    dichvu.Push(danhMucImplant[Implant%stt%.Value])
                    savebaohiem.Push(baohiem%stt%.Text)
                    toothlist.Push(danhsachrang)
                }
            if Dichvu%stt%.Text = "Implant abutment"
                {
                    if not Implant%stt%.Value
                        {
                            MsgBox "Implant abutment `nChưa nhập hãng implant"
                            MyGui.Show
                            return
                        }
                    if not Abutment%stt%.Value
                        {
                            MsgBox "Chưa nhập loại abutment"
                            MyGui.Show
                            return
                        }
                    danhsachrang := laydanhsachrang(Toothlist%stt%.Text)
                    if danhsachrang.Length = 0
                        {
                            MsgBox "Dịch vụ implant abutment `nKiểm tra lại số răng"
                            MyGui.Show
                            return
                        }
                    dichvu.Push(danhMucAbutment[Implant%stt%.Value][Abutment%stt%.Value])
                    savebaohiem.Push(baohiem%stt%.Text)
                    toothlist.Push(danhsachrang)
                }

            if Dichvu%stt%.Text = "Nhổ răng phẫu thuật"
                {
                    if not NhoRangPhauThuat%stt%.Value
                        {
                            MsgBox "Chưa nhập dịch vụ nhổ răng"
                            MyGui.Show
                            return
                        }
                    danhsachrang := laydanhsachrang(Toothlist%stt%.Text)
                    if danhsachrang.Length = 0
                        {
                            MsgBox "Nhổ răng phẫu thuật `nKiểm tra lại số răng"
                            MyGui.Show
                            return
                        }
                    if danhsachrang.Length != 1
                        {
                            MsgBox "Nhổ răng phẫu thuật chỉ nhập 1 răng"
                            MyGui.Show
                            return
                        }
                    ;kiem tra so rang khon ham tren
                    if (NhoRangPhauThuat%stt%.Value > 0) and (NhoRangPhauThuat%stt%.Value <= 7)
                        if not InStr("18 28", danhsachrang[1])
                            {
                                MsgBox "Nhập sai số răng khôn hàm trên"
                                MyGui.Show
                                return
                            }
                    if (NhoRangPhauThuat%stt%.Value >= 8) and (NhoRangPhauThuat%stt%.Value <= 14)
                        if not InStr("38 48", danhsachrang[1])
                            {
                                MsgBox "Nhập sai số răng khôn hàm dưới"
                                MyGui.Show
                                return
                            }
                    ; nho rang vinh vien
                    if NhoRangPhauThuat%stt%.Value = 16
                        if not InStr(rangvinhvien, danhsachrang[1])
                            {
                                MsgBox "Chỉ nhập răng vĩnh viễn"
                                mygui.Show
                                return
                            }
                    dichvu.Push(danhMucNhoRangPhauThuat[NhoRangPhauThuat%stt%.Value])
                    savebaohiem.Push(baohiem%stt%.Text)
                    toothlist.Push(danhsachrang)
                }

            if Dichvu%stt%.Text = "Nhổ răng thủ thuật"
                {
                    if not NhoRangThuThuat%stt%.Value
                        {
                            MsgBox "Chưa nhập dịch vụ nhổ răng"
                            MyGui.Show
                            return
                        }
                    
                    danhsachrang := laydanhsachrang(Toothlist%stt%.Text)
                    if danhsachrang.Length = 0
                        {
                            MsgBox "Nhổ răng thủ thuật`nKiểm tra lại số răng" 
                            MyGui.Show
                            return
                        }
                    ;nho rang sua
                    if NhoRangThuThuat%stt%.Value = 1
                        for tooth in danhsachrang
                            if not InStr(rangsua, tooth)
                                {
                                    MsgBox "Chỉ nhập răng sữa"
                                    MyGui.Show
                                    return
                                }
                    ;nho rang vinh vien
                    if NhoRangThuThuat%stt%.Value != 1
                        for tooth in danhsachrang
                            if not InStr(rangvinhvien, tooth)
                                {
                                    MsgBox "Chỉ nhập răng vĩnh viễn"
                                    MyGui.Show
                                    return
                                }
                    dichvu.Push(danhMucNhoRangThuThuat[NhoRangThuThuat%stt%.Value])
                    savebaohiem.Push(baohiem%stt%.Text)
                    toothlist.Push(danhsachrang)
                }
            
            if Dichvu%stt%.Text = "Nội nha"
                {
                    if not NoiNha%stt%.Value
                        {
                            MsgBox "Chưa nhập loại điều trị tủy"
                            MyGui.Show
                            return
                        }
                    danhsachrang := laydanhsachrang(Toothlist%stt%.Text)
                    
                    if danhsachrang.Length = 0
                        {
                            MsgBox "Kiểm tra số răng cần điều trị tủy"
                            MyGui.Show
                            return
                        }

                    if (danhsachrang.Length > 1)
                        {
                            MsgBox "Điều trị tủy chỉ nhập 1 răng"
                            MyGui.Show()
                            return
                        }
                    toothlist.Push(danhsachrang)
                    savebaohiem.Push(baohiem%stt%.Text)
                    ; nếu là răng sữa
                    if InStr(rangsua, danhsachrang[1])
                        {
                            if InStr("54 55 64 65 74 75 84 85", danhsachrang[1])
                                dichvu.Push("Điều trị tủy răng sữa nhiều chân")
                            
                            if InStr("51 52 53 61 62 63 71 72 73 81 82 83", danhsachrang[1])
                                dichvu.Push("Điều trị tủy răng sữa một chân")
                        }
                    else
                        {

                            ; nếu là răng vĩnh viễn
                            firstLetter := SubStr(danhsachrang[1], 1, 1)
                            lastLetter := SubStr(danhsachrang[1], 2, 1)
                            
                            ; neu dieu tri lan dau
                            if NoiNha%stt%.Value = 1
                                {
                                    if InStr("1 2 3 4 5", lastLetter)
                                        dichvu.Push("Điều trị tủy răng số " lastLetter)
                                    if InStr("6 7", lastLetter)
                                        {
                                            if InStr("1 2", firstLetter)
                                                dichvu.Push("Điều trị tủy răng số " lastLetter " hàm trên")
                                            else
                                                dichvu.Push("Điều trị tủy răng số " lastLetter " hàm dưới")
                                        }
                                }
                
                            if NoiNha%stt%.Value = 2 ; noi nha lai
                                dichvu.Push("Điều trị tủy lại răng số " lastLetter)
                
                            if NoiNha%stt%.Value = 3 ; noi nha lan dau gay me
                                {
                                    if InStr("1 2 3 4 5", lastLetter)
                                        dichvu.Push("Điều trị tủy răng số " lastLetter " gây mê")
        
                                    if InStr("6 7", lastLetter)
                                        {
                                            if InStr("1 2", firstLetter)
                                                dichvu.Push("Điều trị tủy răng số " lastLetter " hàm trên gây mê")
                                            else
                                                dichvu.Push("Điều trị tủy răng số " lastLetter " hàm dưới gây mê")
                                        }
                                        
                                }
                
                            if NoiNha%stt%.Value = 4 ; noi nha lai gay me
                                dichvu.Push("Điều trị tủy lại răng số " lastLetter " gây mê")
                        }
                }
        
            
            if Dichvu%stt%.Text = "Răng sứ"
                {
                    if not RangSu%stt%.Value
                        {
                            MsgBox " Chưa nhập loại răng sứ" 
                            MyGui.Show
                            return
                        }
                    danhsachrang := laydanhsachrang(Toothlist%stt%.Text)
                    if danhsachrang.Length = 0
                        {
                            MsgBox "Dịch vụ răng sứ, kiểm tra lại số răng"
                            MyGui.Show
                            return
                        }
                    for tooth in danhsachrang
                        if not InStr(rangvinhvien, tooth)
                            {
                                MsgBox "Kiểm tra lại số răng `nChỉ làm răng sứ cho răng vĩnh viễn"
                                MyGui.Show
                                return
                            }
                    dichvu.Push(danhMucRangSu[RangSu%stt%.Value])
                    savebaohiem.Push(baohiem%stt%.Text)
                    toothlist.Push(danhsachrang)
                }
            if Dichvu%stt%.Text = "Răng tháo lắp"
                {
                    if not RangThaoLap%stt%.Value
                        {
                            MsgBox "Chưa nhập dịch vụ răng tháo lắp"
                            MyGui.Show
                            return
                        }
                    if RangThaoLap%stt%.Value > 3
                        {
                            dichvu.Push(danhMucRangThaoLap[RangThaoLap%stt%.Value])
                            savebaohiem.Push(baohiem%stt%.Text)
                            toothlist.Push("")
                        }
                    else
                        {
                            danhsachrang := laydanhsachrang(Toothlist%stt%.Text)
                            if danhsachrang.Length = 0
                                {
                                    MsgBox "Dịch vụ răng tháo lắp `nKiểm tra lại số răng"
                                    MyGui.Show
                                    return
                                }
                            for tooth in danhsachrang
                                if not InStr(rangvinhvien, tooth)
                                    {
                                        MsgBox "Dịch vụ răng tháo lắp `nKiểm tra lại số răng`nNhập răng vĩnh viễn" 
                                        MyGui.Show
                                        return
                                    }
                            dichvu.Push(danhMucRangThaoLap[RangThaoLap%stt%.Value])
                            savebaohiem.Push(baohiem%stt%.Text)
                            toothlist.Push(danhsachrang)

                        }
                }
        
        
            if Dichvu%stt%.Text = "Tháo cầu"
                {
                    danhsachrang := laydanhsachrang(Toothlist%stt%.Text)
                    if danhsachrang.Length = 0
                        {
                            MsgBox "Dịch vụ Tháo cầu `nKiểm tra lại số răng"
                            MyGui.Show
                            return
                        }
                    for tooth in danhsachrang
                        if not InStr(rangvinhvien, tooth)
                            {
                                MsgBox "Dịch vị tháo cầu răng`nKiểm tra lại số răng"
                                MyGui.Show
                                return
                            }
                    dichvu.Push("Tháo cầu răng")
                    savebaohiem.Push(baohiem%stt%.Text)
                    toothlist.Push(danhsachrang)
                }
            if Dichvu%stt%.Text = "Tháo mão (chụp)"
                {
                    danhsachrang := laydanhsachrang(Toothlist%stt%.Text)
                    if danhsachrang.Length = 0
                        {
                            MsgBox "Dịch vụ Tháo mão (chụp) `nKiểm tra lại số răng"
                            MyGui.Show
                            return
                        }
                    for tooth in danhsachrang
                        if not InStr(rangvinhvien, tooth)
                            {
                                MsgBox "Dịch vị Tháo mão (chụp)`nKiểm tra lại số răng"
                                MyGui.Show
                                return
                            }
                    dichvu.Push("Tháo mão (chụp)")
                    savebaohiem.Push(baohiem%stt%.Text)
                    toothlist.Push(danhsachrang)
                }

            if Dichvu%stt%.Text = "Trám răng"
                {
                    if not TramRang%stt%.Value
                        {
                            MsgBox "Chưa chọn dịch vụ trám răng"
                            MyGui.Show
                            return
                        }
                    danhsachrang := laydanhsachrang(Toothlist%stt%.Text)
                    if danhsachrang.Length = 0
                        {
                            MsgBox "Dịch vụ Trám răng `nKiểm tra lại số răng"
                            MyGui.Show
                            return
                        }
                    if InStr("7 8", TramRang%stt%.Value)
                        {
                            for tooth in danhsachrang
                                if not InStr(rangsua, tooth)
                                    {
                                        MsgBox "Trám răng sữa `nKiểm tra lại số răng"
                                        MyGui.Show
                                        return
                                    }
                        }
                    dichvu.Push(danhMucTramRang[TramRang%stt%.Value])
                    savebaohiem.Push(baohiem%stt%.Text)
                    toothlist.Push(danhsachrang)
                }
        } ; het vong lap lay dich vu

        if dichvu.Length = 0
            {
                MsgBox "Chưa nhập dịch vụ"
                MyGui.Show
                return
            }
            mabenhnhan := "nguyendinhquy"

        loop dichvu.Length ; lap qua cac dich vu de nhap chi dinh, tuong trinh
            {
                index := A_Index ;save index
                ICD := danhMucDichVu[dichvu[index]][1]
                Mathuthuat := danhMucDichVu[dichvu[index]][3]
                thoigianthuthuat := Random(danhMucDichVu[dichvu[index]][6], danhMucDichVu[dichvu[index]][7])
                Vocam := danhMucDichVu[dichvu[index]][5]
                noidungtuongtrinh := danhMucDichVu[dichvu[index]][4]
                Machidinh := danhMucDichVu[dichvu[index]][2]
                phantrambaohiem := savebaohiem[index]
                giochidinh := FormatTime(giochidinhdichvu, "HH:mm")

                if InStr(KhongCanNhapSoRang, dichvu[index])
                    {
                        WinWaitActiveWindow(tenbenhvien)
                        mof7
                        nhapchidinh(Machidinh, phantrambaohiem, giochidinh)   
                        Sleep 1000
                        nhanketthuc
                        mabenhnhan := laymabenhnhan()
                        mof6()
                        nhaptuongtrinh(ICD, Mathuthuat, thoigianthuthuat, Vocam, noidungtuongtrinh)
                        nhanketthuc()
                        continue
                    }
                if dichvu[index] = "Chỉnh nha" 
                    {
                        MsgBox "chua co chay tu dong duoc o day"
                        continue
                    }
                if dichvu[index] = "Ghép xương"
                    {
                        mof7
                        loop toothlist[index]
                            {
                                WinWaitActiveWindow(tenbenhvien)
                                nhapchidinh(Machidinh, phantrambaohiem, giochidinh)   
                                Sleep 1000
                                
                            }
                        mabenhnhan := laymabenhnhan()
                        mof6()
                        Sleep 1000
                        loop toothlist[index]
                            {
                                nhaptuongtrinh(ICD, Mathuthuat, thoigianthuthuat, Vocam, noidungtuongtrinh)
                            }
                        nhanketthuc()
                        continue
                    }
                ; cac dich vu con lai
                WinWaitActiveWindow(tenbenhvien)
                mof7
                for tooth in toothlist[index]
                    {
                        ghichu := "Răng " tooth
                        nhapchidinh(Machidinh, phantrambaohiem, giochidinh, ghichu)
                        sleep 1000
                        
                    }
                    nhanketthuc()
                    mabenhnhan := laymabenhnhan()
                    mof6()

                for tooth in toothlist[index]
                    {
                        nhaptuongtrinh(ICD, Mathuthuat, thoigianthuthuat, Vocam, noidungtuongtrinh, tooth)
                        Sleep 1000
                    }
                nhanketthuc()
                gioChiDinhDichVu := DateAdd(gioChiDinhDichVu, 1, "Minutes")
            }


        MyGui.Show
    return
    
    ; Kiểm tra nhập số liệu xong, nhập chỉ định và tường trình
    ; loop 7
    ;     {
    ;         index := A_Index
    ;         dichvudaNhap := layChiDinhDichVu(Index)
    ;         if not dichvudaNhap
    ;             continue
                
    ;         if InStr(KhongCanNhapSoRang, dichvudaNhap)
    ;             {
    ;             ; test test
    ;                 ; MsgBox dichvudaNhap
    ;                 ; MsgBox danhMucDichVu[dichvudaNhap][1] danhMucDichVu[dichvudaNhap][3] Random(danhMucDichVu[dichvudaNhap][6] danhMucDichVu[dichvudaNhap][7]) danhMucDichVu[dichvudaNhap][5] danhMucDichVu[dichvudaNhap][4]
                    
    ;                 testnhapchidinh(danhMucDichVu[dichvudaNhap][2], BaoHiem%A_Index%.Text, FormatTime(giochidinhdichvu, "HH:mm"))

    ;                 ; WinWaitActiveWindow(tenbenhvien)
    ;                 ; Send "{F7}"
    ;                 ; ghichu := ""
    ;                 ; nhapchidinh(danhMucDichVu[dichvudaNhap][2], BaoHiem%A_Index%.Text, FormatTime(giochidinhdichvu, "HH:mm"))
    ;                 ; Sleep 500
    ;                 ; gioChiDinhDichVu := DateAdd(gioChiDinhDichVu, 1, "Minutes")
    ;                 ; nhanketthuc()
    ;                 ; mabenhnhan := laymabenhnhan()
    ;                 ; mof6()
    ;                 ; Nhaptuongtrinh(danhMucDichVu[dichvudaNhap][1], danhMucDichVu[dichvudaNhap][3], Random(danhMucDichVu[dichvudaNhap][6], danhMucDichVu[dichvudaNhap][7]), danhMucDichVu[dichvudaNhap][5], danhMucDichVu[dichvudaNhap][4], ghichu)
    ;                 ; nhanketthuc()
    ;                 ; continue
    ;             }
            

    ;         danhsachrang := laydanhsachrang(Toothlist%index%.Text)
    ;         for tooth in danhsachrang
    ;             {
    ;                 MsgBox tooth danhMucDichVu[dichvudaNhap][1] danhMucDichVu[dichvudaNhap][3] Random(danhMucDichVu[dichvudaNhap][6] danhMucDichVu[dichvudaNhap][7]) danhMucDichVu[dichvudaNhap][5] danhMucDichVu[dichvudaNhap][4]
    ;             }
               
    ;         ; WinWaitActiveWindow(tenbenhvien)
    ;         ; Send "{F7}"
    ;         ; WinWaitActiveWindow("Chỉ định dịch vụ")

    ;         ; for k, toothNumber in danhsachrang 
    ;         ;     {
    ;         ;         ghichu := "Răng " toothNumber
    ;         ;         nhapchidinh(danhMucDichVu[dichvudaNhap][2], BaoHiem%A_Index%.Text, FormatTime(giochidinhdichvu, "HH:mm"), ghichu)
    ;         ;     }
            
    ;         ; nhanketthuc()
    ;         ; mabenhnhan := laymabenhnhan()
    ;         ; Sleep 600
    ;         ; gioChiDinhDichVu := DateAdd(gioChiDinhDichVu, 1, "Minutes")
    ;         ; Sleep 400
    ;         ; mof6()
    ;         ; for k, toothNumber in danhsachrang {
    ;         ;     Nhaptuongtrinh(danhMucDichVu[dichvudaNhap][1], danhMucDichVu[dichvudaNhap][3], Random(danhMucDichVu[dichvudaNhap][6], danhMucDichVu[dichvudaNhap][7]), danhMucDichVu[dichvudaNhap][5], danhMucDichVu[dichvudaNhap][4], toothNumber)
            ; } 
            ; nhanketthuc()    
                
                
                
                
    }
            
testnhapchidinh(Machidinh, phantrambaohiem, giochidinh, ghichu:="")
{
    WinWaitActiveWindow("Untitled - Notepad")
        ; global User
        Send "Ma chi dinh " machidinh
        Send "phan tram bao hiem " phantrambaohiem
        Send "bac si chi dinh " thongTinNhanSu[user.Text][3]
        Send "ghi chu " ghichu
        Send "gio chi dinh " giochidinh
        Send "{Enter 2}"
}

testnhaptuongtrinh(ICD, Mathuthuat, thoigianthuthuat, Vocam, noidungtuongtrinh, ghichu:="", noidungvocam:=""){
    global gioNhapTuongTrinh, mabenhnhan
    Send "mabenhnhan" mabenhnhan "{enter}"
    
    giobatdau := FormatTime(gioNhapTuongTrinh, "HH:mm")
    gioNhapTuongTrinh := DateAdd(gioNhapTuongTrinh, thoigianthuthuat, "Minutes")
    gioketthuc := FormatTime(gioNhapTuongTrinh, "HH:mm")
    gioNhapTuongTrinh := DateAdd(gioNhapTuongTrinh, "1", "Minutes")
    Send "gio bat dau " giobatdau
    Send "gio ket thuc " gioketthuc "{Enter}"
    Send "gio bat dau " giobatdau 
    Send "gio ket thuc " gioketthuc
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

