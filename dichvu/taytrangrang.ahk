    If (Dichvu%A_Index% = "Tẩy trắng răng"){
        ICD%A_Index% := "K03.8"
        Vocam%A_Index% := "00"
        noidungtuongtrinh%A_Index% = taytrangrang
        ghichu%A_Index% := ""
        ; FormatTime, giochidinh%A_index%, %time%, HH:mm
        Machidinh%A_Index% := "16.79"
        Mathuthuat%A_Index% := "T05129"
        thoigianthuthuat%A_Index% := "35"

        mof7()
        nhapchidinh(Machidinh%A_Index%, phantrambaohiem%A_Index%, giochidinh, ghichu%A_Index%)
        nhanketthuc()
        mabenhnhan := laymabenhnhan()
        Sleep 1000
        EnvAdd, time, 1 ,Minits
        mof6()
        Nhaptuongtrinh(ICD%A_Index%, Mathuthuat%A_Index%, thoigianthuthuat%A_Index%, Vocam%A_Index%, noidungtuongtrinh%A_Index%, ghichu%A_Index%)
        nhanketthuc()
     }