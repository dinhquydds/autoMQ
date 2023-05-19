#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force
SetKeyDelay, 0
SetTitleMatchMode, 2

; tu dong dang nhap cho le tan

Gui, Font, s8


danhsachUser = Trâm HT|Hạnh NTM|Ý VTN

danhsachbacsi = Quách Hữu Hợi|Nguyễn Đình Quý|Hoàng Trọng Danh|Nguyễn Hoàng|Vũ Thị Oanh|Nguyễn Thị Ngọc Trang|Lê Thiện Phú|Hoàng Tường Vi|Cao Mạnh Cường|Nguyễn Thị Huyền Tâm
danhsachdieuduong = Hồ Thị Nguyệt|Y Blin Mlô|Nguyễn Thị Kim Cúc|Dương Thị Lý|Lê Thị Thanh Vân|Nguyễn Thái Sơn|Nguyễn Thị Vui|Đoàn Thị Ngọc Minh|Ngô Thị Mỹ Hạnh|Trần Thị Hoài Phương|Vũ Thị Luyến|Nguyễn Thị Kim Ngân|Võ Trường Như Ý|Đỗ Thị Thu Thảo|Phạm Thị Thanh|Hồ Thị Hồng Tình

listIDbacsi := {"Nguyễn Đình Quý":  "0168"
, "Quách Hữu Hợi":"0158"
, "Vũ Thị Oanh":"0337" 
, "Hoàng Trọng Danh":"0069"
, "Nguyễn Hoàng": "0070"
, "Nguyễn Thị Ngọc Trang":"0315"
, "Lê Thiện Phú":"0351"
, "Hoàng Tường Vi":"0377"
, "Cao Mạnh Cường":"0399"
, "Nguyễn Thị Huyền Tâm":"0398"}

listIDdieuduong := {"Lê Thị Thanh Vân":"0082"
, "Trần Thị Hoài Phương": "0073"
, "Hồ Thị Nguyệt":"0083"
, "Y Blin Mlô":"0085" 
, "Nguyễn Thị Kim Cúc":"0091"
, "Dương Thị Lý":"0079"
, "Nguyễn Thái Sơn":"0074"
, "Nguyễn Thị Vui": "0072"
, "Đoàn Thị Ngọc Minh":"0078"
, "Ngô Thị Mỹ Hạnh":"0087" 
, "Vũ Thị Luyến": "0341"
, "Võ Trường Như Ý": "0088"
, "Nguyễn Thị Kim Ngân": "0232"
, "Đỗ Thị Thu Thảo":"0378"
, "Phạm Thị Thanh":"0390"
, "Hồ Thị Hồng Tình":"0379"}


;Đăng nhập tự động
Gui, Add, DropDownList, x10 y10 w100 h10 R10 Sort choose15 vUser, %danhsachUser%
Gui, Add, Button, x+10 yp w70 h20 , Đăng Nhập
Gui, Add, Button, x+10 yp h20 , Đăng ký khám bệnh
Gui, Add, Button, x10 yp+30  h20 , Mở 7 phòng khám
Gui, Add, Button, x+10 yp w70 h20 , Mở X Quang
Gui, Add, Button, x+10 yp h20 , Nhập công khám

Gui, Add, Button, x10 yp+30 w90 h20 , Quản lý Dược
Gui, Add, Button, xp+100 yp w70 h20 , Thu Viện Phí
Gui, Add, Button, x+10 yp h20 , Reset



; Generated using SmartGUI Creator 4.0
Gui, Show, x1000 y300 h100 w320, Tự động nhập tường trình RHM
Return



ButtonHuỷ:
GuiClose:
ExitApp

ButtonReset: 
Reload
Return
#Include, danhsachnhansu.ahk
#Include, function.ahk
#Include, ButtonDangNhap.ahk
#Include, ButtonDangKyKhamBenh.ahk
#Include, ButtonMo7phongkham.ahk
#Include, ButtonDangNhapLetan.ahk


^`::Reload
^Esc:ExitApp

