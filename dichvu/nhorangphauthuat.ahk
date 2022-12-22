    If (Dichvu%A_Index% = "Nhổ răng phẫu thuật")
    {
        danhsachrang%A_Index% := laydanhsachrang(toothlist%A_Index%)
        toothNumber := danhsachrang%A_Index%[1]
        if (!toothNumber)
            {
                MsgBox Bạn chưa nhập tên răng
                
            }
        FormatTime, giochidinh%A_index%, %time%, HH:mm
        index := A_index
	
        ; Phẫu thuật nhổ răng khôn hàm trên
        if (loainhorang%A_Index% = "Răng khôn trên 500K"){
            ICD%A_Index% := "K01"
            machidinh%A_Index% := "16.199.1.1"
            mathuthuat%A_Index% := "T05275"
            ghichu%A_Index% = Răng %toothNumber%
            Random, randomtime, 5, 10 
            thoigianthuthuat%A_Index% := randomtime
            vocam%A_Index% := "03"
            noidungtuongtrinh%A_Index% = nhorangkhontren
        }

        ; Phẫu thuật nhổ răng khôn mọc lệch hàm trên
        if (loainhorang%A_Index% = "Răng khôn trên 1 triệu"){
            ICD%A_Index% := "K01"
            machidinh%A_Index% := "16.199.1"
            mathuthuat%A_Index% := "P06239"
            ghichu%A_Index% = Răng %toothNumber%
            Random, randomtime, 5, 12
            thoigianthuthuat%A_Index% := randomtime
            vocam%A_Index% := "03"
            noidungtuongtrinh%A_Index% = nhorangkhontren
        }

        ; Phẫu thuật nhổ răng khôn mọc lệch có cắt thân hàm trên
        if (loainhorang%A_Index% = "Răng khôn trên 1.5 triệu"){
            ICD%A_Index% := "K01"
            machidinh%A_Index% := "PHAU010"
            mathuthuat%A_Index% := "P06283"
            ghichu%A_Index% = Răng %toothNumber%
            Random, randomtime, 5, 15
            thoigianthuthuat%A_Index% := randomtime
            vocam%A_Index% := "03"
            noidungtuongtrinh%A_Index% = nhorangkhontrencatthan
        }

        ; Phẫu thuật nhổ răng khôn mọc lệch có cắt thân
        if (loainhorang%A_Index% = "Răng khôn trên 2 triệu"){
            ICD%A_Index% := "K01"
            machidinh%A_Index% := "16.201.4"
            mathuthuat%A_Index% := "P06261"
            ghichu%A_Index% = Răng %toothNumber%
            Random, randomtime, 5, 15
            thoigianthuthuat%A_Index% := randomtime
            vocam%A_Index% := "03"
            noidungtuongtrinh%A_Index% = nhorangkhontrencatthan
        }

        ; Phẫu thuật nhổ răng khôn mọc lệch có cắt thân chia chân răng
        if (loainhorang%A_Index% = "Nhổ răng khôn hàm trên 2.5 triệu"){
            ICD%A_Index% := "K01"
            machidinh%A_Index% := "PHAU901"
            mathuthuat%A_Index% := "P06269"
            ghichu%A_Index% = Răng %toothNumber%
            Random, randomtime, 5, 15
            thoigianthuthuat%A_Index% := randomtime
            vocam%A_Index% := "03"
            noidungtuongtrinh%A_Index% = nhorangkhontrencatthanchiachan
        }

        ; Phẫu thuật nhổ răng khôn mọc lệch có cắt thân chia chân răng
        if (loainhorang%A_Index% = "Nhổ răng khôn hàm trên 3.5 triệu"){
            ICD%A_Index% := "K01"
            machidinh%A_Index% := "PHAU910"
            mathuthuat%A_Index% := "P06269"
            ghichu%A_Index% = Răng %toothNumber%
            Random, randomtime, 5, 15
            thoigianthuthuat%A_Index% := randomtime
            vocam%A_Index% := "03"
            noidungtuongtrinh%A_Index% = nhorangkhontrencatthanchiachan
        }

        ; Phẫu thuật nhổ răng ngầm
        if (loainhorang%A_Index% = "Răng khôn trên 3 triệu"){
            ICD%A_Index% := "K01"
            machidinh%A_Index% := "16.198.1"
            mathuthuat%A_Index% := "T05427"
            ghichu%A_Index% = Răng %toothNumber%
            Random, randomtime, 10, 20
            thoigianthuthuat%A_Index% := randomtime
            vocam%A_Index% := "03"
            noidungtuongtrinh%A_Index% = nhorangngam
        }

        ; Phẫu thuật nhổ răng khôn hàm dưới
        if (loainhorang%A_Index% = "Răng khôn dưới 500K"){
            ICD%A_Index% := "K01"
            machidinh%A_Index% := "PHAU112"
            mathuthuat%A_Index% := "T05277"
            ghichu%A_Index% = Răng %toothNumber%
            Random, randomtime, 5, 15
            thoigianthuthuat%A_Index% := randomtime
            vocam%A_Index% := "17"
            noidungtuongtrinh%A_Index% = nhorangkhonduoi
        }

        ; Phẫu thuật nhổ răng khôn hàm dưới
        if (loainhorang%A_Index% = "Răng khôn dưới 1 triệu"){
            ICD%A_Index% := "K01"
            machidinh%A_Index% := "16.200.1.1"
            mathuthuat%A_Index% := "T05277"
            ghichu%A_Index% = Răng %toothNumber%
            Random, randomtime, 5, 15
            thoigianthuthuat%A_Index% := randomtime
            vocam%A_Index% := "17"
            noidungtuongtrinh%A_Index% = nhorangkhonduoi
        }

        ; Phẫu thuật nhổ răng khôn mọc lệch hàm dưới
        if (loainhorang%A_Index% = "Răng khôn dưới 1.5 triệu"){
            ICD%A_Index% := "K01"
            machidinh%A_Index% := "16.200.9"
            mathuthuat%A_Index% := "T05015"
            ghichu%A_Index% = Răng %toothNumber%
            Random, randomtime, 10, 20
            thoigianthuthuat%A_Index% := randomtime
            vocam%A_Index% := "17"
            noidungtuongtrinh%A_Index% = nhorangkhonduoi
        }

        ; Phẫu thuật nhổ răng khôn mọc lệch có cắt thân
        if (loainhorang%A_Index% = "Răng khôn dưới 2 triệu"){
            ICD%A_Index% := "K01"
            machidinh%A_Index% := "16.201.4"
            mathuthuat%A_Index% := "P06261"
            ghichu%A_Index% = Răng %toothNumber%
            Random, randomtime, 10, 20 
            thoigianthuthuat%A_Index% := randomtime
            vocam%A_Index% := "17"
            noidungtuongtrinh%A_Index% = nhorangkhonduoi
        }

        ; Phẫu thuật nhổ răng khôn mọc lệch có cắt thân chia chân răng
        if (loainhorang%A_Index% = "Nhổ răng khôn hàm dưới 2.5 triệu"){
            ICD%A_Index% := "K01"
            machidinh%A_Index% := "PHAU901"
            mathuthuat%A_Index% := "P06269"
            ghichu%A_Index% = Răng %toothNumber%
            Random, randomtime, 5, 15
            thoigianthuthuat%A_Index% := randomtime
            vocam%A_Index% := "17"
            noidungtuongtrinh%A_Index% = nhorangkhonduoicatthanchiachan
        }

        ; Phẫu thuật nhổ răng khôn mọc lệch có cắt thân chia chân răng
        if (loainhorang%A_Index% = "Nhổ răng khôn hàm dưới 3.5 triệu"){
            ICD%A_Index% := "K01"
            machidinh%A_Index% := "PHAU910"
            mathuthuat%A_Index% := "P06269"
            ghichu%A_Index% = Răng %toothNumber%
            Random, randomtime, 5, 15
            thoigianthuthuat%A_Index% := randomtime
            vocam%A_Index% := "17"
            noidungtuongtrinh%A_Index% = nhorangkhonduoicatthanchiachan
        }

        ; Phẫu thuật nhổ răng ngầm
        if (loainhorang%A_Index% = "Răng khôn dưới 3 triệu"){
            ICD%A_Index% := "K01"
            machidinh%A_Index% := "16.198.1"
            mathuthuat%A_Index% := "T05427"
            ghichu%A_Index% = Răng %toothNumber%
            Random, randomtime, 10, 20  
            thoigianthuthuat%A_Index% := randomtime
            vocam%A_Index% := "17"
            noidungtuongtrinh%A_Index% = nhorangngam
        }

        ; Phẫu thuật nhổ răng ngầm
        if (loainhorang%A_Index% = "Nhổ răng ngầm"){
            ICD%A_Index% := "K01"
            machidinh%A_Index% := "16.198.1"
            mathuthuat%A_Index% := "T05427"
            ghichu%A_Index% = Răng %toothNumber%
            Random, randomtime, 15, 20  
            thoigianthuthuat%A_Index% := randomtime
            vocam%A_Index% := "03"
            noidungtuongtrinh%A_Index% = nhorangngam
        }

        ; Nhổ răng vĩnh viễn
        if (loainhorang%A_Index% = "Nhổ răng vĩnh viễn"){
            ICD%A_Index% := "K02"
            machidinh%A_Index% := "16.203"
            mathuthuat%A_Index% := "P06281"
            ghichu%A_Index% = Răng %toothNumber%
            Random, randomtime, 5, 10  
            thoigianthuthuat%A_Index% := randomtime
            vocam%A_Index% := "03"
            noidungtuongtrinh%A_Index% = nhorangvinhvien
        }

        ; Phẫu thuật nhổ răng khôn mọc lệch hàm dưới sát ống thần kinh thì 1
        if (loainhorang%A_Index% = "Nhổ răng thì 1")
        {
            ICD%A_Index% := "K01"
            machidinh%A_Index% := "16.200.1"
            mathuthuat%A_Index% := "P06125"
            ghichu%A_Index% = Răng %toothNumber%
            Random, randomtime, 10, 15 
            thoigianthuthuat%A_Index% := randomtime
            vocam%A_Index% := "17"
            noidungtuongtrinh%A_Index% = nhorangthi1
        }

        ; Phẫu thuật nhổ răng khôn mọc lệch hàm dưới sát ống thần kinh thì 2
        if (loainhorang%A_Index% = "Nhổ răng thì 2")
        {
            ICD%A_Index% := "K01"
            machidinh%A_Index% := "16.200.2"
            mathuthuat%A_Index% := "P06123"
            ghichu%A_Index% = Răng %toothNumber%
            Random, randomtime, 10, 15  
            thoigianthuthuat%A_Index% := randomtime
            vocam%A_Index% := "03"
            noidungtuongtrinh%A_Index% = nhorangthi2
        }

        ; Nhổ răng thừa
        if (loainhorang%A_Index% = "Nhổ răng thừa")
        {
            ICD%A_Index% := "K00.6"
            machidinh%A_Index% := "16.206.2"
            mathuthuat%A_Index% := "T05431"
            ghichu%A_Index% = Răng thừa
            Random, randomtime, 5, 10 
            thoigianthuthuat%A_Index% := randomtime
            vocam%A_Index% := "03"
            noidungtuongtrinh%A_Index% = nhorangthua
        }


    index := A_index ; luu index
    mof7()
    nhapchidinh(Machidinh%Index%, phantrambaohiem%Index%, giochidinh, ghichu%index%)
    nhanketthuc()
    mabenhnhan := laymabenhnhan()


    Sleep 100
    EnvAdd, time, 1 ,Minits
    Sleep 100
    mof6()
    Nhaptuongtrinh(ICD%Index%, Mathuthuat%Index%, thoigianthuthuat%Index%, Vocam%Index%, noidungtuongtrinh%Index%, toothNumber, noidungvocam%index%)
    nhanketthuc()
    }

