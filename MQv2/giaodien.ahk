#SingleInstance Force
MyGui := Gui(, "Tường trình tự động",)
MyGui.SetFont("s10", "Arial")

Tatcadichvu := ["Cạo vôi răng","Trám răng","Nội nha","Nhổ răng phẫu thuật","Nhổ răng thủ thuật","Răng sứ","Răng tháo lắp","Implant","Implant abutment","Chỉnh nha","Tẩy trắng răng","Ghép huyết tương","Ghép xương","Bôi SDF","Tháo cầu","Tháo mão (chụp)","Cắt thắng lưỡi"]
baohiem := ["100","80","50"]
; danhMucTramRang := ["Xoang 1","Xoang 2","Xoang 1+2","Xoang 3","Xoang 4","Xoang 5","Trám răng sữa 150K","Trám răng sữa 250K","Che tủy Calci","Che tủy MTA","Xoang 1 (gây mê)","Xoang 2 (gây mê)","Xoang 1+2 (gây mê)","Xoang 3 (gây mê)","Xoang 4 (gây mê)","Trám răng sữa (gây mê)","Xoang 1 (laser)","Xoang 2 (laser)","Xoang 1+2 (laser)","Xoang 3 (laser)","Xoang 4 (laser)","Xoang 5 (laser)","Trám tái tạo có chốt 400K","Trám tái tạo không chốt 200K","Trám tái tạo không chốt 400K"]
; danhMucRangSu := ["1. Sứ kim loại","2. Sứ Titanium","3. Sứ Zirconia","4. Sứ Ceramil Zolid","5. Sứ Emax","6. Sứ Lava 3M","7. Veneer Ivoclar 6 triệu","8. Veneer Lisi Press 8 triệu","9. Inlay/Onlay","Răng sứ Zirconia trên Implant","Răng sứ Ceramill Zolid trên Implant","Răng sứ Lava 3M trên Implant"]
; danhMucRangThaoLap := ["1. Răng Nhật","2. Răng Mỹ","3. Răng composite","Nền nhựa dẻo bán phần","Nền nhựa dẻo toàn phần","Lưới nền hàm"]
; danhMucAbutment := ["1. Abutment thường","2. Abutment sứ Zirconia"]
; danhMucImplant := ["1. Dio","2. Helix","3. Strauman","4. ETK"]
; danhmuccaovoirang := ["1. Ít (150K)","2. Trung bình (200K)","3. Nhiều (300K)"]
; danhMucNhoRangPhauThuat := ["Răng khôn trên 500K","Răng khôn trên 1 triệu","Răng khôn trên 1.5 triệu","Răng khôn trên 2 triệu","Nhổ răng khôn hàm trên 2.5 triệu","Răng khôn trên 3 triệu","Nhổ răng khôn hàm trên 3.5 triệu","Răng khôn dưới 500K","Răng khôn dưới 1 triệu","Răng khôn dưới 1.5 triệu","Răng khôn dưới 2 triệu","Nhổ răng khôn hàm dưới 2.5 triệu","Răng khôn dưới 3 triệu","Nhổ răng khôn hàm dưới 3.5 triệu","Nhổ răng ngầm","Nhổ răng vĩnh viễn","Nhổ răng thì 1","Nhổ răng thì 2","Nhổ răng thừa"]
; danhMucNhoRangThuThuat := ["Nhổ răng sữa","Nhổ răng lung lay","Nhổ chân răng"]
luachonnoinha := ["Nội nha lần đầu","Nội nha lại","Nội nha lần đầu (gây mê)","Nội nha lại (gây mê)"]
; danhMucCatThangLuoi := ["300K (DV)","500K","2.5M","3M"]

danhsachUser := ["Quý ND","Hoàng N", "Vi HT", "Tâm NTH","Phương NT","Sâm LT","Nguyên HT","Vinh TD","Pẹc NV"]
danhsachbacsi := ["Vi HT","Sâm LT","Quý ND","Hoàng N","Tâm NTH","Phương NT","Nguyên HT","Vinh TD","Pẹc NV"]
danhsachdieuduong := ["Lan DTQ","Thảo DTT","Minh DTN","Lý DT","Tình HTH","Trang LTT","Hòa LT","Vân LTT","Nam MM","Sơn NT","Sương NT","Thắm NT","Hằng NTT","Vui NT","Lực NV","Linh PTT","Luyến VT","Quỳnh VTN","Ý VTN","Hạnh NTM"]

Version := FileRead("Version.txt")

; ;Đăng nhập tự động
User := MyGui.Add("DropDownList", "X10 Y10  h10 R50 Sort", danhsachUser)

; MyGui.Add("DropDownList", "x10 y10 R50 Sort vUser", danhsachUser)
MyGui.Add("Button", "x+10 yp", "Đăng Nhập").OnEvent("Click", button_dangnhap_click)
MyGui.Add("Button", "x+10 yp", "X-quang").OnEvent("Click", button_moxquang_click)
MyGui.Add("Button", "x+10 yp", "CTM TQ TCK").OnEvent("Click", button_ctmtqtck_click)
MyGui.Add("Button", "x+10 yp", "Phòng khám").OnEvent("Click", button_mo7phongkham_click)

