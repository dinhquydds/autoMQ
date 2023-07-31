Button_OK_Click(ctrl, *)
{
    Global IDbacsy, IDphuta, IDvongtrong, IDvongngoai, StartHour, StartMinute, giotuongtrinh, phuttuongtrinh, gioNhapTuongTrinh, mabenhnhan
    ; kiem tra thong tin nhap du ten chua, nhap trung nguoi nghi khong
    if not laythongtinnhansu(User.Text, bacsi.Text, phuta.Text, vongngoai.Text, vongtrong.Text)
        {
            MyGui.Show()
            return
        }
    MyGui.Submit()
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

