Button_OK_Click(ctrl, *)
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
            gioNhapTuongTrinh := getStartTime(giotuongtrinh, phuttuongtrinh)
        
    ; gioNhapTuongTrinhVaoMay := FormatTime(gioNhapTuongTrinh, "HH:mm")

    ; if WinWait(tenbenhvien)
    ;     WinActivate
    
    ; Lay thong tin dich vu duoc lam
    ;kiem tra thong tin da nhap dung chua
    out := []
    loop 7
        {
            index := A_Index
            dichvudaNhap := layChiDinhDichVu(Index)
            if not dichvudaNhap
                continue
            out.Push(dichvudaNhap)

            if not InStr(KhongCanNhapSoRang, dichvudaNhap)
                {
                    ; kiem tra ten rang nhap dung chua
                    danhsachrang := laydanhsachrang(Toothlist%index%.Text)
                    
                    if danhsachrang.Length = 0
                    {
                        MsgBox "Kiểm tra lại số răng"
                        MyGui.Show
                        return
                    }

                    ; kiem tra chỉ định có phù hợp với tên răng không
                    ; Nhổ răng sữa
                    if dichvudaNhap = "Nhổ răng sữa"
                        {
                            for tooth in danhsachrang
                                if not InStr(rangsua, tooth)
                                    {
                                        MsgBox tooth " Không phải răng sữa"
                                        MyGui.Show
                                        return
                                    }

                        }
                    ; nhổ răng phẫu thuật chỉ nhập 1 răng
                    if Dichvu%index%.Text = "Nhổ răng phẫu thuật"
                        if danhsachrang.Length != 1
                            {
                                MsgBox "Nhổ răng phẫu thuật chỉ nhập 1 răng"
                                MyGui.Show
                                return
                            }
                       
                    ; nhổ răng khôn ham tren 18 28
                    if InStr("Nhổ răng khôn hàm trên 500K, Nhổ răng khôn hàm trên 1M, Nhổ răng khôn hàm trên 1.5M, Nhổ răng khôn hàm trên 2M, Nhổ răng khôn hàm trên 2.5M, Nhổ răng khôn hàm trên 3M, Nhổ răng khôn hàm trên 3.5M", dichvudaNhap)
                        if not InStr("18 28", danhsachrang[1])
                            {
                                MsgBox "Nhập sai số răng"
                                MyGui.Show
                                return
                            }
                    ; nhổ răng khôn ham duoi 38 48
                    if InStr("Nhổ răng khôn hàm dưới 500K, Nhổ răng khôn hàm dưới 1M, Nhổ răng khôn hàm dưới 1.5M, Nhổ răng khôn hàm dưới 2M, Nhổ răng khôn hàm dưới 2.5M, Nhổ răng khôn hàm dưới 3M, Nhổ răng khôn hàm dưới 3.5M ", dichvudaNhap)
                        if not InStr("38 48", danhsachrang[1])
                            {
                                MsgBox "Nhập sai số răng"
                                MyGui.Show
                                return
                            }
                    ; nho rang vinh vien, rang lung lay, chan rang thi 1 thi 2
                    if InStr("Nhổ răng vĩnh viễn, Nhổ răng lung lay Nhổ chân răng", dichvudaNhap)
                        if not InStr(rangvinhvien, danhsachrang[1])
                            {
                                MsgBox "Nhập sai số răng"
                                MyGui.Show
                                return
                            }
                }   
        }


    if not out.Length
        {
            MsgBox "Chưa nhập dịch vụ"
            MyGui.Show
            return
        }
