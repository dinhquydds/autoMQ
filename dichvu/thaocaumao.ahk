If (Dichvu%A_Index% = "Tháo cầu"){
        danhsachrang%A_Index% := laydanhsachrang(toothlist%A_Index%)
        if (!danhsachrang%A_Index%.Length()){
            MsgBox Bạn nhập sai tên răng
            Continue
        }

        ; FormatTime, giochidinh%A_index%, %time%, HH:mm
            ICD%A_Index% := "K02.1"
            thoigianthuthuat%A_Index% := "1"
            vocam%A_Index% := "03"
            noidungtuongtrinh%A_Index% = thaocau
            machidinh%A_Index% := "16.137"
            mathuthuat%A_Index% := "T05249"


        index := A_index ; luu index
        mof7()
        for k, toothNumber in danhsachrang%Index% {
            ghichu = Răng %toothNumber%
            nhapchidinh(Machidinh%Index%, phantrambaohiem%Index%, giochidinh, ghichu)
        }
        nhanketthuc()
        mabenhnhan := laymabenhnhan()
        Sleep 600
        EnvAdd, time, 1 ,Minits
        Sleep 600
        mof6()
        for k, toothNumber in danhsachrang%Index% {
            Nhaptuongtrinh(ICD%Index%, Mathuthuat%Index%, thoigianthuthuat%Index%, Vocam%Index%, noidungtuongtrinh%Index%, toothNumber)
        }      
        nhanketthuc()
     }

If (Dichvu%A_Index% = "Tháo mão (chụp)"){
        danhsachrang%A_Index% := laydanhsachrang(toothlist%A_Index%)
        if (!danhsachrang%A_Index%.Length()){
            MsgBox Bạn nhập sai tên răng
            Continue
        }

        ; FormatTime, giochidinh%A_index%, %time%, HH:mm
            ICD%A_Index% := "K02"
            thoigianthuthuat%A_Index% := "2"
            vocam%A_Index% := "03"
            noidungtuongtrinh%A_Index% = thaomao
            machidinh%A_Index% := "16.138"
            mathuthuat%A_Index% := "T05249"


        index := A_index ; luu index
        mof7()
        for k, toothNumber in danhsachrang%Index% {
            ghichu = Răng %toothNumber%
            nhapchidinh(Machidinh%Index%, phantrambaohiem%Index%, giochidinh, ghichu)
        }
        nhanketthuc()
        mabenhnhan := laymabenhnhan()
        Sleep 600
        EnvAdd, time, 1 ,Minits
        Sleep 600
        mof6()
        for k, toothNumber in danhsachrang%Index% {
            Nhaptuongtrinh(ICD%Index%, Mathuthuat%Index%, thoigianthuthuat%Index%, Vocam%Index%, noidungtuongtrinh%Index%, toothNumber)
        }      
        nhanketthuc()
     }
