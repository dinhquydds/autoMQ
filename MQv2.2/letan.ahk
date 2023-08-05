#SingleInstance Force

LetanGui := Gui(,"Tự động nhập tường trình RHM")
LetanGui.SetFont("s10", "Arial")


UserLetan := ["Trâm HT","Hạnh NTM","Ý VTN"]

;Đăng nhập tự động
LetanGui.Add("DropDownList", "x10 y10 R10 Sort", Userletan)
LetanGui.Add("Button", "x+10 yp" , "Đăng Nhập")
LetanGui.Add("Button", "x+10 yp" , "Đăng ký khám bệnh")
LetanGui.Add("Button", "x10 yp+30", "Mở 7 phòng khám")
LetanGui.Add("Button", "x+10 yp", "Mở X Quang")
LetanGui.Add("Button", "x+10 yp", "Nhập công khám")

LetanGui.Add("Button", "x10 yp+30", "Quản lý Dược")
LetanGui.Add("Button", "xp+100 yp", "Thu Viện Phí")
LetanGui.Add("Button", "x+10 yp", "Reset").OnEvent("Click", (*) => ExitApp)



; Generated using SmartGUI Creator 4.0
LetanGui.Show("x1000 y300 AutoSize")





; #Include, danhsachnhansu.ahk
; #Include, function.ahk
; #Include, ButtonDangNhap.ahk
; #Include, ButtonDangKyKhamBenh.ahk
; #Include, ButtonMo7phongkham.ahk
; #Include, ButtonDangNhapLetan.ahk
; #Include, ButtonNhapCongKham.ahk



; ^`::Reload
; ^"{Esc}":
; {
;     ExitApp

; }

