#Include danhsachnhansu.ahk
MyGui := Gui()

btn_DangNhap := MyGui.Add("Button", ,"Đăng nhập")
btn_DangNhap.OnEvent("Click", btn_DangNhap_click)

MyGui.Show()
btn_DangNhap_click(ctrl, *){
	tendangnhap := thongTinNhanSu["Quý ND"][1]
	matkhau := thongTinNhanSu["Quý ND"][2]
	; Đóng cửa sổ có sẵn
	Loop 3
		{
		If WinExist("BỆNH VIỆN ĐẠI HỌC Y DƯỢC BUÔN MA THUỘT")
			WinClose
		Sleep 500
		}
	Run("MQHIS.exe", "D:\MQSOFT\MQHIS\bin\Debug")
	WinWait("BỆNH VIỆN ĐẠI HỌC Y DƯỢC BUÔN MA THUỘT")
	WinWaitActive("ĐĂNG NHẬP HỆ THỐNG")
	Sleep 100
	dangnhapMQ(tendangnhap, matkhau)
	WinActivate("BỆNH VIỆN ĐẠI HỌC Y DƯỢC BUÔN MA THUỘT")
}

dangnhapMQ(tendangnhap, matkhau)
{
    Send tendangnhap
    Sleep 100
    Send "{tab}"
    Sleep 100
    Send matkhau
    Sleep 100
    Send "{tab}"
    ControlClick("Đăng nhập", "ĐĂNG NHẬP HỆ THỐNG")
}

