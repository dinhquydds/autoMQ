#Requires AutoHotkey v2.0
MyGui := Gui( , "Tự động tường trình RHM")
MyGui.SetFont("s10", "Arial")

; Gui, Font, s8
; Tatcadichvu = |Cạo vôi răng|Trám răng|Nội nha|Nhổ răng phẫu thuật|Nhổ răng thủ thuật|Răng sứ|Răng tháo lắp|Implant|Implant abutment|Chỉnh nha|Tẩy trắng răng|Ghép huyết tương|Ghép xương|Xquang|Bôi SDF|Tháo cầu|Tháo mão (chụp)|Cắt thắng lưỡi
; baohiem = 100|80|50
; tatcatramrang = Xoang 1|Xoang 2|Xoang 1+2|Xoang 3|Xoang 4|Xoang 5|Trám răng sữa 150K|Trám răng sữa 250K|Che tủy Calci|Che tủy MTA|Xoang 1 (gây mê)|Xoang 2 (gây mê)|Xoang 1+2 (gây mê)|Xoang 3 (gây mê)|Xoang 4 (gây mê)|Xoang 5 (gây mê)|Trám răng sữa (gây mê)|Xoang 1 (laser)|Xoang 2 (laser)|Xoang 1+2 (laser)|Xoang 3 (laser)|Xoang 4 (laser)|Xoang 5 (laser)|Trám tái tạo có chốt 400K|Trám tái tạo không chốt 200K|Trám tái tạo không chốt 400K
; tatcarangsu = 1. Sứ kim loại|2. Sứ Titanium|3. Sứ Zirconia|4. Sứ Ceramil Zolid|5. Sứ Emax|6. Sứ Lava 3M|7. Veneer Ivoclar 6 triệu|8. Veneer Lisi Press 8 triệu|9. Inlay/Onlay|Răng sứ Zirconia trên Implant|Răng sứ Ceramill Zolid trên Implant|Răng sứ Lava 3M trên Implant
; tatcarangthaolap = 1. Răng Nhật|2. Răng Mỹ|3. Răng composite|Nền nhựa dẻo bán phần|Nền nhựa dẻo toàn phần|Lưới nền hàm
; tatcaabutment = 1. Abutment thường|2. Abutment sứ Zirconia
; tatcachotsoi = Không chốt sợi|Có chốt sợi
; tatcaimplant = 1. Dio|2. Helix|3. Strauman|4. ETK
; tatcaloaicaovoi = 1. Ít (150K)|2. Trung bình (200K)|3. Nhiều (300K)
; tatcaloainhorang = Răng khôn trên 500K|Răng khôn trên 1 triệu|Răng khôn trên 1.5 triệu|Răng khôn trên 2 triệu|Nhổ răng khôn hàm trên 2.5 triệu|Răng khôn trên 3 triệu|Nhổ răng khôn hàm trên 3.5 triệu|Răng khôn dưới 500K|Răng khôn dưới 1 triệu|Răng khôn dưới 1.5 triệu|Răng khôn dưới 2 triệu|Nhổ răng khôn hàm dưới 2.5 triệu|Răng khôn dưới 3 triệu|Nhổ răng khôn hàm dưới 3.5 triệu|Nhổ răng ngầm|Nhổ răng vĩnh viễn|Nhổ răng thì 1|Nhổ răng thì 2|Nhổ răng thừa
; tatcaloainhorangthuthuat = Nhổ răng sữa|Nhổ răng lung lay|Nhổ chân răng
; luachonnoinha = Nội nha lần đầu|Nội nha lại|Nội nha lần đầu (gây mê)|Nội nha lại (gây mê)
; tatcacatthangluoi = 300K (DV)|500K|2.5M|3M