; dich vu 1
Dichvu1 := MyGui.Add("DropDownList", "x10 yp+35 R20 Sort", TatCaDichVu)
BaoHiem1 := MyGui.Add("DropDownList", "x+10 yp w50 R10 ", baohiem)
TramRang1 := MyGui.Add("DropDownList", "x230 yp w180 R30 Hidden", danhMucTramRang)
RangSu1 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", danhMucRangSu)
RangThaoLap1 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", danhMucRangThaoLap)
Abutment1 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", danhMucAbutment)
Implant1 := MyGui.Add("DropDownList", "x170 yp w50 R10 Hidden", danhMucImplant)
CaoVoi1 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", danhmuccaovoirang)
NhoRangPhauThuat1 := MyGui.Add("DropDownList", "x230 yp w200 R30 Hidden", danhMucNhoRangPhauThuat)
NhoRangThuThuat1 := MyGui.Add("DropDownList", "x230 yp w180 R30 Hidden", danhMucNhoRangThuThuat)
CatThangLuoi1 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", danhMucCatThangLuoi)
Toothlist1 := MyGui.Add("Edit", "x440 yp w200") ;toothlist
NoiNha1 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", luachonnoinha)

; dich vu 2
Dichvu2 := MyGui.Add("DropDownList", "x10 yp+30 R20 Sort", TatCaDichVu)
BaoHiem2 := MyGui.Add("DropDownList", "x+10 yp w50 R10 ", baohiem)
TramRang2 := MyGui.Add("DropDownList", "x230 yp w180 R30 Hidden", danhMucTramRang)
RangSu2 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", danhMucRangSu)
RangThaoLap2 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", danhMucRangThaoLap)
Abutment2 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", danhMucAbutment)
Implant2 := MyGui.Add("DropDownList", "x170 yp w50 R30 Hidden", danhMucImplant)
CaoVoi2 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", danhmuccaovoirang)
NhoRangPhauThuat2 := MyGui.Add("DropDownList", "x230 yp w200 R30 Hidden", danhMucNhoRangPhauThuat)
NhoRangThuThuat2 := MyGui.Add("DropDownList", "x230 yp w180 R30 Hidden", danhMucNhoRangThuThuat)
CatThangLuoi2 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", danhMucCatThangLuoi)
Toothlist2 := MyGui.Add("Edit", "x440 yp w200") ;toothlist
NoiNha2 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", luachonnoinha)

; dich vu 3
Dichvu3 := MyGui.Add("DropDownList", "x10 yp+30 R20 Sort", TatCaDichVu)
BaoHiem3 := MyGui.Add("DropDownList", "x+10 yp w50 R10 ", baohiem)
TramRang3 := MyGui.Add("DropDownList", "x230 yp w180 R30 Hidden", danhMucTramRang)
RangSu3 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", danhMucRangSu)
RangThaoLap3 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", danhMucRangThaoLap)
Abutment3 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", danhMucAbutment)
Implant3 := MyGui.Add("DropDownList", "x170 yp w50 R30 Hidden", danhMucImplant)
CaoVoi3 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", danhmuccaovoirang)
NhoRangPhauThuat3 := MyGui.Add("DropDownList", "x230 yp w200 R30 Hidden", danhMucNhoRangPhauThuat)
NhoRangThuThuat3 := MyGui.Add("DropDownList", "x230 yp w180 R30 Hidden", danhMucNhoRangThuThuat)
CatThangLuoi3 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", danhMucCatThangLuoi)
Toothlist3 := MyGui.Add("Edit", "x440 yp w200") ;toothlist
NoiNha3 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", luachonnoinha)

; dich vu 4
Dichvu4 := MyGui.Add("DropDownList", "x10 yp+30 R20 Sort", TatCaDichVu)
BaoHiem4 := MyGui.Add("DropDownList", "x+10 yp w50 R10 ", baohiem)
TramRang4 := MyGui.Add("DropDownList", "x230 yp w180 R30 Hidden", danhMucTramRang)
RangSu4 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", danhMucRangSu)
RangThaoLap4 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", danhMucRangThaoLap)
Abutment4 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", danhMucAbutment)
Implant4 := MyGui.Add("DropDownList", "x170 yp w50 R30 Hidden", danhMucImplant)
CaoVoi4 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", danhmuccaovoirang)
NhoRangPhauThuat4 := MyGui.Add("DropDownList", "x230 yp w200 R30 Hidden", danhMucNhoRangPhauThuat)
NhoRangThuThuat4 := MyGui.Add("DropDownList", "x230 yp w180 R30 Hidden", danhMucNhoRangThuThuat)
CatThangLuoi4 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", danhMucCatThangLuoi)
Toothlist4 := MyGui.Add("Edit", "x440 yp w200") ;toothlist
NoiNha4 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", luachonnoinha)

