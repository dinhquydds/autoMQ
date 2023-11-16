#SingleInstance Force
MyGui := Gui(, "Tường trình tự động",)
MyGui.SetFont("s10", "Arial")


baohiem := ["100","80","50"]
danhmucNoiNha := ["Nội nha lần đầu","Nội nha lại","Nội nha lần đầu (gây mê)","Nội nha lại (gây mê)"]
; Version := FileRead("Version.txt")

; ;Đăng nhập tự động
User := MyGui.Add("DropDownList", "X10 Y10  h10 R50 Sort", danhsachUser)

MyGui.Add("Button", "x+10 yp", "Đăng Nhập").OnEvent("Click", button_dangnhap_click)
MyGui.Add("Button", "x+10 yp", "X-quang").OnEvent("Click", button_moxquang_click)
MyGui.Add("Button", "x+10 yp", "CTM TQ TCK").OnEvent("Click", button_ctmtqtck_click)
MyGui.Add("Button", "x+10 yp", "Phòng khám").OnEvent("Click", button_mo7phongkham_click)

; dich vu 1
Dichvu1 := MyGui.Add("DropDownList", "x10 yp+35 R20 Sort", TatCaDichVu)
Dichvu1.OnEvent("Change", chondichvu1)
BaoHiem1 := MyGui.Add("DropDownList", "x+10 yp w50 R10", baohiem)
Chidinh1 := MyGui.Add("DropDownList", "x230 yp w200 R30")
Toothlist1 := MyGui.Add("Edit", "x440 yp w200") ;toothlist

; dich vu 2
Dichvu2 := MyGui.Add("DropDownList", "x10 yp+35 R20 Sort", TatCaDichVu)
Dichvu2.OnEvent("Change", chondichvu2)
BaoHiem2 := MyGui.Add("DropDownList", "x+10 yp w50 R10", baohiem)
Chidinh2 := MyGui.Add("DropDownList", "x230 yp w200 R30")
Toothlist2 := MyGui.Add("Edit", "x440 yp w200") ;toothlist

; dich vu 3
Dichvu3 := MyGui.Add("DropDownList", "x10 yp+35 R20 Sort", TatCaDichVu)
Dichvu3.OnEvent("Change", chondichvu3)
BaoHiem3 := MyGui.Add("DropDownList", "x+10 yp w50 R10", baohiem)
Chidinh3 := MyGui.Add("DropDownList", "x230 yp w200 R30")
Toothlist3 := MyGui.Add("Edit", "x440 yp w200") ;toothlist

; dich vu 4
Dichvu4 := MyGui.Add("DropDownList", "x10 yp+35 R20 Sort", TatCaDichVu)
Dichvu4.OnEvent("Change", chondichvu4)
BaoHiem4 := MyGui.Add("DropDownList", "x+10 yp w50 R10", baohiem)
Chidinh4 := MyGui.Add("DropDownList", "x230 yp w200 R30")
Toothlist4 := MyGui.Add("Edit", "x440 yp w200") ;toothlist

; dich vu 5
Dichvu5 := MyGui.Add("DropDownList", "x10 yp+35 R20 Sort", TatCaDichVu)
Dichvu5.OnEvent("Change", chondichvu5)
BaoHiem5 := MyGui.Add("DropDownList", "x+10 yp w50 R10", baohiem)
Chidinh5 := MyGui.Add("DropDownList", "x230 yp w200 R30")
Toothlist5 := MyGui.Add("Edit", "x440 yp w200") ;toothlist

; dich vu 6
Dichvu6 := MyGui.Add("DropDownList", "x10 yp+35 R20 Sort", TatCaDichVu)
Dichvu6.OnEvent("Change", chondichvu6)
BaoHiem6 := MyGui.Add("DropDownList", "x+10 yp w50 R10", baohiem)
Chidinh6 := MyGui.Add("DropDownList", "x230 yp w200 R30")
Toothlist6 := MyGui.Add("Edit", "x440 yp w200") ;toothlist

; dich vu 7
Dichvu7 := MyGui.Add("DropDownList", "x10 yp+35 R20 Sort", TatCaDichVu)
Dichvu7.OnEvent("Change", chondichvu7)
BaoHiem7 := MyGui.Add("DropDownList", "x+10 yp w50 R10", baohiem)
Chidinh7 := MyGui.Add("DropDownList", "x230 yp w200 R30")
Toothlist7 := MyGui.Add("Edit", "x440 yp w200") ;toothlist

bacsi := MyGui.Add("DropDownList", "x10 yp+30 Sort r50", danhsachbacsi)
phuta := MyGui.Add("DropDownList", "x+10 yp Sort r50", danhsachdieuduong)
vongtrong := MyGui.Add("DropDownList", "x+10 yp Sort r50", danhsachdieuduong)
vongngoai := MyGui.Add("DropDownList", "x+10 yp Sort r50", danhsachdieuduong)


; ;button
MyGui.Add("Button", "x260 yp+30 w70 h30", "&OK").OnEvent("Click", Button_OK_Click)
MyGui.Add("Button", "x340 yp w70 h30", "Đón&g").OnEvent("Click", DongChuongTrinh)
MyGui.Add("Button", "x420 yp w70 h30", "&Reset").OnEvent("Click", ResetChuongTrinh)
MyGui.Add("Button", "x+10 yp w70 h30", "&Chỉnh nha").OnEvent("Click", ButtonChinhNha)

