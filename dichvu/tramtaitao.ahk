    If (Dichvu%A_Index% = "Trám tái tạo"){
        MsgBox %A_Index%
        danhsachrang%A_Index% := laydanhsachrang(toothlist%A_Index%)
        if (!danhsachrang%A_Index%.Length()){
            MsgBox Bạn nhập sai tên răng
            Continue
        }

        ; FormatTime, giochidinh%A_index%, %time%, HH:mm
        ICD%A_Index% := "K02.4"
        thoigianthuthuat%A_Index% := "5"
        vocam%A_Index% := "03"

        if (chotsoi%A_Index% = "Có chốt sợi"){
            noidungtuongtrinh%A_Index% = tramtaitaocochotsoi ; nội dung tường trình
            Machidinh%A_Index% := "16.77.2"
            mathuthuat%A_Index% := "T05125"
        }
        if (chotsoi%A_Index% = "Không chốt sợi"){
            noidungtuongtrinh%A_Index% = tramtaitaokhongchotsoi ; nội dung tường trình
            Machidinh%A_Index% := "16.77.1"
            mathuthuat%A_Index% := "T05127"

        }


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

 