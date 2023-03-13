    If (Dichvu%A_Index% = "Implant"){
        danhsachrang%A_Index% := laydanhsachrang(toothlist%A_Index%)
        if (!danhsachrang%A_Index%.Length()){
            MsgBox Bạn nhập sai tên răng implant
            Continue
        }
        ; FormatTime, giochidinh%A_index%, %time%, HH:mm

        ICD%A_Index% := "K08.1"
        Vocam%A_Index% := "03"
        thoigianthuthuatImplant%A_Index% := 5
        thoigianthuthuatAbutment%A_Index% := 1
        noidungtuongtrinhImplant%A_Index% = implant
        noidungtuongtrinhAbutment%A_Index% = abutment

        ; implant
        If (loaiimplant%A_Index% = "1. Dio"){
            Machidinhimplant%A_Index% := "16.6.8"
            mathuthuatimplant%A_Index% := "P06011"
            Machidinhabutment%A_Index% := "ABU001"
            mathuthuatabutment%A_Index% := "T05135"
        
            if (loaiabutment%A_Index% = "2. Abutment sứ Zirconia") { ; abutment Sứ
                Machidinhabutment%A_Index% := "ABU004"
                mathuthuatabutment%A_Index% := "T05141"
            }
        }
        If (loaiimplant%A_Index% = "2. Helix"){
            Machidinhimplant%A_Index% := "16.6.6"
            mathuthuatimplant%A_Index% := "P06015"
            Machidinhabutment%A_Index% := "ABU002"
            mathuthuatabutment%A_Index% := "T05137"
        
            if (loaiabutment%A_Index% = "2. Abutment sứ Zirconia") { ; abutment Sứ
                Machidinhabutment%A_Index% := "ABU005"
                mathuthuatabutment%A_Index% := "T05143"
            }
        }
        If (loaiimplant%A_Index% = "3. Strauman"){
            Machidinhimplant%A_Index% := "16.6.4"
            mathuthuatimplant%A_Index% := "P06019"
            Machidinhabutment%A_Index% := "ABU003"
            mathuthuatabutment%A_Index% := "T05139"
        
            if (loaiabutment%A_Index% = "2. Abutment sứ Zirconia") { ; abutment Sứ
                Machidinhabutment%A_Index% := "ABU006"
                mathuthuatabutment%A_Index% := "T05145"
            }
        }
; implant
        index := A_index ; luu index

        mof7()
        for k, toothNumber in danhsachrang%Index%
        {
        ghichu = Răng %toothNumber%
        nhapchidinh(Machidinhimplant%Index%, phantrambaohiem%Index%, giochidinh, ghichu)
        }

        nhanketthuc()

        mabenhnhan := laymabenhnhan()
        EnvAdd, time, 1 ,Minits
        mof6()
        for k, toothNumber in danhsachrang%Index%
        {
            Nhaptuongtrinh(ICD%Index%, mathuthuatimplant%Index%, thoigianthuthuatImplant%Index%, Vocam%Index%, noidungtuongtrinhImplant%Index%, toothNumber)
        }      
        nhanketthuc()

     }


; abutment
    If (Dichvu%A_Index% = "Implant abutment"){
        danhsachrang%A_Index% := laydanhsachrang(toothlist%A_Index%)
        if (!danhsachrang%A_Index%.Length()){
            MsgBox Bạn nhập sai tên răng implant
            Continue
        }
        ; FormatTime, giochidinh%A_index%, %time%, HH:mm

        ICD%A_Index% := "K08.1"
        Vocam%A_Index% := "03"
        thoigianthuthuatImplant%A_Index% := 5
        thoigianthuthuatAbutment%A_Index% := 1
        noidungtuongtrinhImplant%A_Index% = implant
        noidungtuongtrinhAbutment%A_Index% = abutment

        ; implant
        If (loaiimplant%A_Index% = "1. Dio"){
            Machidinhimplant%A_Index% := "16.6.8"
            mathuthuatimplant%A_Index% := "P06011"
            Machidinhabutment%A_Index% := "ABU001"
            mathuthuatabutment%A_Index% := "T05135"
        
            if (loaiabutment%A_Index% = "2. Abutment sứ Zirconia") { ; abutment Sứ
                Machidinhabutment%A_Index% := "ABU004"
                mathuthuatabutment%A_Index% := "T05141"
            }
        }
        If (loaiimplant%A_Index% = "2. Helix"){
            Machidinhimplant%A_Index% := "16.6.6"
            mathuthuatimplant%A_Index% := "P06015"
            Machidinhabutment%A_Index% := "ABU002"
            mathuthuatabutment%A_Index% := "T05137"
        
            if (loaiabutment%A_Index% = "2. Abutment sứ Zirconia") { ; abutment Sứ
                Machidinhabutment%A_Index% := "ABU005"
                mathuthuatabutment%A_Index% := "T05143"
            }
        }
        If (loaiimplant%A_Index% = "3. Strauman"){
            Machidinhimplant%A_Index% := "16.6.4"
            mathuthuatimplant%A_Index% := "P06019"
            Machidinhabutment%A_Index% := "ABU003"
            mathuthuatabutment%A_Index% := "T05139"
        
            if (loaiabutment%A_Index% = "2. Abutment sứ Zirconia") { ; abutment Sứ
                Machidinhabutment%A_Index% := "ABU006"
                mathuthuatabutment%A_Index% := "T05145"
            }
        }
; implant
        index := A_index ; luu index

        mof7()
	for k, toothNumber in danhsachrang%Index%
        {
        ghichu = Răng %toothNumber%
        nhapchidinh(Machidinhabutment%Index%, phantrambaohiem%Index%, giochidinh, ghichu)
        }
        nhanketthuc()
        mabenhnhan := laymabenhnhan()
        EnvAdd, time, 1 ,Minits
        mof6()
        for k, toothNumber in danhsachrang%Index%
        {
            Nhaptuongtrinh(ICD%Index%, mathuthuatabutment%Index%, thoigianthuthuatabutment%Index%, Vocam%Index%, noidungtuongtrinhabutment%Index%, toothNumber)
        }      
        nhanketthuc()

     }