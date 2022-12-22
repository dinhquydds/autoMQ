If (Dichvu%A_Index% = "Răng sứ"){
        danhsachrang%A_Index% := laydanhsachrang(toothlist%A_Index%)
        if (!danhsachrang%A_Index%.Length()){
            MsgBox Bạn nhập sai tên răng
            Continue
        }

        ; FormatTime, giochidinh%A_index%, %time%, HH:mm
            ICD%A_Index% := "K02"
            thoigianthuthuat%A_Index% := "1"
            vocam%A_Index% := "03"
            noidungtuongtrinh%A_Index% = rangsu

        if (loairangsu%A_Index% = "1. Sứ kim loại"){
            machidinh%A_Index% := "16.115"
            mathuthuat%A_Index% := "T05163"
        }
        if (loairangsu%A_Index% = "2. Sứ Titanium"){
            machidinh%A_Index% := "16.116"
            mathuthuat%A_Index% := "T05165"

        }
        if (loairangsu%A_Index% = "3. Sứ Zirconia"){
            machidinh%A_Index% := "16.109.1"
            mathuthuat%A_Index% := "T05167"

        }
        if (loairangsu%A_Index% = "4. Sứ Ceramil Zolid"){
            machidinh%A_Index% := "16.109.2"
            mathuthuat%A_Index% := "T05169"

        }
        if (loairangsu%A_Index% = "5. Sứ Emax"){
            machidinh%A_Index% := "16.109.4"
            mathuthuat%A_Index% := "T05171"

        }
        if (loairangsu%A_Index% = "6. Sứ Lava 3M"){
            machidinh%A_Index% := "16.109.3"
            mathuthuat%A_Index% := "T05205"

        }
        if (loairangsu%A_Index% = "7. Veneer Ivoclar 6 triệu"){
            machidinh%A_Index% := "16.128"
            mathuthuat%A_Index% := "T06001"

        }
        if (loairangsu%A_Index% = "8. Veneer Lisi Press 8 triệu"){
            machidinh%A_Index% := "RHM015"
            mathuthuat%A_Index% := "T06001"

        }
        if (loairangsu%A_Index% = "9. Inlay/Onlay"){
            machidinh%A_Index% := "16.126"
            mathuthuat%A_Index% := "T05245"
        }

        ;Răng sứ Zirconia trên Implant
        if (loairangsu%A_Index% = "Răng sứ Zirconia trên Implant"){
            machidinh%A_Index% := "RAN010"
            mathuthuat%A_Index% := "T05189"
            noidungtuongtrinh%A_Index% = rangsutrenimplant
        }

        if (loairangsu%A_Index% = "Răng sứ Ceramill Zolid trên Implant"){
            machidinh%A_Index% := "RAN011"
            mathuthuat%A_Index% := "T05191"
            noidungtuongtrinh%A_Index% = rangsutrenimplant
        }

        if (loairangsu%A_Index% = "Răng sứ Lava 3M trên Implant"){
            machidinh%A_Index% := "RAN012"
            mathuthuat%A_Index% := "T05195"
            noidungtuongtrinh%A_Index% = rangsutrenimplant
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