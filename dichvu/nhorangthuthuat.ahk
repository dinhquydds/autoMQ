    If (Dichvu%A_Index% = "Nhổ răng thủ thuật"){
        danhsachrang%A_Index% := laydanhsachrang(toothlist%A_Index%)
        if (!danhsachrang%A_Index%.Length()){
            MsgBox Bạn nhập sai tên răng
            Continue
        }
        ; FormatTime, giochidinh%A_index%, %time%, HH:mm

        if (loainhorangthuthuat%A_Index% = "Nhổ răng lung lay"){

            ICD%A_Index% := "K04"
            machidinh%A_Index% := "16.204"
            mathuthuat%A_Index% := "T05017"
            ghichu%A_Index% = Răng %toothNumber%
            Random, randomtime, 1, 3 
            thoigianthuthuat%A_Index% := randomtime
            vocam%A_Index% := "03"
            noidungtuongtrinh%A_Index% = nhoranglunglay
	}

        if (loainhorangthuthuat%A_Index% = "Nhổ chân răng"){

            ICD%A_Index% := "K02"
            machidinh%A_Index% := "16.205.2"
            mathuthuat%A_Index% := "T05157"
            ghichu%A_Index% = Răng %toothNumber%
            Random, randomtime, 1, 3 
            thoigianthuthuat%A_Index% := randomtime
            vocam%A_Index% := "03"
            noidungtuongtrinh%A_Index% = nhochanrang
	}

        if (loainhorangthuthuat%A_Index% = "Nhổ răng sữa"){
            ICD%A_Index% := "K00.7"
            machidinh%A_Index% := "16.238"
            mathuthuat%A_Index% := "T05009"
            ghichu%A_Index% = Răng %toothNumber%
            Random, randomtime, 1, 3
            thoigianthuthuat%A_Index% := randomtime
            vocam%A_Index% := "03"
            noidungtuongtrinh%A_Index% = nhorangsua
        }
        index := A_index
        
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