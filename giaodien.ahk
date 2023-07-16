Gui, Font, s8
Tatcadichvu = |Cạo vôi răng|Trám răng|Nội nha|Nhổ răng phẫu thuật|Nhổ răng thủ thuật|Răng sứ|Răng tháo lắp|Implant|Implant abutment|Chỉnh nha|Tẩy trắng răng|Ghép huyết tương|Ghép xương|Xquang|Bôi SDF|Tháo cầu|Tháo mão (chụp)|Cắt thắng lưỡi
baohiem = 100|80|50
tatcatramrang = Xoang 1|Xoang 2|Xoang 1+2|Xoang 3|Xoang 4|Xoang 5|Trám răng sữa 150K|Trám răng sữa 250K|Che tủy Calci|Che tủy MTA|Xoang 1 (gây mê)|Xoang 2 (gây mê)|Xoang 1+2 (gây mê)|Xoang 3 (gây mê)|Xoang 4 (gây mê)|Xoang 5 (gây mê)|Trám răng sữa (gây mê)|Xoang 1 (laser)|Xoang 2 (laser)|Xoang 1+2 (laser)|Xoang 3 (laser)|Xoang 4 (laser)|Xoang 5 (laser)|Trám tái tạo có chốt 400K|Trám tái tạo không chốt 200K|Trám tái tạo không chốt 400K
tatcarangsu = 1. Sứ kim loại|2. Sứ Titanium|3. Sứ Zirconia|4. Sứ Ceramil Zolid|5. Sứ Emax|6. Sứ Lava 3M|7. Veneer Ivoclar 6 triệu|8. Veneer Lisi Press 8 triệu|9. Inlay/Onlay|Răng sứ Zirconia trên Implant|Răng sứ Ceramill Zolid trên Implant|Răng sứ Lava 3M trên Implant
tatcarangthaolap = 1. Răng Nhật|2. Răng Mỹ|3. Răng composite|Nền nhựa dẻo bán phần|Nền nhựa dẻo toàn phần|Lưới nền hàm
tatcaabutment = 1. Abutment thường|2. Abutment sứ Zirconia
tatcachotsoi = Không chốt sợi|Có chốt sợi
tatcaimplant = 1. Dio|2. Helix|3. Strauman|4. ETK
tatcaloaicaovoi = 1. Ít (150K)|2. Trung bình (200K)|3. Nhiều (300K)
tatcaloainhorang = Răng khôn trên 500K|Răng khôn trên 1 triệu|Răng khôn trên 1.5 triệu|Răng khôn trên 2 triệu|Nhổ răng khôn hàm trên 2.5 triệu|Răng khôn trên 3 triệu|Nhổ răng khôn hàm trên 3.5 triệu|Răng khôn dưới 500K|Răng khôn dưới 1 triệu|Răng khôn dưới 1.5 triệu|Răng khôn dưới 2 triệu|Nhổ răng khôn hàm dưới 2.5 triệu|Răng khôn dưới 3 triệu|Nhổ răng khôn hàm dưới 3.5 triệu|Nhổ răng ngầm|Nhổ răng vĩnh viễn|Nhổ răng thì 1|Nhổ răng thì 2|Nhổ răng thừa
tatcaloainhorangthuthuat = Nhổ răng sữa|Nhổ răng lung lay|Nhổ chân răng
luachonnoinha = Nội nha lần đầu|Nội nha lại|Nội nha lần đầu (gây mê)|Nội nha lại (gây mê)
tatcacatthangluoi = 300K (DV)|500K|2.5M|3M

danhsachUser = |Nguyễn Đình Quý|Nguyễn Hoàng|Hoàng Tường Vi|Nguyễn Thị Huyền Tâm|Nguyễn Thuỳ Phương|Lưu Thị Sâm|Huỳnh Thế Nguyên|Trần Đăng Vinh|Nông Văn Pẹc
danhsachbacsi = |Hoàng Tường Vi|Lưu Thị Sâm|Nguyễn Đình Quý|Nguyễn Hoàng|Nguyễn Thị Huyền Tâm|Nguyễn Thùy Phương|Huỳnh Thế Nguyên|Trần Đăng Vinh|Nông Văn Pẹc
danhsachdieuduong = |Đỗ Thị Quỳnh Lan|Đỗ Thị Thu Thảo|Đoàn Thị Ngọc Minh|Dương Thị Lý|Hồ Thị Hồng Tình|Lâm Thị Thu Trang|Lê Thị Hòa|Lê Thị Thanh Vân|Mai Mạnh Nam|Nguyễn Thái Sơn|Nguyễn Thị Sương|Nguyễn Thị Thắm|Nguyễn Thị Thu Hằng|Nguyễn Thị Vui|Nguyễn Văn Lực|Phạm Thị Thùy Linh|Vũ Thị Luyến|Vũ Thị Ngọc Quỳnh|Võ Trường Như Ý|Ngô Thị Mỹ Hạnh|Trần Thị Lưu|Hoàng Thị Tuyết Mai