; danhsachUser = |Nguyễn Đình Quý|Nguyễn Hoàng|Hoàng Tường Vi|Nguyễn Thị Huyền Tâm|Nguyễn Thuỳ Phương|Lưu Thị Sâm|Huỳnh Thế Nguyên|Trần Đăng Vinh|Nông Văn Pẹc
; danhsachbacsi = |Hoàng Tường Vi|Lưu Thị Sâm|Nguyễn Đình Quý|Nguyễn Hoàng|Nguyễn Thị Huyền Tâm|Nguyễn Thùy Phương|Huỳnh Thế Nguyên|Trần Đăng Vinh|Nông Văn Pẹc
; danhsachdieuduong = |Đỗ Thị Quỳnh Lan|Đỗ Thị Thu Thảo|Đoàn Thị Ngọc Minh|Dương Thị Lý|Hồ Thị Hồng Tình|Lâm Thị Thu Trang|Lê Thị Hòa|Lê Thị Thanh Vân|Mai Mạnh Nam|Nguyễn Thái Sơn|Nguyễn Thị Sương|Nguyễn Thị Thắm|Nguyễn Thị Thu Hằng|Nguyễn Thị Vui|Nguyễn Văn Lực|Phạm Thị Thùy Linh|Vũ Thị Luyến|Vũ Thị Ngọc Quỳnh|Võ Trường Như Ý|Ngô Thị Mỹ Hạnh

; FileRead, Version, Version.txt

; ;Đăng nhập tự động
MyGui.Add("DropDownList", "x10 y10 R50 Sort", ["b","a"])
MyGui.Add("Button", "x+10 yp", "Đăng Nhập")
MyGui.Add("Button", "x+10 yp", "Mở X-quang")
MyGui.Add("Button", "x+10 yp", "CTM TQ TCK")

MyGui.Add("DropDownList", "x10 yp+30 R20 Sort", ["Dich vu 1", "Dich vu 2"])
MyGui.Add("DropDownList", "x+10 yp w50 R10", [100, 80, 50])
MyGui.Add("DropDownList", "x250 yp w150 R30", ["xoang 1", "xoang 2", "xoang 3"])
MyGui.Add("DropDownList", "x250 yp w150 R30", ["rang su 1", "rang su 2", "rang su 3"])
MyGui.Add("DropDownList", "x250 yp w150 R30", ["thao lap 1", "thao lap 2", "thao lap 3"])
MyGui.Add("DropDownList", "x250 yp w150 R30", ["abutment 1", "abutment 2", "abutment 3"])
MyGui.Add("DropDownList", "x250 yp w150 R30", ["implant 1", "implant 2", "implant 3"])
MyGui.Add("DropDownList", "x250 yp w150 R30", ["cao voi 1", "cao voi 2", "cao voi 3"])
MyGui.Add("DropDownList", "x250 yp w150 R30", ["nho rang 1", "nho rang 2", "nho rang 3"])
MyGui.Add("DropDownList", "x250 yp w150 R30", ["nho rang thu thuat 1", "nho rang thu thuat 2", "nho rang thu thuat 3"])
MyGui.Add("DropDownList", "x250 yp w150 R30", ["cat thang luoi 1", "cat thang luoi 2", "cat thang luoi 3"])
MyGui.Add("Edit", "x450 yp w160")
MyGui.Add("DropDownList", "x250 yp w150 R30", ["noi nha 1", "noi nha 2", "noi nha 3"])


MyGui.Add("DropDownList", "x10 yp+30 Sort r50 vbacsi", ["danh sach bac si"])
MyGui.Add("DropDownList", "x+10 yp Sort r50 vphuta", ["danh sach phu ta"])
MyGui.Add("DropDownList", "x+10 yp Sort r50 vvongtrong", ["danh sach vong trong"])
MyGui.Add("DropDownList", "x+10 yp Sort r50 vvongngoai", ["danh sach vong ngoai"])

; ;button
MyGui.Add("Button", "x260 yp+30 w70 h30", "&OK")
MyGui.Add("Button", "x340 yp w70 h30", "Đón&g")
MyGui.Add("Button", "x420 yp w70 h30", "Reset")

; ;thời gian
MyGui.Add("Text", "x12 yp w130 h30", "Giờ chỉ định")
MyGui.Add("Edit", "Number x150 yp w40 h20")
MyGui.Add("UpDown", "yp vStartHour Range0-24")
MyGui.Add("Edit", "Number x200 yp w40 h20")
MyGui.Add("UpDown", "yp vStartMinute Range0-60")

MyGui.Add("Text", "x12 yp+30 w130 h30", "Giờ tường trình")
MyGui.Add("Edit", "Number x150 yp w40 h20")
MyGui.Add("UpDown", "yp vGiotuongtrinh Range0-24")
MyGui.Add("Edit", "Number x200 yp w40 h20")
MyGui.Add("UpDown", "yp vphuttuongtrinh Range0-60")

MyGui.Add("Text", "x+250 yp w40 h30", "V.001")

MyGui.Show("x1000 y 300 AutoSize")