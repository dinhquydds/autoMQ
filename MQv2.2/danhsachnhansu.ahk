; thong tin nhan su: ten, 1 ma dang nhap, 2 mat khau, 3 masoID
danhsachUser := ["Quý ND","Hoàng N", "Vi HT", "Tâm NTH","Phương NT","Sâm LT","Nguyên HT","Vinh TD","Pẹc NV"]
danhsachbacsi := ["Vi HT","Sâm LT","Quý ND","Hoàng N","Tâm NTH","Phương NT","Nguyên HT","Vinh TD","Pẹc NV"]
danhsachdieuduong := ["Lan DTQ","Thảo DTT","Minh DTN","Lý DT","Tình HTH","Trang LTT","Hòa LT","Vân LTT","Nam MM","Sơn NT","Sương NT","Thắm NT","Hằng NTT","Vui NT","Lực NV","Linh PTT","Luyến VT","Quỳnh VTN","Ý VTN","Hạnh NTM"]


thongTinNhanSu := Map()

thongTinNhanSu["Quý ND"] := ["quynd", "1", "0168"] ; "Nguyễn Đình Quý"
thongTinNhanSu["Hoàng N"] := ["hoangn", "1", "0070"] ; "Nguyễn Hoàng"
thongTinNhanSu["Vi HT"] := ["viht", "123456", "0377"] ; "Hoàng Tường Vi"
thongTinNhanSu["Tâm NTH"] := ["tamnth", "123456", "0398"] ; "Nguyễn Thị Huyền Tâm"
; thongTinNhanSu["Hứa Thị Loan"] := ["0071"] ; "Hứa Thị Loan"
thongTinNhanSu["Sâm LT"] := ["samlt", "1","0413"] ; "Lưu Thị Sâm"
; thongTinNhanSu["Toàn NM"] := ["0158"] ; "Nguyễn Mạnh Toàn"
; thongTinNhanSu["Phước VPM"] := ["0158"] ; "Văn Phú Minh Phước"
thongTinNhanSu["Phương NT"] := ["phuongnt", "123456", "0425"] ; "Nguyễn Thùy Phương"
thongTinNhanSu["Nguyên HT"] := ["nguyenht", "123456", "0433"] ; "Huỳnh Thế Nguyên"
thongTinNhanSu["Vinh TD"] := ["vinhtd", "123456", "0437"] ; "Trần Đăng Vinh"
thongTinNhanSu["Pẹc NV"] := ["pecnv", "123456", "0435"] ; "Nông Văn Pẹc"

;dieu duong 
thongTinNhanSu["Lan DTQ"] := ["landtq","123456", "0077"] ; "Đỗ Thị Quỳnh Lan"
thongTinNhanSu["Thảo DTT"] := ["thaodtt","123456", "0378"] ; "Đỗ Thị Thu Thảo"
thongTinNhanSu["Minh DTN"] := ["minhdtn","123456", "0078"] ; "Đoàn Thị Ngọc Minh"
thongTinNhanSu["Lý DT"] := ["lydt","123456", "0079"] ; "Dương Thị Lý"
thongTinNhanSu["Tình HTH"] := ["tinhhth","123456", "0379"] ; "Hồ Thị Hồng Tình"
thongTinNhanSu["Trang LTT"] := ["trangltt","123456", ""] ; "Lâm Thị Thu Trang"
thongTinNhanSu["Hòa LT"] := ["hoalt","123456", "0075"] ; "Lê Thị Hòa"
thongTinNhanSu["Vân LTT"] := ["vanltt","123456", "0082"] ; "Lê Thị Thanh Vân"
thongTinNhanSu["Nam MM"] := ["nammm","123456", "0081"] ; "Mai Mạnh Nam"
thongTinNhanSu["Sơn NT"] := ["sonnt","123456", "0074"] ; "Nguyễn Thái Sơn"
thongTinNhanSu["Sương NT"] := ["suongnt","123456", "0080"] ; "Nguyễn Thị Sương"
thongTinNhanSu["Thắm NT"] := ["thamnt","123456", "0397"] ; "Nguyễn Thị Thắm"
thongTinNhanSu["Hằng NTT"] := ["hangntt","123456", "0448"] ; "Nguyễn Thị Thu Hằng"
thongTinNhanSu["Vui NT"] := ["vuint","123456",  "0072"] ; "Nguyễn Thị Vui"
thongTinNhanSu["Lực NV"] := ["lucnv","123456", ""] ; "Nguyễn Văn Lực"
thongTinNhanSu["Linh PTT"] := ["linhptt","123456", "0076"] ; "Phạm Thị Thùy Linh"
thongTinNhanSu["Luyến VT"] := ["luyenvt","123456",  "0341"] ; "Vũ Thị Luyến"
thongTinNhanSu["Quỳnh VTN"] := ["quynhvtn","123456", "0402"] ; "Vũ Thị Ngọc Quỳnh"
; le tan
thongTinNhanSu["Ý VTN"] := ["yvtn","123456",  "0088"] ; "Võ Trường Như Ý"
thongTinNhanSu["Trâm HT"] := ["tramht","123456", "0435"] ; "Trâm HT"
thongTinNhanSu["Hạnh NTM"] := ["hanhntm","123456", "0087"] ; "Ngô Thị Mỹ Hạnh"

; kiem tra thong tin
; for user in danhsachdieuduong
;     MsgBox user thongTinNhanSu[user][1] " mat khau " thongTinNhanSu[user][2] " ma so " thongTinNhanSu[user][3]