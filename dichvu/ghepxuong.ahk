If (Dichvu%A_Index% = "Ghép xương"){
soluongxuong := Trim(toothlist%A_Index%)
if soluongxuong is not integer 
{
    MsgBox Bạn nhập sai số lượng
    Continue
}

; FormatTime, giochidinh%A_index%, %time%, HH:mm
ICD%A_Index% := "K08.1"
thoigianthuthuat%A_Index% := "1"
vocam%A_Index% := "03"
noidungtuongtrinh%A_Index% = ghepxuong ; nội dung tường trình
Machidinh%A_Index% := "16.18"
mathuthuat%A_Index% := "P06055"

index := A_index ; luu index
mof7()
Loop, %soluongxuong%
{
    nhapchidinh(Machidinh%Index%, phantrambaohiem%Index%, giochidinh, ghichu)
}
nhanketthuc()
mabenhnhan := laymabenhnhan()
EnvAdd, time, 1 ,Minits
mof6()
Loop, %soluongxuong%
{
    Nhaptuongtrinh(ICD%Index%, Mathuthuat%Index%, thoigianthuthuat%Index%, Vocam%Index%, noidungtuongtrinh%Index%, toothNumber)
}      
nhanketthuc()
}