MsgBox out.Length
    ; Kiểm tra nhập số liệu xong, nhập chỉ định và tường trình
    loop 7
        {
            index := A_Index
            dichvudaNhap := layChiDinhDichVu(Index)
            if not dichvudaNhap
                continue
                
            if InStr(KhongCanNhapSoRang, dichvudaNhap)
                {
                ; test test
                    MsgBox dichvudaNhap
                    MsgBox danhMucDichVu[dichvudaNhap][1] danhMucDichVu[dichvudaNhap][3] Random(danhMucDichVu[dichvudaNhap][6] danhMucDichVu[dichvudaNhap][7]) danhMucDichVu[dichvudaNhap][5] danhMucDichVu[dichvudaNhap][4]
                
                    ; WinWaitActiveWindow(tenbenhvien)
                    ; Send "{F7}"
                    ; ghichu := ""
                    ; nhapchidinh(danhMucDichVu[dichvudaNhap][2], BaoHiem%A_Index%.Text, FormatTime(giochidinhdichvu, "HH:mm"))
                    ; Sleep 500
                    ; gioChiDinhDichVu := DateAdd(gioChiDinhDichVu, 1, "Minutes")
                    ; nhanketthuc()
                    ; mabenhnhan := laymabenhnhan()
                    ; mof6()
                    ; Nhaptuongtrinh(danhMucDichVu[dichvudaNhap][1], danhMucDichVu[dichvudaNhap][3], Random(danhMucDichVu[dichvudaNhap][6], danhMucDichVu[dichvudaNhap][7]), danhMucDichVu[dichvudaNhap][5], danhMucDichVu[dichvudaNhap][4], ghichu)
                    ; nhanketthuc()
                    ; continue
                }
            

            danhsachrang := laydanhsachrang(Toothlist%index%.Text)
            for tooth in danhsachrang
                {
                    MsgBox tooth danhMucDichVu[dichvudaNhap][1] danhMucDichVu[dichvudaNhap][3] Random(danhMucDichVu[dichvudaNhap][6] danhMucDichVu[dichvudaNhap][7]) danhMucDichVu[dichvudaNhap][5] danhMucDichVu[dichvudaNhap][4]
                }
               
            ; WinWaitActiveWindow(tenbenhvien)
            ; Send "{F7}"
            ; WinWaitActiveWindow("Chỉ định dịch vụ")

            ; for k, toothNumber in danhsachrang 
            ;     {
            ;         ghichu := "Răng " toothNumber
            ;         nhapchidinh(danhMucDichVu[dichvudaNhap][2], BaoHiem%A_Index%.Text, FormatTime(giochidinhdichvu, "HH:mm"), ghichu)
            ;     }
            
            ; nhanketthuc()
            ; mabenhnhan := laymabenhnhan()
            ; Sleep 600
            ; gioChiDinhDichVu := DateAdd(gioChiDinhDichVu, 1, "Minutes")
            ; Sleep 400
            ; mof6()
            ; for k, toothNumber in danhsachrang {
            ;     Nhaptuongtrinh(danhMucDichVu[dichvudaNhap][1], danhMucDichVu[dichvudaNhap][3], Random(danhMucDichVu[dichvudaNhap][6], danhMucDichVu[dichvudaNhap][7]), danhMucDichVu[dichvudaNhap][5], danhMucDichVu[dichvudaNhap][4], toothNumber)
            ; } 
            ; nhanketthuc()    
                
                
                
                
    }
            
            
    MyGui.Show()
}

