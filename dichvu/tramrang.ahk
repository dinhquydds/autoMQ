If (Dichvu%A_Index% = "Trám răng"){
        danhsachrang%A_Index% := laydanhsachrang(toothlist%A_Index%)
        if (!danhsachrang%A_Index%.Length()){
            MsgBox Bạn nhập sai tên răng
            Continue
        }

        ICD%A_Index% := "K02"
        Vocam%A_Index% := "00"
        ; FormatTime, giochidinh%A_index%, %time%, HH:mm
        ;Trám thường
        If (loaixoangtram%A_Index% = "Xoang 1"){
        Machidinh%A_Index% := "16.68.5"
        Mathuthuat%A_Index% := "T05113"
        Random, randomtime, 5, 10
        thoigianthuthuat%A_Index% := randomtime
        noidungtuongtrinh%A_Index% = tramrangxoang1
        }
        If (loaixoangtram%A_Index% = "Xoang 2"){
        Machidinh%A_Index% := "16.68.4"
        Mathuthuat%A_Index% := "T05115"
        Random, randomtime, 7, 10
        thoigianthuthuat%A_Index% := randomtime
        noidungtuongtrinh%A_Index% = tramrangxoang2
        }
        If (loaixoangtram%A_Index% = "Xoang 1+2"){
        Machidinh%A_Index% := "16.68.3"
        Mathuthuat%A_Index% := "T05117"
        Random, randomtime, 8, 10
        thoigianthuthuat%A_Index% := randomtime
        noidungtuongtrinh%A_Index% = tramrangxoang12
        }
        If (loaixoangtram%A_Index% = "Xoang 3"){
        Machidinh%A_Index% := "16.68.2"
        Mathuthuat%A_Index% := "T05119"
        Random, randomtime, 8, 10
        thoigianthuthuat%A_Index% := randomtime
        noidungtuongtrinh%A_Index% = tramrangxoang3
        }
        If (loaixoangtram%A_Index% = "Xoang 4"){
        Machidinh%A_Index% := "16.68.1"
        Mathuthuat%A_Index% := "T05121"
        Random, randomtime, 8, 10
        thoigianthuthuat%A_Index% := randomtime
        noidungtuongtrinh%A_Index% = tramrangxoang4
        }
        If (loaixoangtram%A_Index% = "Xoang 5"){
        Machidinh%A_Index% := "16.72"
        Mathuthuat%A_Index% := "T05241"
        Random, randomtime, 8, 10
        thoigianthuthuat%A_Index% := randomtime
        noidungtuongtrinh%A_Index% = tramrangxoang5
        ICD%A_Index% := "K03.2"
        }
        If (loaixoangtram%A_Index% = "Trám răng sữa 250K"){
        Machidinh%A_Index% := "16.70"
        Mathuthuat%A_Index% := "T05123"
        Random, randomtime, 3, 5
        thoigianthuthuat%A_Index% := randomtime
        noidungtuongtrinh%A_Index% = tramrangsua
        ICD%A_Index% := "K02"
        }
        If (loaixoangtram%A_Index% = "Trám răng sữa 150K"){
        Machidinh%A_Index% := "16.236"
        Mathuthuat%A_Index% := "T05131"
        Random, randomtime, 3, 5
        thoigianthuthuat%A_Index% := randomtime
        noidungtuongtrinh%A_Index% = tramrangsua
        ICD%A_Index% := "K02"
        }

        If (loaixoangtram%A_Index% = "Che tủy Calci"){
        Machidinh%A_Index% := "16.57"
        Mathuthuat%A_Index% := "T05083"
        Random, randomtime, 8, 12
        thoigianthuthuat%A_Index% := randomtime
        noidungtuongtrinh%A_Index% = chetuycalci
        ICD%A_Index% := "K02"
        }

        If (loaixoangtram%A_Index% = "Che tủy MTA"){
        Machidinh%A_Index% := "16.56"
        Mathuthuat%A_Index% := "T05081"
        Random, randomtime, 8, 12
        thoigianthuthuat%A_Index% := randomtime
        noidungtuongtrinh%A_Index% = chetuymta
        ICD%A_Index% := "K02"
        }
        ; trám gây mê
        ;Trám thường
        If (loaixoangtram%A_Index% = "Xoang 1 (gây mê)"){
        Machidinh%A_Index% := "RHM1"
        Mathuthuat%A_Index% := "T05113"
        Random, randomtime, 3, 7
        thoigianthuthuat%A_Index% := randomtime
        noidungtuongtrinh%A_Index% = tramrangxoang1
        }
        If (loaixoangtram%A_Index% = "Xoang 2 (gây mê)"){
        Machidinh%A_Index% := "RHM2"
        Mathuthuat%A_Index% := "T05115"
        Random, randomtime, 8, 12
        thoigianthuthuat%A_Index% := randomtime
        noidungtuongtrinh%A_Index% = tramrangxoang2
        }
        If (loaixoangtram%A_Index% = "Xoang 1+2 (gây mê)"){
        Machidinh%A_Index% := "RHM3"
        Mathuthuat%A_Index% := "T05117"
        Random, randomtime, 3, 7
        thoigianthuthuat%A_Index% := randomtime
        noidungtuongtrinh%A_Index% = tramrangxoang12
        }
        If (loaixoangtram%A_Index% = "Xoang 3 (gây mê)"){
        Machidinh%A_Index% := "RHM4"
        Mathuthuat%A_Index% := "T05119"
        Random, randomtime, 3, 7
        thoigianthuthuat%A_Index% := randomtime
        noidungtuongtrinh%A_Index% = tramrangxoang3
        }
        If (loaixoangtram%A_Index% = "Xoang 4 (gây mê)"){
        Machidinh%A_Index% := "RHM5"
        Mathuthuat%A_Index% := "T05121"
        Random, randomtime, 3, 7
        thoigianthuthuat%A_Index% := randomtime
        noidungtuongtrinh%A_Index% = tramrangxoang4
        }
        If (loaixoangtram%A_Index% = "Xoang 5 (gây mê)"){
            MsgBox Vui lòng nhập thủ công`nChưa có dịch vụ này
        Continue
        ; Machidinh%A_Index% := "16.72"
        ; Mathuthuat%A_Index% := "T05241"
        ; thoigianthuthuat%A_Index% := "10"
        ; noidungtuongtrinh%A_Index% = tramrangxoang5
        ; ICD%A_Index% := "K03.2"
        }

;tram láe

        If (loaixoangtram%A_Index% = "Xoang 1 (laser)"){
        Machidinh%A_Index% := "16.65.7"
        Mathuthuat%A_Index% := "T05103"
        Random, randomtime, 7, 10
        thoigianthuthuat%A_Index% := randomtime
        noidungtuongtrinh%A_Index% = tramrangxoang1laser
        }
        If (loaixoangtram%A_Index% = "Xoang 2 (laser)"){
        Machidinh%A_Index% := "16.65.6"
        Mathuthuat%A_Index% := "T05105"
        Random, randomtime, 7, 10
        thoigianthuthuat%A_Index% := randomtime
        noidungtuongtrinh%A_Index% = tramrangxoang2laser
        }
        If (loaixoangtram%A_Index% = "Xoang 1+2 (laser)"){
        Machidinh%A_Index% := "16.65.3"
        Mathuthuat%A_Index% := "T05107"
        Random, randomtime, 7, 10
        thoigianthuthuat%A_Index% := randomtime
        noidungtuongtrinh%A_Index% = tramrangxoang12laser
        }
        If (loaixoangtram%A_Index% = "Xoang 3 (laser)"){
        Machidinh%A_Index% := "16.65.2"
        Mathuthuat%A_Index% := "T05109"
        Random, randomtime, 7, 10
        thoigianthuthuat%A_Index% := randomtime
        noidungtuongtrinh%A_Index% = tramrangxoang3laser
        }
        If (loaixoangtram%A_Index% = "Xoang 4 (laser)"){
        Machidinh%A_Index% := "16.65.1"
        Mathuthuat%A_Index% := "T05111"
        Random, randomtime, 7, 10
        thoigianthuthuat%A_Index% := randomtime
        noidungtuongtrinh%A_Index% = tramrangxoang4laser
        }
        If (loaixoangtram%A_Index% = "Xoang 5 (laser)"){
        Machidinh%A_Index% := "16.75"
        Mathuthuat%A_Index% := "T05243"
        Random, randomtime, 7, 10
        thoigianthuthuat%A_Index% := randomtime
        noidungtuongtrinh%A_Index% = tramrangxoang5laser
        ICD%A_Index% := "K03.2"
        }

        If (loaixoangtram%A_Index% = "Trám răng sữa (gây mê)"){
        Machidinh%A_Index% := "16.236.3"
        Mathuthuat%A_Index% := "T05131"
        Random, randomtime, 7, 10
        thoigianthuthuat%A_Index% := randomtime
        noidungtuongtrinh%A_Index% = tramrangsua
        ICD%A_Index% := "K02"
        }

        If (loaixoangtram%A_Index% = "Trám tái tạo có chốt sợi"){
        Machidinh%A_Index% := "16.77.2"
        Mathuthuat%A_Index% := "T05125"
        Random, randomtime, 8, 10
        thoigianthuthuat%A_Index% := randomtime
        noidungtuongtrinh%A_Index% = tramtaitaocochotsoi
        ICD%A_Index% := "K02"
        }

        If (loaixoangtram%A_Index% = "Trám tái tạo không chốt sợi"){
        Machidinh%A_Index% := "16.77.1"
        Mathuthuat%A_Index% := "T05127"
        Random, randomtime, 8, 10
        thoigianthuthuat%A_Index% := randomtime
        noidungtuongtrinh%A_Index% = tramtaitaokhongchotsoi
        ICD%A_Index% := "K02"
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
        Sleep 400
	    mof6()
        for k, toothNumber in danhsachrang%Index% {
            Nhaptuongtrinh(ICD%Index%, Mathuthuat%Index%, thoigianthuthuat%Index%, Vocam%Index%, noidungtuongtrinh%Index%, toothNumber)
        } 
        nhanketthuc()
    }