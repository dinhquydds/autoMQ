Button_OK_Click(ctrl, *)
{
    Global IDbacsy, IDphuta, IDvongtrong, IDvongngoai, StartHour, StartMinute, giotuongtrinh, phuttuongtrinh
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
    loop 7
        {

            MsgBox layChiDinhDichVu(A_Index)
        }


    MyGui.Show()
}

layChiDinhDichVu(stt){
    ;"Cạo vôi răng",,,,,,,,,"Chỉnh nha","Tẩy trắng răng",,,,,"Tháo mão (chụp)",
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
        return
    
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

danhmuccaovoirang := ["Cạo vôi răng ít", "Cạo vôi răng trung bình", "Cạo vôi răng nhiều"]
danhMucCatThangLuoi := ["Cắt thắng lưỡi 300K", "Cắt thắng lưỡi 500K", "Cắt thắng lưỡi 2.5M", "Cắt thắng lưỡi 3M"]
danhMucImplant := ["Implant Dio", "Implant Helix", "Implant Strauman", "Implant ETK"]
danhMucAbutment := [["Abutment Dio", "Abutment Dio Zirconia"], ["Abutment Helix", "Abutment Helix Zirconia"], ["Abutment Strauman", "Abutment Strauman Zirconia"], ["Abutment ETK",""]]
danhMucNhoRangPhauThuat := ["Nhổ răng khôn hàm trên 500K", "Nhổ răng khôn hàm trên 1M", "Nhổ răng khôn hàm trên 1.5M", "Nhổ răng khôn hàm trên 2M", "Nhổ răng khôn hàm trên 2.5M", "Nhổ răng khôn hàm trên 3M", "Nhổ răng khôn hàm trên 3.5M", "Nhổ răng khôn hàm dưới 500K", "Nhổ răng khôn hàm dưới 1M", "Nhổ răng khôn hàm dưới 1.5M", "Nhổ răng khôn hàm dưới 2M", "Nhổ răng khôn hàm dưới 2.5M", "Nhổ răng khôn hàm dưới 3M", "Nhổ răng khôn hàm dưới 3.5M", "Nhổ răng ngầm", "Nhổ răng vĩnh viễn", "Nhổ răng thì 1", "Nhổ răng thì 2", "Nhổ răng thừa"]
danhMucNhoRangThuThuat := ["Nhổ răng sữa", "Nhổ răng lung lay", "Nhổ chân răng"]
danhMucRangSu := ["Sứ kim loại", "Sứ Titanium", "Sứ Zirconia", "Sứ Ceramil Zolid", "Sứ Emax", "Sứ Lava 3M", "Veneer Ivoclar 6 triệu", "Veneer Lisi Press 8 triệu", "Inlay/Onlay", "Răng sứ Zirconia trên Implant", "Răng sứ Ceramill Zolid trên Implant", "Răng sứ Lava 3M trên Implant"]
danhMucRangThaoLap := ["Răng tháo lắp Nhật", "Răng tháo lắp Mỹ", "Răng tháo lắp composite","Nền nhựa dẻo bán phần", "Nền nhựa dẻo toàn phần", "Lưới nền hàm"]
danhMucTramRang := ["Trám răng xoang 1", "Trám răng xoang 2", "Trám răng xoang 1+2", "Trám răng xoang 3", "Trám răng xoang 4", "Trám răng xoang 5", "Trám răng sữa 150K", "Trám răng sữa 250K", "Che tủy Calci", "Che tủy MTA", "Trám răng xoang 1 gây mê", "Trám răng xoang 2 gây mê","Trám răng xoang 1+2 gây mê", "Trám răng xoang 3 gây mê", "Trám răng xoang 4 gây mê", "Trám răng sữa gây mê", "Trám răng xoang 1 laser", "Trám răng xoang 2 laser", "Trám răng xoang 1+2 laser", "Trám răng xoang 3 laser", "Trám răng xoang 4 laser", "Trám răng xoang 5 laser", "Trám tái tạo có chốt 400K", "Trám tái tạo không chốt 200K", "Trám tái tạo không chốt 400K"]



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

