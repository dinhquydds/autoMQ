If (Dichvu%A_Index% = "Cắt thắng lưỡi")
{
    ICD%A_Index% := "Q38.1"
    Vocam%A_Index% := "03"
    noidungtuongtrinh%A_Index% = catthangluoi
    ghichu%A_Index% := ""

; 300K (DV)|500K|2.5M|3M
    If (catthangluoi%A_Index% = "300K (DV)"){
    Machidinh%A_Index% := "3.2174"
    Mathuthuat%A_Index% := "P14001"
    Random, randomtime, 10, 17
    thoigianthuthuat%A_Index% := randomtime
    }
    If (catthangluoi%A_Index% = "500K"){
    Machidinh%A_Index% := "15.209"
    Mathuthuat%A_Index% := "P14001"
    Random, randomtime, 10, 17
    thoigianthuthuat%A_Index% := randomtime
    }
    If (catthangluoi%A_Index% = "2.5M"){
    Machidinh%A_Index% := "16.216.2"
    Mathuthuat%A_Index% := "P14001"
    Random, randomtime, 10, 17
    thoigianthuthuat%A_Index% := randomtime
    }
    If (catthangluoi%A_Index% = "3M"){
    Machidinh%A_Index% := "16.216.1"
    Mathuthuat%A_Index% := "P14001"
    Random, randomtime, 10, 17
    thoigianthuthuat%A_Index% := randomtime
    }


mof7()
nhapchidinh(Machidinh%A_Index%, phantrambaohiem%A_Index%, giochidinh, ghichu%A_Index%)
nhanketthuc()

mabenhnhan := laymabenhnhan()

EnvAdd, time, 1 ,Minits
Sleep 500

mof6()
Nhaptuongtrinh(ICD%A_Index%, Mathuthuat%A_Index%, thoigianthuthuat%A_Index%, Vocam%A_Index%, noidungtuongtrinh%A_Index%, ghichu%A_Index%)
nhanketthuc()
    
}