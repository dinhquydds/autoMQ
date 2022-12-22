
    If (Dichvu%A_Index% = "Răng tháo lắp"){
        ; FormatTime, giochidinh%A_index%, %time%, HH:mm
	index := A_index ; luu index
        ICD%A_Index% := "K08.1"
        thoigianthuthuat%A_Index% := "1"
        vocam%A_Index% := "00"

        if (loairangthaolap%A_Index% = "Nền nhựa dẻo bán phần"){
            machidinh%A_Index% := "16.131"
            mathuthuat%A_Index% := "T05449"
            noidungtuongtrinh%A_Index% = nhuadeobanphan
        mof7()

            ;ghichu = Răng %toothNumber%
            nhapchidinh(Machidinh%Index%, phantrambaohiem%Index%, giochidinh, ghichu)

        nhanketthuc()
        Sleep 600
        EnvAdd, time, 1 ,Minits
        Sleep 600
        mof6()
        ;for k, toothNumber in danhsachrang%Index% {
            Nhaptuongtrinh(ICD%Index%, Mathuthuat%Index%, thoigianthuthuat%Index%, Vocam%Index%, noidungtuongtrinh%Index%, toothNumber)
        ;}      
        nhanketthuc()
        }
        else if (loairangthaolap%A_Index% = "Nền nhựa dẻo toàn phần"){
            machidinh%A_Index% := "16.132"
            mathuthuat%A_Index% := "T05461"
            noidungtuongtrinh%A_Index% = nhuadeotoanphan
        mof7()

            ;ghichu = Răng %toothNumber%
            nhapchidinh(Machidinh%Index%, phantrambaohiem%Index%, giochidinh, ghichu)

        nhanketthuc()
        Sleep 600
        EnvAdd, time, 1 ,Minits
        Sleep 600
        mof6()
        ;for k, toothNumber in danhsachrang%Index% {
            Nhaptuongtrinh(ICD%Index%, Mathuthuat%Index%, thoigianthuthuat%Index%, Vocam%Index%, noidungtuongtrinh%Index%, toothNumber)
        ;}      
        nhanketthuc()
        }
        else if (loairangthaolap%A_Index% = "Lưới nền hàm"){
            machidinh%A_Index% := "LUO001"
            mathuthuat%A_Index% := "T05463"
            noidungtuongtrinh%A_Index% = luoinenham
        mof7()

            ;ghichu = Răng %toothNumber%
            nhapchidinh(Machidinh%Index%, phantrambaohiem%Index%, giochidinh, ghichu)

        nhanketthuc()
        Sleep 600
        EnvAdd, time, 1 ,Minits
        Sleep 600
        mof6()
        ;for k, toothNumber in danhsachrang%Index% {
            Nhaptuongtrinh(ICD%Index%, Mathuthuat%Index%, thoigianthuthuat%Index%, Vocam%Index%, noidungtuongtrinh%Index%, toothNumber)
        ;}      
        nhanketthuc()
	}


        danhsachrang%A_Index% := laydanhsachrang(toothlist%A_Index%)
        if (!danhsachrang%A_Index%.Length()){
            ;MsgBox Bạn nhập sai tên răng tháo lắp
            Continue
        }
        ; FormatTime, giochidinh%A_index%, %time%, HH:mm

        ICD%A_Index% := "K08.1"
        thoigianthuthuat%A_Index% := "2"
        vocam%A_Index% := "00"
        noidungtuongtrinh%A_Index% = rangthaolap

        if (loairangthaolap%A_Index% = "1. Răng Nhật"){
            machidinh%A_Index% := "16.140.1"
            mathuthuat%A_Index% := "T05417"
        }
        if (loairangthaolap%A_Index% = "2. Răng Mỹ"){
            machidinh%A_Index% := "16.140"
            mathuthuat%A_Index% := "T05417"
        }
        if (loairangthaolap%A_Index% = "3. Răng composite"){
            machidinh%A_Index% := "16.140.2"
            mathuthuat%A_Index% := "T05417"
        }

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
