button_dangnhap_click(ctrl, *){
	try {
		tendangnhap := thongTinNhanSu[User.Text][1]
		matkhau := thongTinNhanSu[User.Text][2]
	} catch Error as e {
		MyGui.Show
		return	
	}
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
	WinWaitActiveWindow("ĐĂNG NHẬP HỆ THỐNG")
	dangnhapMQ(tendangnhap, matkhau)
	WinWaitActiveWindow(tenbenhvien)
}

