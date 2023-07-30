Button_OK_Click(ctrl, *)
{
    Global IDbacsy, IDphuta, IDvongtrong, IDvongngoai, StartHour, StartMinute, giotuongtrinh, phuttuongtrinh, gioNhapTuongTrinh, mabenhnhan
    ; kiểm tra nhập dữ liệu
    if not laythongtinnhansu(User.Text, bacsi.Text, phuta.Text, vongngoai.Text, vongtrong.Text)
        {
            MyGui.Show()
            return
        }

    rowNum := 1
    listChidinh := [] ; chidnh, danhsachrang
    loop rowNum 
        {
            if not Dichvu%rowNum%.Text
                continue
            if not Chidinh%rowNum%.Text 
                {
                    MsgBox "Chưa nhập dịch vụ"
                    MyGui.Show
                    return
                }
            temp := layChiDinh(Dichvu%rowNum%.Text, Chidinh%rowNum%.Text, Toothlist%rowNum%.Text)
            if temp[1] = "Fail"
                {
                    MsgBox "Kiểm tra lại"
                    MyGui.Show
                    return
                }
            listChidinh.Push([temp[2], temp[3]])
        }
    for i in listChidinh
        MsgBox i[1]
    
    IDbacsy := thongTinNhanSu[bacsi.Text][3]
    IDphuta := thongTinNhanSu[phuta.Text][3]
    IDvongtrong := thongTinNhanSu[vongtrong.Text][3]
    IDvongngoai := thongTinNhanSu[vongngoai.Text][3]
    bacsichidinh := thongTinNhanSu[User.Text][3]
 
    gioChiDinhDichVu := layGioChiDinh(StartHour.Value, StartMinute.Value) ;yyyymmddhhmmss
    gioNhapTuongTrinh := laygioNhapTuongTrinh(giotuongtrinh.Value, phuttuongtrinh.Value, gioChiDinhDichVu)
    
    
    
    
    
    
    MyGui.Show
    return
    dichvu := []
    toothlist := []
    savebaohiem := []
    loop 7
        {
            stt := A_Index ; save index
            if not Dichvu%stt%.Text
                continue
            danhsachrang := laydanhsachrang(Toothlist%stt%.Text)
            
            if Dichvu%stt%.Text = "Bôi SDF"
                {
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
                    danhsachchinhnha := StrSplit(Trim(toothlist%stt%.text), A_Space)
                    if (danhsachchinhnha.Length = 1){
                        x := y := danhsachchinhnha[1]
                    } else if (danhsachchinhnha.Length = 2) {
                        x := danhsachchinhnha[1]
                        y := danhsachchinhnha[2]
                        if (x<1 or x>y or y>45) {
                            MsgBox "Bạn nhập sai `n"
                            return
                        }
                    } else {
                        MsgBox "Bạn nhập sai"
                        Continue
                    }

                    ; lay thoi gian
                    giochidinh := FormatTime(gioChiDinhDichVu, "HH:mm")

                    Loopcount := y - x + 1

                    ;nhap chi dinh
                    i := x
                    WinWaitActiveWindow(tenbenhvien)
                    mof7()
                    While (i<=y) {
                        z := 13 + i
                        madichvu := "CHI0" z
                        nhapchidinh(madichvu, "100", giochidinh)
                        i++ 
                        sleep 100
                    }

                    nhanketthuc()
                    mabenhnhan := laymabenhnhan()
    ;nhaptuongtrinh

                    CoordMode "Mouse", "Screen"

                    Sleep 1000
                    mof6()
                    i := x
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
                    MouseClick "Left", 500 , 133, 1 ; lay chi dinh
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
                        MouseClick "Left", 728 , 43, 1 ; nhan ket thuc
                        Msgbox "Da nhap xong tuong trinh"
                        return
                        }


                    ; FormatTime, ngaytuongtrinh, %time%, dd/MM/yyyy ; format the time
                    giobatdau := FormatTime(gioChiDinhDichVu, "HH:mm") ; format the time
                    ; EnvAdd, time, 10 , Minits ; them 30 phut
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
                    i += 1
    }

    nhanketthuc()
                    MsgBox "Chua viet xong chinh nha co loi nho bao"
                    MyGui.Show
                    return
                }
            
            
            if Dichvu%stt%.Text = "Ghép huyết tương"
                {   
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
                            MsgBox "Chưa nhập dịch vụ"
                            MyGui.Show
                            return
                        }
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
            
            if Dichvu%stt%.Text = "Nhổ răng"
                {
                    if not NhoRang%stt%.Value
                        {
                            MsgBox "Chưa nhập dịch vụ nhổ răng"
                            MyGui.Show
                            return
                        }
                    if danhsachrang.Length = 0
                        {
                            MsgBox "Kiểm tra lại số răng"
                            MyGui.Show
                            return
                        }
                    
                    if (danhsachrang.Length > 1 and  NhoRang%stt%.Value < 20)
                        {
                            MsgBox "Nhổ răng phẫu thuật chỉ nhập 1 răng"
                            MyGui.Show
                            return
                        }
                    ; nho rang sua
                    if NhoRang%stt%.Value = 20
                        for tooth in danhsachrang
                            if not InStr(rangsua, tooth)
                                {
                                    MsgBox "Chỉ nhập răng sữa"
                                    MyGui.Show
                                    return
                                }
                    ;kiem tra so rang khon ham tren
                    if (NhoRang%stt%.Value > 0) and (NhoRang%stt%.Value <= 7)
                        if not InStr("18 28", danhsachrang[1])
                            {
                                MsgBox "Nhập sai số răng khôn hàm trên"
                                MyGui.Show
                                return
                            }
                    if (NhoRang%stt%.Value >= 8) and (NhoRang%stt%.Value <= 14)
                        if not InStr("38 48", danhsachrang[1])
                            {
                                MsgBox "Nhập sai số răng khôn hàm dưới"
                                MyGui.Show
                                return
                            }
                    ; nho rang vinh vien
                    if NhoRang%stt%.Value = 16
                        if not InStr(rangvinhvien, danhsachrang[1])
                            {
                                MsgBox "Chỉ nhập răng vĩnh viễn"
                                mygui.Show
                                return
                            }
                    dichvu.Push(danhMucNhoRang[NhoRang%stt%.Value])
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


        text := ""
for phantram in savebaohiem
    {
        if savebaohiem[A_Index] = ""
            savebaohiem[A_Index] := "100"
    }

if savebaohiem.Length > 1
    {
        loop savebaohiem.Length
            {
                text .= dichvu[A_Index] A_Space . savebaohiem[A_Index] "%`n"
            }
        text .= "Tiếp tục nhập tường trình nhấn YES `nDừng lại để sửa nhấn NO"
        if MsgBox(text,"Kiểm tra phần trăm bảo hiểm","YN") = "No"
            {
                MyGui.Show
                return
            }
    }

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
                        mof7()
                        nhapchidinh(Machidinh, phantrambaohiem, giochidinh)  
                        gioChiDinhDichVu := DateAdd(gioChiDinhDichVu, 1, "Minutes") 
                        Sleep 1000
                        nhanketthuc()
                        mabenhnhan := laymabenhnhan()
                        mof6()
                        nhaptuongtrinh(ICD, Mathuthuat, thoigianthuthuat, Vocam, noidungtuongtrinh)
                        nhanketthuc()
                        continue
                    }

                if dichvu[index] = "Ghép xương"
                    {
                        mof7
                        loop toothlist[index]
                            {
                                WinWaitActiveWindow(tenbenhvien)
                                mof7()
                                nhapchidinh(Machidinh, phantrambaohiem, giochidinh)   
                                Sleep 500
                            }
                        gioChiDinhDichVu := DateAdd(gioChiDinhDichVu, 1, "Minutes")
                        nhanketthuc()
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
                mof7()
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

layChiDinh(dichvu, chidinh, toothlist){
    if InStr(KhongCanNhapSoRang, chidinh)
        return ["OK", chidinh, []]
    if dichvu = "Nội nha"
        {
            danhsachrang := laydanhsachrang(toothlist)
            if danhsachrang.Length != 1 ; nhap sai ten rang
                return ["Fail", , ]
            firstLetter := SubStr(danhsachrang[1], 1, 1)
            lastLetter := SubStr(danhsachrang[1], 2, 1)
            if chidinh = "Nội nha lần đầu"
                {
                    if InStr("54 55 64 65 74 75 84 85", danhsachrang[1])
                        return ["OK", "Điều trị tủy răng sữa nhiều chân", danhsachrang]
                    if InStr("51 52 53 61 62 63 71 72 73 81 82 83", danhsachrang[1])
                        return ["OK", "Điều trị tủy răng sữa một chân", danhsachrang]
                    if InStr("1 2 3 4 5", lastLetter)
                        return ["OK", "Điều trị tủy răng số " lastLetter, danhsachrang]
                    if InStr("6 7", lastLetter)
                        {
                            if InStr("1 2", firstLetter)
                                return ["OK", "Điều trị tủy răng số " lastLetter " hàm trên", danhsachrang]
                            else
                                return ["OK", "Điều trị tủy răng số " lastLetter " hàm dưới", danhsachrang]
                        }
                }
            if chidinh = "Nội nha lại"
                {
                    if not InStr(rangvinhvien, danhsachrang[1])
                        return ["Fail", , ]
                    return ["OK", "Điều trị tủy lại răng số " lastLetter, danhsachrang]
                }
            if chidinh = "Nội nha lần đầu (gây mê)"
                {
                    if InStr("1 2 3 4 5", lastLetter)
                        return ["OK", "Điều trị tủy răng số " lastLetter " gây mê", danhsachrang]

                    if InStr("6 7", lastLetter)
                        {
                            if InStr("1 2", firstLetter)
                                return ["OK", "Điều trị tủy răng số " lastLetter " hàm trên gây mê", danhsachrang]
                            else
                                return ["OK", "Điều trị tủy răng số " lastLetter " hàm dưới gây mê", danhsachrang]
                        }
                }
            if chidinh = "Nội nha lại (gây mê)"
                {
                    return ["OK", "Điều trị tủy lại răng số " lastLetter " gây mê", danhsachrang]
                }
        }
    

}
