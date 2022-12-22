If (Dichvu%A_Index% = "Ghép huyết tương"){
    danhsachrang%A_Index% := laydanhsachrang(toothlist%A_Index%)
    if (!danhsachrang%A_Index%.Length()){
        MsgBox Bạn nhập sai tên răng
        Continue
    }

    ; FormatTime, giochidinh%A_index%, %time%, HH:mm
    ICD%A_Index% := "K01"
    thoigianthuthuat%A_Index% := "1"
    vocam%A_Index% := "03"
    noidungtuongtrinh%A_Index% = ghephuyettuong ; nội dung tường trình
    Machidinh%A_Index% := "HT01"
    mathuthuat%A_Index% := "T05421"

    index := A_index ; luu index
    mof7()
    for k, toothNumber in danhsachrang%Index%
    {
        ghichu = Răng %toothNumber%
        nhapchidinh(Machidinh%Index%, phantrambaohiem%Index%, giochidinh, ghichu)
    }
    nhanketthuc()
    mabenhnhan := laymabenhnhan()
    EnvAdd, time, 1 ,Minits
    mof6()
    for k, toothNumber in danhsachrang%Index%
    {
        Nhaptuongtrinh(ICD%Index%, Mathuthuat%Index%, thoigianthuthuat%Index%, Vocam%Index%, noidungtuongtrinh%Index%, toothNumber)
    }      
    nhanketthuc()
}
    