FileRead, Version, Version.txt

;Đăng nhập tự động
Gui, Add, DropDownList, x10 y10  h10 R50 Sort vUser, %danhsachUser%
Gui, Add, Button, x+10 yp w70 h20 , Đăng Nhập
Gui, Add, Button, x+10 yp w70 h20 , Mở X quang
Gui, Add, Button, x+10 yp h20 , Mở 7 phòng khám
Gui, Add, Button, x+10 yp h20 , CTM TQ TCK

; first line
Loop, 7
{
Gui, Add, DropDownList, x10 yp+30 h10 R20 Sort gDichvu%A_Index% vDichvu%A_Index%, %Tatcadichvu%
Gui, Add, DropDownList, x+10 yp w50 h10 R10 Hidden vphantrambaohiem%A_Index%, %baohiem%
Gui, Add, DropDownList, x200 yp w150 h10 R30 Hidden vloaixoangtram%A_Index%, %tatcatramrang%
Gui, Add, DropDownList, x140 yp w140 h10 R20 Hidden vloairangsu%A_Index%, %tatcarangsu%
Gui, Add, DropDownList, x140 yp w140 h10 R20 Hidden vloairangthaolap%A_Index%, %tatcarangthaolap%
Gui, Add, DropDownList, x210 yp w140 h10 R20 Hidden vloaiabutment%A_Index%, %tatcaabutment%
Gui, Add, DropDownList, x140 yp w60 h10 R20 Hidden  vloaiimplant%A_Index%, %tatcaimplant%
Gui, Add, DropDownList, x200 yp w140 h10 R20 Hidden vloaicaovoi%A_Index%, %tatcaloaicaovoi%
Gui, Add, DropDownList, x200 yp w140 h10 R20 Hidden vloainhorang%A_Index%, %tatcaloainhorang%
Gui, Add, DropDownList, x200 yp w140 h10 R20 Hidden vloainhorangthuthuat%A_Index%, %tatcaloainhorangthuthuat%
Gui, Add, DropDownList, x210 yp w140 h10 R20 Hidden vcatthangluoi%A_Index%, %tatcacatthangluoi%
Gui, Add, Edit, x360 yp w160 h20 vToothlist%A_Index%,
Gui, Add, DropDownList, x200 yp w140 h10 R20 Hidden vloainoinha%A_Index%, %luachonnoinha%

}

Gui, Add, DropDownList, x10 yp+30 Sort r50 gbacsi vbacsi, %danhsachbacsi%
Gui, Add, DropDownList, x+10 yp Sort r50 vphuta, %danhsachdieuduong%
Gui, Add, DropDownList, x+10 yp Sort choose23 r50 vvongtrong, %danhsachdieuduong%
Gui, Add, DropDownList, x+10 yp Sort choose5 r50 vvongngoai, %danhsachdieuduong%

;button
Gui, Add, Button, x260 yp+30 w70 h40 , OK
Gui, Add, Button, x340 yp w70 h40 , Huỷ
Gui, Add, Button, x420 yp w70 h40 , Reset

;thời gian
Gui, Add, Text, x12 yp w130 h30 , Giờ chỉ định
Gui, Add, Edit, Number x150 yp w40 h20
Gui, Add, UpDown, yp vStartHour Range0-24
Gui, Add, Edit, Number x200 yp w40 h20
Gui, Add, UpDown, vStartMinute Range0-60

Gui, Add, Text, x12 yp+30 w130 h30 , Giờ Tường trình
Gui, Add, Edit, Number x150 yp w40 h20
Gui, Add, UpDown, vgiotuongtrinh Range0-24
Gui, Add, Edit, Number x200 yp w40 h20
Gui, Add, UpDown, vphuttuongtrinh Range0-60

Gui, Add, Text, x155 yp+30 w40 h30 , Giờ
Gui, Add, Text, x205 yp w40 h30 , Phút

Gui, Add, DropDownList, x10 yp+10 choose1 Sort r50 vdexuatdieutri gdexuatdieutri, Chọn đề xuất điều trị|Trám răng|Nội nha|Răng sứ|Nhổ răng vĩnh viễn|Nhổ răng khôn|Nhổ răng lung lay

Gui, Add, Text, x+250 yp w40 h30 , V.%Version%


; Generated using SmartGUI Creator 4.0
Gui, Show, x1000 y300 Autosize, Tự động nhập tường trình RHM
Return

ButtonHuỷ:
GuiClose:
ExitApp

ButtonReset:
Reload
Return



