listIDbacsi := {"Nguyễn Đình Quý":"0168"
, "Nguyễn Hoàng": "0070"
, "Hoàng Tường Vi":"0377"
, "Nguyễn Thị Huyền Tâm":"0398"
, "Hứa Thị Loan":"0071"
, "Lưu Thị Sâm":"0413"
, "Nguyễn Mạnh Toàn":"0158"
, "Văn Phú Minh Phước":"0158"
, "Nguyễn Thùy Phương":"0425"
, "Huỳnh Thế Nguyên":"0433"
, "Trần Đăng Vinh":"0437"
, "Nông Văn Pẹc":"0435"}

listIDdieuduong := {"Đỗ Thị Quỳnh Lan":"0077"
, "Đỗ Thị Thu Thảo":"0378"
, "Đoàn Thị Ngọc Minh":"0078"
, "Dương Thị Lý":"0079"
, "Hồ Thị Hồng Tình":"0379"
, "Lâm Thị Thu Trang":""
, "Lê Thị Hòa":"0075"
, "Lê Thị Thanh Vân":"0082"
, "Mai Mạnh Nam":"0081"
, "Ngô Thị Mỹ Hạnh":"0087"
, "Nguyễn Thái Sơn":"0074"
, "Nguyễn Thị Sương":"0080"
, "Nguyễn Thị Thắm":"0397"
, "Nguyễn Thị Thu Hằng":"0448"
, "Nguyễn Thị Vui": "0072"
, "Nguyễn Văn Lực":""
, "Phạm Thị Thùy Linh":"0076"
, "Võ Trường Như Ý": "0088"
, "Vũ Thị Luyến": "0341"
, "Vũ Thị Ngọc Quỳnh":"0402"
, "Trần Thị Lưu":"0415"
, "Hoàng Thị Tuyết Mai":"0418" }

CapBSDD := {"Nguyễn Đình Quý":"Dương Thị Lý"
, "Quách Hữu Hợi":"Vũ Thị Ngọc Quỳnh"
, "Vũ Thị Oanh":"Nguyễn Thị Vui"
, "Hoàng Trọng Danh":"Lê Thị Thanh Vân"
, "Nguyễn Hoàng": "Nguyễn Thái Sơn"
, "Nguyễn Thị Ngọc Trang":"Trần Thị Hoài Phương"
, "Lê Thiện Phú":"Vũ Thị Luyến"
, "Hoàng Tường Vi":"Trần Thị Lưu"
, "Cao Mạnh Cường":"Hồ Thị Hồng Tình"
, "Nguyễn Thị Huyền Tâm":"Đỗ Thị Thu Thảo"
, "Hứa Thị Loan":"Vũ Thị Ngọc Quỳnh"
, "Lưu Thị Sâm":"Hoàng Thị Tuyết Mai"
, "Nguyễn Mạnh Toàn":"Vũ Thị Ngọc Quỳnh"
, "Văn Phú Minh Phước":"Vũ Thị Ngọc Quỳnh"}
; |Đỗ Thị Quỳnh Lan|Đỗ Thị Thu Thảo|Đỗ Thị Trâm|Đoàn Thị Ngọc Minh|Dương Thị Lý|||Lâm Thị Thu Trang|Lê Thị Hòa||Mai Mạnh Nam||Nguyễn Thái Thảo|Nguyễn Thị Sương|Nguyễn Thị Thắm|Nguyễn Thị Thu Hằng||Nguyễn Văn Lực|Phạm Thị Thanh|Phạm Thị Thùy Linh|Phan Như Phương||||Y Blin Mlô|Võ Trường Như Ý|Ngô Thị Mỹ Hạnh|Nguyễn Thị Kim Cúc

thongtindangnhap(User){
if (User = "Nguyễn Đình Quý")
	return ["quynd", "1","0168"]
if (User = "Nguyễn Hoàng")
	return ["hoangn", "1", "0070"]
if (User = "Hoàng Tường Vi")
	return ["viht", "123456", "0377"]
if (User = "Nguyễn Thị Huyền Tâm")
	return ["tamnth", "123456", "0398"]
if (User = "Nguyễn Thuỳ Phương")
	return ["phuongnt", "123456", "0425"]
if (User = "Lưu Thị Sâm")
	return ["samlt", "1", "0413"]
if (User = "Huỳnh Thế Nguyên")
	return ["nguyenht", "123456", "0433"]
if (User = "Trần Đăng Vinh")
	return ["vinhtd", "123456", "0437"]
if (User = "Nông Văn Pẹc")
	return ["pecnv", "123456", "0435"]
if (User = "Hạnh NTM")
	return ["hanhntm", "2", "0435"]
if (User = "Ý VTN")
	return ["yvtn", "3", "0435"]
if (User = "Trâm HT")
	return ["tramht", "123456", "0435"]
}

