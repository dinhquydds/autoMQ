button_dangnhap_click(ctrl, *){
	tendangnhap := thongTinNhanSu[User.Text][1]
	matkhau := thongTinNhanSu[User.Text][2]
	; Đóng cửa sổ có sẵn
	Loop 3
		{
		If WinExist(tenbenhvien)
			WinClose
		Sleep 500
		}
	try
		Run("MQHIS.exe", "D:\MQSOFT\MQHIS\bin\Debug")
	catch
		MsgBox "File does not exist."
	if WinWait(tenbenhvien, , 30)
		{
			if  WinWait("ĐĂNG NHẬP HỆ THỐNG")
				WinActivate
		}
	else
		{
			MsgBox "Không tìm thấy file"
			Reload
		}
	Sleep 100
	dangnhapMQ(tendangnhap, matkhau)
	WinActivate(tenbenhvien)
}