; ;thời gian
MyGui.Add("Text", "x12 yp w130 h30", "Giờ chỉ định")
MyGui.Add("Edit", "Number x150 yp w40 h20")
StartHour := MyGui.Add("UpDown", "yp Range0-24")
MyGui.Add("Edit", "Number x200 yp w40 h20")
StartMinute := MyGui.Add("UpDown", "yp Range0-60")

MyGui.Add("Text", "x12 yp+30 w130 h30", "Giờ tường trình")
MyGui.Add("Edit", "Number x150 yp w40 h20")
giotuongtrinh := MyGui.Add("UpDown", "yp Range0-24")
MyGui.Add("Edit", "Number x200 yp w40 h20")
phuttuongtrinh := MyGui.Add("UpDown", "yp Range0-60")

MyGui.Add("Link","x10 y+10", 'Mở trang tính để nhập giờ tường trình <a href="https://docs.google.com/spreadsheets/d/1eEt6Hl4ag8Vnru0AUcT2NRjp2BGqqf7FdFs77TJ6-EU/edit?pli=1#gid=0">ở đây</a>')
; MyGui.Add("Text", "x+250 yp w40 h30", Format("V.{1}", Version))

MyGui.Show("x1000 y 300 AutoSize")


DongChuongTrinh(ctrl, *){
    ExitApp
}
ResetChuongTrinh(ctrl, *){
    Reload
}

chinhnhaGui := Gui(,"Nhap tuong trinh chinh nha")
chinhnhaGui.SetFont("s10", "Arial")
chinhnhaGui.OnEvent("Close", closeChinhNhaGui)

Userchinhnha := chinhnhaGui.Add("DropDownList", "X10 Y10  h10 R50 Sort", danhsachUser)

chinhnhaGui.Add("Text","x10","Chỉnh nha lần")
lanbatdau := chinhnhaGui.Add("Edit", "x+10 yp w50")
chinhnhaGui.Add("Text","x+10 yp","đến lần")
lanketthuc := chinhnhaGui.Add("Edit", "x+10 yp w50")
chinhnhaGui.Add("Text", "x10 yp+30", "So tien le")

chinhnhaGui.Add("Text", "x10" , "500K")
namtramK := chinhnhaGui.Add("Edit", "x+10 yp w50")

chinhnhaGui.Add("Text", "x10", "250K")
haitramruoiK:= chinhnhaGui.Add("Edit", "x+10 yp w50")

chinhnhaGui.Add("Text", "x10", "100K")
mottramK := chinhnhaGui.Add("Edit", "x+10 yp w50")

chinhnhaGui.Add("Text", "x10", "20K")
haimuoiK := chinhnhaGui.Add("Edit", "x+10 yp w50")

chinhnhaGui.Add("Text", "x10", "10K")
muoiK := chinhnhaGui.Add("Edit", "x+10 yp w50")

chinhnhaGui.Add("Text", "x10", "5K")
namK := chinhnhaGui.Add("Edit", "x+10 yp w50")

bacsichinhnha := chinhnhaGui.Add("DropDownList", "x10 yp+30 Sort r50", danhsachbacsi)
phutachinhnha := chinhnhaGui.Add("DropDownList", "x+10 yp Sort r50", danhsachdieuduong)
vongtrongchinhnha := chinhnhaGui.Add("DropDownList", "x+10 yp Sort r50", danhsachdieuduong)
vongngoaichinhnha := chinhnhaGui.Add("DropDownList", "x+10 yp Sort r50", danhsachdieuduong)

chinhnhaGui.Add("Text", "x12 yp+30 w130 h30", "Giờ chỉ định")
chinhnhaGui.Add("Edit", "Number x150 yp w50 h20")
StartHourchinhnha := chinhnhaGui.Add("UpDown", "yp Range0-24")
chinhnhaGui.Add("Edit", "Number x200 yp w50 h20")
StartMinutechinhnha := chinhnhaGui.Add("UpDown", "yp Range0-60")

chinhnhaGui.Add("Text", "x12 yp+30 w130 h30", "Giờ tường trình")
chinhnhaGui.Add("Edit", "Number x150 yp w40 h20")
giotuongtrinhchinhnha := chinhnhaGui.Add("UpDown", "yp Range0-24")
chinhnhaGui.Add("Edit", "Number x200 yp w40 h20")
phuttuongtrinhchinhnha := chinhnhaGui.Add("UpDown", "yp Range0-60")

chinhnhaGui.Add("Button", "x260 yp w70 h30", "&OK").OnEvent("Click", OK_chinhnha)

chinhnhaGui.Add("Link","x10 y+10", 'Mở trang tính để nhập giờ tường trình <a href="https://docs.google.com/spreadsheets/d/1eEt6Hl4ag8Vnru0AUcT2NRjp2BGqqf7FdFs77TJ6-EU/edit?pli=1#gid=0">ở đây</a>')
; chinhnhaGui.Add("Text", "x+250 yp w40 h30", Format("V.{1}", Version))


Buttonchinhnha(ctrl, *){
    MyGui.Hide
    chinhnhaGui.Show
}

closeChinhNhaGui(ctrl, *){
    MyGui.Show
}