layChiDinhDichVu(stt){
    ;"Cạo vôi răng", Chỉnh nha","Tẩy trắng răng,
    ; global Toothlist1, Toothlist2, Toothlist3, Toothlist4, Toothlist5, Toothlist6, Toothlist7
    if Dichvu%stt%.Text = "Bôi SDF"
        return "Bôi SDF"
    if Dichvu%stt%.Text = "Cạo vôi răng"
        if  CaoVoi%stt%.Value
            return danhmuccaovoirang[CaoVoi%stt%.Value]
    if Dichvu%stt%.Text = "Cắt thắng lưỡi"
        if CatThangLuoi%stt%.Value
            return danhMucCatThangLuoi[CatThangLuoi%stt%.Value]
    
    if Dichvu%stt%.Text = "Chỉnh nha"
        return
    
    if Dichvu%stt%.Text = "Ghép huyết tương"
        return "Ghép huyết tương"
    if Dichvu%stt%.Text = "Ghép xương"
        return "Ghép xương"
    if Dichvu%stt%.Text = "Implant"
        if Implant%stt%.Value
            return danhMucImplant[Implant%stt%.Value]
    if Dichvu%stt%.Text = "Implant abutment"
        if Implant%stt%.Value and Abutment%stt%.Value
            return danhMucAbutment[Implant%stt%.Value][Abutment%stt%.Value]
    if Dichvu%stt%.Text = "Nhổ răng phẫu thuật"
        if NhoRangPhauThuat%stt%.Value
            return danhMucNhoRangPhauThuat[NhoRangPhauThuat%stt%.Value]
    if Dichvu%stt%.Text = "Nhổ răng thủ thuật"
        if NhoRangThuThuat%stt%.Value
            return danhMucNhoRangThuThuat[NhoRangThuThuat%stt%.Value]
    
    if Dichvu%stt%.Text = "Nội nha"
        {
            danhsachrang := laydanhsachrang(Toothlist%stt%.Text)
            if (danhsachrang.Length > 1)
                {
                    MsgBox "Nội nha chỉ nhập 1 răng"
                    MyGui.Show()
                    return
                }
                ; nếu là răng sữa
                if InStr("54 55 64 65 74 75 84 85", danhsachrang[1])
                    return "Điều trị tủy răng sữa nhiều chân"
                if InStr("51 52 53 61 62 63 71 72 73 81 82 83", danhsachrang[1])
                    return "Điều trị tủy răng sữa một chân"
                ; nếu là răng vĩnh viễn
            firstLetter := SubStr(danhsachrang[1], 1, 1)
            lastLetter := SubStr(danhsachrang[1], 2, 1)

            ; neu dieu tri lan dau
            if NoiNha%stt%.Value = 1
                {
                    if InStr("1 2 3 4 5", lastLetter)
                        return "Điều trị tủy răng số " lastLetter
                    if InStr("6 7", lastLetter)
                        {
                            if InStr("1 2", firstLetter)
                                return "Điều trị tủy răng số " lastLetter " hàm trên"
                            else
                                return "Điều trị tủy răng số " lastLetter " hàm dưới"
                        }

                }
            if NoiNha%stt%.Value = 2 ; noi nha lai
                return "Điều trị tủy lại răng số " lastLetter
            if NoiNha%stt%.Value = 3 ; noi nha lan dau gay me
                {
                    if InStr("1 2 3 4 5", lastLetter)
                        out := "Điều trị tủy răng số " lastLetter " gây mê"
                    if InStr("6 7", lastLetter)
                        {
                            if InStr("1 2", firstLetter)
                                return "Điều trị tủy răng số " lastLetter " hàm trên gây mê"
                            else
                                return "Điều trị tủy răng số " lastLetter " hàm dưới gây mê"
                        }
                        
                }
            if NoiNha%stt%.Value = 4 ; noi nha lai gay me
                return "Điều trị tủy lại răng số " lastLetter " gây mê"           
        }

    
    if Dichvu%stt%.Text = "Răng sứ"
        if RangSu%stt%.Value
            return danhMucRangSu[RangSu%stt%.Value]
    if Dichvu%stt%.Text = "Răng tháo lắp"
        if RangThaoLap%stt%.Value
            return danhMucRangThaoLap[RangThaoLap%stt%.Value]
    if Dichvu%stt%.Text = "Tháo cầu"
        return "Tháo cầu răng"
    if Dichvu%stt%.Text = "Tháo mão (chụp)"
        return "Tháo mão (chụp)"
    if Dichvu%stt%.Text = "Trám răng"
        if TramRang%stt%.Value
            return danhMucTramRang[TramRang%stt%.Value] 
    
    return
}




; Loop, 7 {
;    FormatTime, giochidinh, %giochidinhdichvu%, HH:mm
;    EnvAdd, giochidinhdichvu, 1 ,Minits ; moi chi dinh cach nhau 1 phút

;     if (!Dichvu%A_Index%)
;         Continue
;     #Include, %A_ScriptDir%\dichvu\boisdf.ahk
;     #Include, %A_ScriptDir%\dichvu\caovoirang.ahk
;     #Include, %A_ScriptDir%\dichvu\chinhnha.ahk
;     #Include, %A_ScriptDir%\dichvu\ghephuyettuong.ahk
;     #Include, %A_ScriptDir%\dichvu\ghepxuong.ahk
;     #Include, %A_ScriptDir%\dichvu\implant.ahk
;     #Include, %A_ScriptDir%\dichvu\nhorangphauthuat.ahk
;     #Include, %A_ScriptDir%\dichvu\nhorangthuthuat.ahk
;     #Include, %A_ScriptDir%\dichvu\noinha.ahk
;     #Include, %A_ScriptDir%\dichvu\rangsu.ahk
;     #Include, %A_ScriptDir%\dichvu\rangthaolap.ahk
;     #Include, %A_ScriptDir%\dichvu\taytrangrang.ahk
;     #Include, %A_ScriptDir%\dichvu\thaocaumao.ahk
;     #Include, %A_ScriptDir%\dichvu\tramrang.ahk
;     #Include, %A_ScriptDir%\dichvu\xquang.ahk
;     #Include, %A_ScriptDir%\dichvu\catthangluoi.ahk
; }

; khamxongchove()
; Sleep 1000
; Gui, Show
; Return

