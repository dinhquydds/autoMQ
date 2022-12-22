If (Dichvu%A_Index% = "Nội nha"){
    danhsachrang%A_Index% := laydanhsachrang(toothlist%A_Index%)
    toothNumber := danhsachrang%A_Index%[1]
    if (!toothNumber){
        MsgBox Bạn chưa nhập tên răng để nội nha
        Continue
    }

    if (isToothNumber(toothNumber) = 0) and (isMilkToothNumber(toothNumber) = 0)
    {
        MsgBox Bạn nhập sai tên răng
        Continue
    }

index := A_index ; luu index


    if (loainoinha%A_Index% = "Nội nha lần đầu"){
        ICD%A_Index% := "K04"
        Vocam%A_Index% := "03"
        noidungvocam%A_Index% = Gây tê tại chỗ
        ; FormatTime, giochidinh%A_index%, %time%, HH:mm
        noidungtuongtrinh%A_Index% = noinha
        ghichu%A_Index% = Răng %toothNumber%


        firstLetter := SubStr(toothNumber, 1, 1)
        lastLetter := SubStr(toothNumber, 2, 1)

        if (isPermanentToothNumber(toothNumber)){ ; neu la rang vinh vien
            if (firstLetter = 1) or (firstLetter = 2)
                phanham := "t"
            if (firstLetter = 3) or (firstLetter = 4)
                phanham := "d"

            Switch lastLetter {
                Case 1: 
                {
                    machidinh%A_Index% := "16.44.3"
                    mathuthuat%A_Index% := "T05367"
                    vocam%A_Index% := "03"
                    Random, randomtime, 15, 20 
                    thoigianthuthuat%A_Index% := randomtime
                }
                Case 2: 
                {
                    machidinh%A_Index% := "16.44.3.1"
                    mathuthuat%A_Index% := "T05321"
                    vocam%A_Index% := "03"
                    Random, randomtime, 15, 20
                    thoigianthuthuat%A_Index% := randomtime
                }
                Case 3: 
                {
                    machidinh%A_Index% := "16.44.3.2"
                    mathuthuat%A_Index% := "T05319"
                    vocam%A_Index% := "03"
                    Random, randomtime, 15, 20
                    thoigianthuthuat%A_Index% := randomtime
                }
                Case 4: 
                {
                    machidinh%A_Index% := "16.44.1"
                    mathuthuat%A_Index% := "T05369"
                    vocam%A_Index% := "03"
                    Random, randomtime, 15, 30
                    thoigianthuthuat%A_Index% := randomtime
                }
                Case 5: 
                {
                    machidinh%A_Index% := "16.44.1.1"
                    mathuthuat%A_Index% := "T05325"
                    vocam%A_Index% := "03"
                    Random, randomtime, 15, 30
                    thoigianthuthuat%A_Index% := randomtime
                }
                Case 6: 
                {
                    if (phanham = "t")
                    {
                        machidinh%A_Index% := "16.44.4"
                        mathuthuat%A_Index% := "T05365"
                        vocam%A_Index% := "03"
                        Random, randomtime, 20 , 45
                        thoigianthuthuat%A_Index% := randomtime
                    }
                    if (phanham = "d")
                    {
                        machidinh%A_Index% := "16.44.2"
                        mathuthuat%A_Index% := "T05253"
                        vocam%A_Index% := "17"
                        noidungvocam%A_Index% := "Gây tê vùng và gây tê tại chỗ"
                        Random, randomtime, 20, 45
                        thoigianthuthuat%A_Index% := randomtime
                    }
                }
                Case 7: 
                {
                    if (phanham = "t")
                    {
                        machidinh%A_Index% := "16.44.4.1"
                        mathuthuat%A_Index% := "T05317"
                        vocam%A_Index% := "03"
                        Random, randomtime, 20 , 50
                        thoigianthuthuat%A_Index% := randomtime
                    }
                    if (phanham = "d")
                    {
                        machidinh%A_Index% := "16.44.2.1"
                        mathuthuat%A_Index% := "T05323"
                        vocam%A_Index% := "17"
                        noidungvocam%A_Index% := "Gây tê vùng và gây tê tại chỗ"
                        Random, randomtime, 20, 50
                        thoigianthuthuat%A_Index% := randomtime
                    }
                } ;end case 7
            } ;end switch
        } ; end if isTooth

        if (isMilkToothNumber(toothNumber)) ; neu la rang sua
        {
            if (lastLetter < 4)
            {
                machidinh%A_Index% := "16.232.1"
                mathuthuat%A_Index% := "T05401"
                vocam%A_Index% := "03"
                Random, randomtime, 15, 30
                thoigianthuthuat%A_Index% := randomtime
                noidungtuongtrinh%A_Index% = noinharangsua
            }
            else
            {
                machidinh%A_Index% := "16.232.2"
                mathuthuat%A_Index% := "T05399"
                vocam%A_Index% := "03"
                Random, randomtime, 15, 30
                thoigianthuthuat%A_Index% := randomtime
                noidungtuongtrinh%A_Index% = noinharangsua
            }
        } ; end if ismilktooth

    } ; end nội nha lần đầu

    if (loainoinha%A_Index% = "Nội nha lần đầu (gây mê)"){
        ICD%A_Index% := "K04"
        Vocam%A_Index% := "03"
        noidungvocam%A_Index% = Gây tê tại chỗ
        ; FormatTime, giochidinh%A_index%, %time%, HH:mm
        noidungtuongtrinh%A_Index% = noinhagayme
        ghichu%A_Index% = Răng %toothNumber%


        firstLetter := SubStr(toothNumber, 1, 1)
        lastLetter := SubStr(toothNumber, 2, 1)

        if (isPermanentToothNumber(toothNumber)){ ; neu la rang vinh vien
            if (firstLetter = 1) or (firstLetter = 2)
                phanham := "t"
            if (firstLetter = 3) or (firstLetter = 4)
                phanham := "d"

            Switch lastLetter {
                Case 1: 
                {
                    machidinh%A_Index% := "RHM8"
                    mathuthuat%A_Index% := "T05367"
                    vocam%A_Index% := "03"
                    Random, randomtime, 15, 30
                    thoigianthuthuat%A_Index% := randomtime
                }
                Case 2: 
                {
                    machidinh%A_Index% := "RHM10"
                    mathuthuat%A_Index% := "T05321"
                    vocam%A_Index% := "03"
                    Random, randomtime, 15, 30
                    thoigianthuthuat%A_Index% := randomtime
                }
                Case 3: 
                {
                    machidinh%A_Index% := "RHM12"
                    mathuthuat%A_Index% := "T05319"
                    vocam%A_Index% := "03"
                    Random, randomtime, 15, 30
                    thoigianthuthuat%A_Index% := randomtime
                }
                Case 4: 
                {
                    machidinh%A_Index% := "RHM14"
                    mathuthuat%A_Index% := "T05369"
                    vocam%A_Index% := "03"
                    Random, randomtime, 15, 30
                    thoigianthuthuat%A_Index% := randomtime
                }
                Case 5: 
                {
                    machidinh%A_Index% := "RHM16"
                    mathuthuat%A_Index% := "T05325"
                    vocam%A_Index% := "03"
                    Random, randomtime, 15, 30
                    thoigianthuthuat%A_Index% := randomtime
                }
                Case 6: 
                {
                    if (phanham = "t")
                    {
                        machidinh%A_Index% := "RHM21"
                        mathuthuat%A_Index% := "T05365"
                        vocam%A_Index% := "03"
                    Random, randomtime, 20, 50
                    thoigianthuthuat%A_Index% := randomtime
                    }
                    if (phanham = "d")
                    {
                        machidinh%A_Index% := "RHM20"
                        mathuthuat%A_Index% := "T05253"
                        vocam%A_Index% := "17"
                        noidungvocam%A_Index% := "Gây tê vùng và gây tê tại chỗ"
                    Random, randomtime, 20, 50
                    thoigianthuthuat%A_Index% := randomtime
                    }
                }
                Case 7: 
                {
                    if (phanham = "t")
                    {
                        machidinh%A_Index% := "RHM24"
                        mathuthuat%A_Index% := "T05317"
                        vocam%A_Index% := "03"
                    Random, randomtime, 30, 50
                    thoigianthuthuat%A_Index% := randomtime
                    }
                    if (phanham = "d")
                    {
                        machidinh%A_Index% := "RHM23"
                        mathuthuat%A_Index% := "T05323"
                        vocam%A_Index% := "17"
                        noidungvocam%A_Index% := "Gây tê vùng và gây tê tại chỗ"
                    Random, randomtime, 30, 50
                    thoigianthuthuat%A_Index% := randomtime
                    }
                } ;end case 7
            } ;end switch
        } ; end if isTooth

        if (isMilkToothNumber(toothNumber)) ; neu la rang sua
        {
            if (lastLetter < 4)
            {
                machidinh%A_Index% := "RHM6"
                mathuthuat%A_Index% := "T05401"
                vocam%A_Index% := "03"
                    Random, randomtime, 20, 30
                    thoigianthuthuat%A_Index% := randomtime
                noidungtuongtrinh%A_Index% = noinharangsua
            }
            else
            {
                machidinh%A_Index% := "RHM7"
                mathuthuat%A_Index% := "T05399"
                vocam%A_Index% := "03"
                    Random, randomtime, 25, 30
                    thoigianthuthuat%A_Index% := randomtime
                noidungtuongtrinh%A_Index% = noinharangsua
            }
        } ; end if ismilktooth

    } ; end nội nha lần đầu gây mê

    if (loainoinha%A_Index% = "Nội nha lại"){
        ICD%A_Index% := "K04"
        Vocam%A_Index% := "03"
        noidungvocam%A_Index% = Gây tê tại chỗ
        ; FormatTime, giochidinh%A_index%, %time%, HH:mm
        noidungtuongtrinh%A_Index% = noinhalai
        ghichu%A_Index% = Răng %toothNumber%
        firstLetter := SubStr(toothNumber, 1, 1)
        lastLetter := SubStr(toothNumber, 2, 1)
        if (firstLetter = 1) or (firstLetter = 2)
        {
            phanham := "t"
        }
        if (firstLetter = 3) or (firstLetter = 4)
        {
            phanham := "d"
        }

        Switch lastLetter
        {
            Case 1: 
            {
                machidinh%A_Index% := "16.61.8"
                mathuthuat%A_Index% := "T05359"
                    Random, randomtime, 15, 30
                    thoigianthuthuat%A_Index% := randomtime
            }
            Case 2: 
            {
                machidinh%A_Index% := "16.61.8.1"
                mathuthuat%A_Index% := "T05295"
                    Random, randomtime, 15, 30
                    thoigianthuthuat%A_Index% := randomtime
            }
            Case 3: 
            {
                machidinh%A_Index% := "16.61.8.2"
                mathuthuat%A_Index% := "T05297"
                    Random, randomtime, 15, 30
                    thoigianthuthuat%A_Index% := randomtime
            }
            Case 4: 
            {
                machidinh%A_Index% := "16.61.7"
                mathuthuat%A_Index% := "T05357"
                    Random, randomtime, 15, 30
                    thoigianthuthuat%A_Index% := randomtime
            }
            Case 5: 
            {
                machidinh%A_Index% := "16.61.7.1"
                mathuthuat%A_Index% := "T05299"
                    Random, randomtime, 15, 30
                    thoigianthuthuat%A_Index% := randomtime
            }
            Case 6: 
            {
                machidinh%A_Index% := "16.61.3"
                mathuthuat%A_Index% := "T05355"
                    Random, randomtime, 30, 50
                    thoigianthuthuat%A_Index% := randomtime
            }
            Case 7: 
            {
                machidinh%A_Index% := "16.61.3.1"
                mathuthuat%A_Index% := "T05265"
                    Random, randomtime, 30, 50
                    thoigianthuthuat%A_Index% := randomtime
            }
        } ;end switch


    } ; end noi nha lại

    if (loainoinha%A_Index% = "Nội nha lại (gây mê)"){
       ICD%A_Index% := "K04"
        Vocam%A_Index% := "03"
        noidungvocam%A_Index% = Gây tê tại chỗ
        ; FormatTime, giochidinh%A_index%, %time%, HH:mm
        noidungtuongtrinh%A_Index% = noinhalaigayme
        ghichu%A_Index% = Răng %toothNumber%
        firstLetter := SubStr(toothNumber, 1, 1)
        lastLetter := SubStr(toothNumber, 2, 1)
        if (firstLetter = 1) or (firstLetter = 2)
        {
            phanham := "t"
        }
        if (firstLetter = 3) or (firstLetter = 4)
        {
            phanham := "d"
        }

        Switch lastLetter
        {
            Case 1: 
            {
                machidinh%A_Index% := "RHM9"
                mathuthuat%A_Index% := "T05359"
                    Random, randomtime, 15, 30
                    thoigianthuthuat%A_Index% := randomtime
            }
            Case 2: 
            {
                machidinh%A_Index% := "RHM11"
                mathuthuat%A_Index% := "T05295"
                    Random, randomtime, 15, 30
                    thoigianthuthuat%A_Index% := randomtime
            }
            Case 3: 
            {
                machidinh%A_Index% := "RHM13"
                mathuthuat%A_Index% := "T05297"
                    Random, randomtime, 15, 30
                    thoigianthuthuat%A_Index% := randomtime
            }
            Case 4: 
            {
                machidinh%A_Index% := "RHM15"
                mathuthuat%A_Index% := "T05357"
                    Random, randomtime, 15, 30
                    thoigianthuthuat%A_Index% := randomtime
            }
            Case 5: 
            {
                machidinh%A_Index% := "RHM19"
                mathuthuat%A_Index% := "T05299"
                    Random, randomtime, 15, 30
                    thoigianthuthuat%A_Index% := randomtime
            }
            Case 6: 
            {
                machidinh%A_Index% := "RHM22"
                mathuthuat%A_Index% := "T05355"
                    Random, randomtime, 30, 50
                    thoigianthuthuat%A_Index% := randomtime
            }
            Case 7: 
            {
                MsgBox chưa có dịch vụ
                Continue
                ; machidinh%A_Index% := "16.61.3.1"
                ; mathuthuat%A_Index% := "T05265"
                ; thoigianthuthuat%A_Index% := "60"
            }
        } ;end switch

    }






mof7()
nhapchidinh(Machidinh%Index%, phantrambaohiem%Index%, giochidinh, ghichu%index%)	
nhanketthuc() 
mabenhnhan := laymabenhnhan()   
Sleep 700
EnvAdd, time, 1 ,Minits
Sleep 600
Mof6()
Nhaptuongtrinh(ICD%Index%, Mathuthuat%Index%, thoigianthuthuat%Index%, Vocam%Index%, noidungtuongtrinh%Index%, toothNumber, noidungvocam%index%)
nhanketthuc()    
}