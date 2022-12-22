If (Dichvu%A_Index% = "Bôi SDF"){
        danhsachrang%A_Index% := laydanhsachrang(toothlist%A_Index%)
        if (!danhsachrang%A_Index%.Length()){
            MsgBox Bạn nhập sai tên răng
            Continue
        }

        ; FormatTime, giochidinh%A_index%, %time%, HH:mm
            ICD%A_Index% := "K02"
            thoigianthuthuat%A_Index% := "1"
            vocam%A_Index% := "00"
            noidungtuongtrinh%A_Index% = boisdf
            machidinh%A_Index% := "PHO010"
            mathuthuat%A_Index% := "T05147"


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