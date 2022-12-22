If (Dichvu%A_Index% = "Cạo vôi răng")
{
    ICD%A_Index% := "K03.6"
    Vocam%A_Index% := "00"
    noidungtuongtrinh%A_Index% = caovoirang
    ghichu%A_Index% := ""


    If (loaicaovoi%A_Index% = "1. Ít (150K)"){
    Machidinh%A_Index% := "16.43.1"
    Mathuthuat%A_Index% := "T05407"
    Random, randomtime, 10, 17
    thoigianthuthuat%A_Index% := randomtime
    }
    If (loaicaovoi%A_Index% = "2. Trung bình (200K)"){
    Machidinh%A_Index% := "14.43.3"
    Mathuthuat%A_Index% := "T05411"
    Random, randomtime, 20, 25 
    thoigianthuthuat%A_Index% := randomtime
    }
    If (loaicaovoi%A_Index% = "3. Nhiều (300K)"){
    Machidinh%A_Index% := "16.43.4"
    Mathuthuat%A_Index% := "T05443"
    Random, randomtime, 20, 30 
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