; dich vu 5
Dichvu5 := MyGui.Add("DropDownList", "x10 yp+30 R20 Sort", TatCaDichVu)
BaoHiem5 := MyGui.Add("DropDownList", "x+10 yp w50 R10 ", baohiem)
TramRang5 := MyGui.Add("DropDownList", "x230 yp w180 R30 Hidden", danhMucTramRang)
RangSu5 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", danhMucRangSu)
RangThaoLap5 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", danhMucRangThaoLap)
Abutment5 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", danhMucAbutment)
Implant5 := MyGui.Add("DropDownList", "x170 yp w50 R30 Hidden", danhMucImplant)
CaoVoi5 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", danhmuccaovoirang)
NhoRangPhauThuat5 := MyGui.Add("DropDownList", "x230 yp w200 R30 Hidden", danhMucNhoRangPhauThuat)
NhoRangThuThuat5 := MyGui.Add("DropDownList", "x230 yp w180 R30 Hidden", danhMucNhoRangThuThuat)
CatThangLuoi5 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", danhMucCatThangLuoi)
Toothlist5 := MyGui.Add("Edit", "x440 yp w200") ;toothlist
NoiNha5 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", luachonnoinha)

; dich vu 6
Dichvu6 := MyGui.Add("DropDownList", "x10 yp+30 R20 Sort", TatCaDichVu)
BaoHiem6 := MyGui.Add("DropDownList", "x+10 yp w50 R10 ", baohiem)
TramRang6 := MyGui.Add("DropDownList", "x230 yp w180 R30 Hidden", danhMucTramRang)
RangSu6 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", danhMucRangSu)
RangThaoLap6 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", danhMucRangThaoLap)
Abutment6 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", danhMucAbutment)
Implant6 := MyGui.Add("DropDownList", "x170 yp w50 R30 Hidden", danhMucImplant)
CaoVoi6 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", danhmuccaovoirang)
NhoRangPhauThuat6 := MyGui.Add("DropDownList", "x230 yp w200 R30 Hidden", danhMucNhoRangPhauThuat)
NhoRangThuThuat6 := MyGui.Add("DropDownList", "x230 yp w180 R30 Hidden", danhMucNhoRangThuThuat)
CatThangLuoi6 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", danhMucCatThangLuoi)
Toothlist6 := MyGui.Add("Edit", "x440 yp w200") ;toothlist
NoiNha6 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", luachonnoinha)

; dich vu 7
Dichvu7 := MyGui.Add("DropDownList", "x10 yp+30 R20 Sort", TatCaDichVu)
BaoHiem7 := MyGui.Add("DropDownList", "x+10 yp w50 R10 ", baohiem)
TramRang7 := MyGui.Add("DropDownList", "x230 yp w180 R30 Hidden", danhMucTramRang)
RangSu7 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", danhMucRangSu)
RangThaoLap7 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", danhMucRangThaoLap)
Abutment7 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", danhMucAbutment)
Implant7 := MyGui.Add("DropDownList", "x170 yp w50 R30 Hidden", danhMucImplant)
CaoVoi7 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", danhmuccaovoirang)
NhoRangPhauThuat7 := MyGui.Add("DropDownList", "x230 yp w200 R30 Hidden", danhMucNhoRangPhauThuat)
NhoRangThuThuat7 := MyGui.Add("DropDownList", "x230 yp w180 R30 Hidden", danhMucNhoRangThuThuat)
CatThangLuoi7 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", danhMucCatThangLuoi)
Toothlist7 := MyGui.Add("Edit", "x440 yp w200") ;toothlist
NoiNha7 := MyGui.Add("DropDownList", "x230 yp w150 R30 Hidden", luachonnoinha)

bacsi := MyGui.Add("DropDownList", "x10 yp+30 Sort r50", danhsachbacsi)
phuta := MyGui.Add("DropDownList", "x+10 yp Sort r50", danhsachdieuduong)
vongtrong := MyGui.Add("DropDownList", "x+10 yp Sort r50", danhsachdieuduong)
vongngoai := MyGui.Add("DropDownList", "x+10 yp Sort r50", danhsachdieuduong)


; ;button
MyGui.Add("Button", "x260 yp+30 w70 h30", "&OK").OnEvent("Click", Button_OK_Click)
MyGui.Add("Button", "x340 yp w70 h30", "Đón&g").OnEvent("Click", DongChuongTrinh)
MyGui.Add("Button", "x420 yp w70 h30", "&Reset").OnEvent("Click", ResetChuongTrinh)

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
MyGui.Add("Text", "x+250 yp w40 h30", Format("V.{1}", Version))

MyGui.Show("x1000 y 300 AutoSize")


DongChuongTrinh(ctrl, *){
    ExitApp
}
ResetChuongTrinh(ctrl, *){
    Reload
}