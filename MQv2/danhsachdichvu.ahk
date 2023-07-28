;Tên dịch vụ, ICD, mã chỉ định, mã tường trình, tên tường trình, vô cảm, thời gian làm thủ thuật
KhongCanNhapSoRang := "Cạo vôi răng ít, Cạo vôi răng trung bình, Cạo vôi răng nhiều, Cắt thắng lưỡi 300K, Cắt thắng lưỡi 500K, Cắt thắng lưỡi 2.5M, Cắt thắng lưỡi 3M, Tẩy trắng răng, Nền nhựa dẻo bán phần, Nền nhựa dẻo toàn phần, Lưới nền hàm"
danhMucNoiNhaRangSua := "Điều trị tủy răng sữa một chân, Điều trị tủy răng sữa nhiều chân, Điều trị tủy răng sữa một chân gây mê Điều trị tủy răng sữa nhiều chân gây mê"

danhmuccaovoirang := ["Cạo vôi răng ít","Cạo vôi răng một hàm", "Cạo vôi răng trung bình", "Cạo vôi răng nhiều"]
danhMucCatThangLuoi := ["Cắt thắng lưỡi 300K", "Cắt thắng lưỡi 500K", "Cắt thắng lưỡi 2.5M", "Cắt thắng lưỡi 3M"]
danhMucImplant := ["Implant Dio", "Implant Helix", "Implant Strauman", "Implant ETK"]
danhMucAbutment := [["Abutment Dio", "Abutment Dio Zirconia"], ["Abutment Helix", "Abutment Helix Zirconia"], ["Abutment Strauman", "Abutment Strauman Zirconia"], ["Abutment ETK",""]]
danhMucNhoRangPhauThuat := ["Nhổ răng khôn hàm trên 500K", "Nhổ răng khôn hàm trên 1M", "Nhổ răng khôn hàm trên 1.5M", "Nhổ răng khôn hàm trên 2M", "Nhổ răng khôn hàm trên 2.5M", "Nhổ răng khôn hàm trên 3M", "Nhổ răng khôn hàm trên 3.5M", "Nhổ răng khôn hàm dưới 500K", "Nhổ răng khôn hàm dưới 1M", "Nhổ răng khôn hàm dưới 1.5M", "Nhổ răng khôn hàm dưới 2M", "Nhổ răng khôn hàm dưới 2.5M", "Nhổ răng khôn hàm dưới 3M", "Nhổ răng khôn hàm dưới 3.5M", "Nhổ răng ngầm", "Nhổ răng vĩnh viễn", "Nhổ răng thì 1", "Nhổ răng thì 2", "Nhổ răng thừa"]
danhMucNhoRangThuThuat := ["Nhổ răng sữa", "Nhổ răng lung lay", "Nhổ chân răng"]
danhMucRangSu := ["Sứ kim loại", "Sứ Titanium", "Sứ Zirconia", "Sứ Ceramil Zolid", "Sứ Emax", "Sứ Lava 3M", "Veneer Ivoclar 6 triệu", "Veneer Lisi Press 8 triệu", "Inlay/Onlay", "Răng sứ Zirconia trên Implant", "Răng sứ Ceramill Zolid trên Implant", "Răng sứ Lava 3M trên Implant"]
danhMucRangThaoLap := ["Răng tháo lắp Nhật", "Răng tháo lắp Mỹ", "Răng tháo lắp composite","Nền nhựa dẻo bán phần", "Nền nhựa dẻo toàn phần", "Lưới nền hàm"]
danhMucTramRang := ["Trám răng xoang 1", "Trám răng xoang 2", "Trám răng xoang 1+2", "Trám răng xoang 3", "Trám răng xoang 4", "Trám răng xoang 5", "Trám răng sữa 150K", "Trám răng sữa 250K", "Che tủy Calci", "Che tủy MTA", "Trám răng xoang 1 gây mê", "Trám răng xoang 2 gây mê","Trám răng xoang 1+2 gây mê", "Trám răng xoang 3 gây mê", "Trám răng xoang 4 gây mê", "Trám răng sữa gây mê", "Trám răng xoang 1 laser", "Trám răng xoang 2 laser", "Trám răng xoang 1+2 laser", "Trám răng xoang 3 laser", "Trám răng xoang 4 laser", "Trám răng xoang 5 laser", "Trám tái tạo có chốt 400K", "Trám tái tạo không chốt 200K", "Trám tái tạo không chốt 400K"]

danhMucDichVu := Map()
danhMucDichVu["Bôi SDF"] := ["K02", "PHO010", "T05147", "boisdf", "00",1,2 ]

danhMucDichVu["Cạo vôi răng ít"] := ["K03.6", "16.43.1", "T05407", "caovoirang", "00", 10, 20]
danhMucDichVu["Cạo vôi răng một hàm"] := ["K03.6", "16.43.2", "T05409", "caovoirang", "00", 10, 20]
danhMucDichVu["Cạo vôi răng trung bình"] := ["K03.6", "14.43.3", "T05411", "caovoirang", "00", 15, 25]
danhMucDichVu["Cạo vôi răng nhiều"] := ["K03.6", "16.43.4", "T05443", "caovoirang", "00", 15, 30]

danhMucDichVu["Cắt thắng lưỡi 300K"] := ["Q38.1", "3.2174", "P14001", "catthangluoi", "03", 5, 10]
danhMucDichVu["Cắt thắng lưỡi 500K"] := ["Q38.1", "15.209", "P14001", "catthangluoi", "03", 5, 10]
danhMucDichVu["Cắt thắng lưỡi 2.5M"] := ["Q38.1", "16.216.2", "P14001", "catthangluoi", "03", 5, 10]
danhMucDichVu["Cắt thắng lưỡi 3M"] := ["Q38.1", "16.216.1", "P14001", "catthangluoi", "03", 5, 10]

danhMucDichVu["Ghép huyết tương"] := ["K01", "HT01", "T05421", "ghephuyettuong", "03", 1, 2]

danhMucDichVu["Ghép xương"] := ["K08.1", "16.18", "P06055", "ghepxuong", "03", 1, 2]

danhMucDichVu["Implant Dio"] := ["K08.1", "16.6.8", "P06011", "implant", "03", 5, 10]
danhMucDichVu["Implant Helix"] := ["K08.1", "16.6.6", "P06015", "implant", "03", 5, 10]
danhMucDichVu["Implant Strauman"] := ["K08.1", "16.6.4", "P06019", "implant", "03", 5, 10]
danhMucDichVu["Implant ETK"] := ["K08.1", "16.6.1", "P06117", "implant", "03", 5, 10]

danhMucDichVu["Abutment Dio"] := ["K08.1", "ABU001", "T05135", "abutment", "03", 1, 2]
danhMucDichVu["Abutment Dio Zirconia"] := ["K08.1", "ABU004", "T05141", "abutment", "03", 1, 2]
danhMucDichVu["Abutment Helix"] := ["K08.1", "ABU002", "T05137", "abutment", "03", 1, 2]
danhMucDichVu["Abutment Helix Zirconia"] := ["K08.1", "ABU005", "T05143", "abutment", "03", 1, 2]
danhMucDichVu["Abutment Strauman"] := ["K08.1", "ABU003", "T05139", "abutment", "03", 1, 2]
danhMucDichVu["Abutment Strauman Zirconia"] := ["K08.1", "ABU006", "T05145", "abutment", "03", 1, 2]
danhMucDichVu["Abutment ETK"] := ["K08.1", "ABUT02.1", "T05579", "abutment", "03", 1, 2]
danhMucDichVu["Abutment ETK Zirconia"] := ["K08.1", "ABUT02.1", "T05579", "abutment", "03", 1, 2]

danhMucDichVu["Nhổ răng khôn hàm trên 500K"] := ["K01", "16.199.1.1", "T05275", "nhorangkhontren", "03", 5, 10]
danhMucDichVu["Nhổ răng khôn hàm trên 1M"] := ["K01", "16.199.1", "P06239", "nhorangkhontren", "03", 5, 15]
danhMucDichVu["Nhổ răng khôn hàm trên 1.5M"] := ["K01", "PHAU010", "P06283", "nhorangkhontrencatthan", "03", 10, 25]
danhMucDichVu["Nhổ răng khôn hàm trên 2M"] := ["K01", "16.201.4", "P06261", "nhorangkhontrencatthan", "03", 10, 25]
danhMucDichVu["Nhổ răng khôn hàm trên 2.5M"] := ["K01", "PHAU901", "P06269", "nhorangkhontrencatthanchiachan", "03", 10, 25]
danhMucDichVu["Nhổ răng khôn hàm trên 3M"] := ["K01", "16.198.1", "T05427", "nhorangngam", "03", 10, 25]
danhMucDichVu["Nhổ răng khôn hàm trên 3.5M"] := ["K01", "PHAU910", "P06269", "nhorangkhontrencatthanchiachan", "03", 10, 25]
danhMucDichVu["Nhổ răng khôn hàm dưới 500K"] := ["K01", "PHAU112", "T05277", "nhorangkhonduoi", "17", 10, 25]
danhMucDichVu["Nhổ răng khôn hàm dưới 1M"] := ["K01", "16.200.1.1", "T05277", "nhorangkhonduoi", "17", 10, 25]
danhMucDichVu["Nhổ răng khôn hàm dưới 1.5M"] := ["K01", "16.200.9", "P05015", "nhorangkhonduoi", "17", 10, 25]
danhMucDichVu["Nhổ răng khôn hàm dưới 2M"] := ["K01", "16.201.4", "P06261", "nhorangkhonduoi", "17", 10, 25]
danhMucDichVu["Nhổ răng khôn hàm dưới 2.5M"] := ["K01", "PHAU901", "P06269", "nhorangkhonduoicatthanchiachan", "17", 10, 25]
danhMucDichVu["Nhổ răng khôn hàm dưới 3M"] := ["K01", "16.198.1", "T05427", "nhorangngam", "17",]
danhMucDichVu["Nhổ răng khôn hàm dưới 3.5M"] := ["K01", "PHAU901", "P06269", "nhorangkhonduoicatthanchiachan", "17", 10, 25]
danhMucDichVu["Nhổ răng ngầm"] := ["K01", "16.198.1", "T05427", "nhorangngam", "03", 10, 25]
danhMucDichVu["Nhổ răng vĩnh viễn"] := ["K02.4", "16.203", "P06281", "nhorangvinhvien", "03", 10, 25]
danhMucDichVu["Nhổ răng thì 1"] := ["K01", "16.200.1", "P06125", "nhorangthi1", "17", 10, 25]
danhMucDichVu["Nhổ răng thì 2"] := ["K01", "16.200.2", "P06123", "nhorangthi2", "17", 10, 25]
danhMucDichVu["Nhổ răng thừa"] := ["K00.6", "16.206.2", "T05431", "nhorangthua", "03", 10, 25]

danhMucDichVu["Nhổ răng lung lay"] := ["K05.3", "16.204", "T05017", "nhoranglunglay", "03", 1, 2]
danhMucDichVu["Nhổ chân răng"] := ["K02.4", "16.205.2", "T05157", "nhochanrang", "03", 1, 2]
danhMucDichVu["Nhổ răng sữa"] := ["K00.7", "16.238", "T05009", "nhorangsua", "03", 1, 2]

danhMucDichVu["Điều trị tủy răng số 1"] := ["K04", "16.44.3", "P11655248", "noinha", "03", 15, 45]
danhMucDichVu["Điều trị tủy răng số 2"] := ["K04", "16.44.3.1", "P11655248", "noinha", "03", 15, 45]
danhMucDichVu["Điều trị tủy răng số 3"] := ["K04", "16.44.3.2", "P11655248", "noinha", "03", 15, 45]
danhMucDichVu["Điều trị tủy răng số 4"] := ["K04", "16.44.1", "P11655248", "noinha", "03", 15, 45]
danhMucDichVu["Điều trị tủy răng số 5"] := ["K04", "16.44.1.1", "P11655248", "noinha", "03", 15, 45]
danhMucDichVu["Điều trị tủy răng số 6 hàm trên"] := ["K04", "16.44.4", "P11655248", "noinha", "03", 25, 45]
danhMucDichVu["Điều trị tủy răng số 6 hàm dưới"] := ["K04", "16.44.2", "P11655248", "noinhagaytevung", "17", 25, 45]
danhMucDichVu["Điều trị tủy răng số 7 hàm trên"] := ["K04", "16.44.4.1", "P11655248", "noinha", "03", 25, 45]
danhMucDichVu["Điều trị tủy răng số 7 hàm dưới"] := ["K04", "16.44.2.1", "P11655248", "noinhagaytevung", "17", 25, 45]
danhMucDichVu["Điều trị tủy răng sữa một chân"] := ["K04", "16.232.1", "T05401", "noinharangsua", "03", 25, 45]
danhMucDichVu["Điều trị tủy răng sữa nhiều chân"] := ["K04", "16.232.2", "T05399", "noinharangsua", "03", 25, 45]


danhMucDichVu["Điều trị tủy răng số 1 gây mê"] := ["K04", "RHM8", "P11655248", "noinhagayme", "03", 15, 25]
danhMucDichVu["Điều trị tủy răng số 2 gây mê"] := ["K04", "RHM10", "P11655248", "noinhagayme", "03", 15, 25]
danhMucDichVu["Điều trị tủy răng số 3 gây mê"] := ["K04", "RHM12", "P11655248", "noinhagayme", "03", 15, 25]
danhMucDichVu["Điều trị tủy răng số 4 gây mê"] := ["K04", "RHM14", "P11655248", "noinhagayme", "03", 15, 25]
danhMucDichVu["Điều trị tủy răng số 5 gây mê"] := ["K04", "RHM16", "P11655248", "noinhagayme", "03", 15, 25]
danhMucDichVu["Điều trị tủy răng số 6 hàm trên gây mê"] := ["K04", "RHM21", "P11655248", "noinhagayme", "03", 20, 45]
danhMucDichVu["Điều trị tủy răng số 6 hàm dưới gây mê"] := ["K04", "RHM20", "P11655248", "noinhagayme", "17", 20, 45]
danhMucDichVu["Điều trị tủy răng số 7 hàm trên gây mê"] := ["K04", "RHM24", "P11655248", "noinhagayme", "03", 20, 45]
danhMucDichVu["Điều trị tủy răng số 7 hàm dưới gây mê"] := ["K04", "RHM23", "P11655248", "noinhagayme", "17", 20, 45]
danhMucDichVu["Điều trị tủy răng sữa một chân gây mê"] := ["K04", "RHM6", "T05401", "noinharangsua", "03, 20, 45"]
danhMucDichVu["Điều trị tủy răng sữa nhiều chân gây mê"] := ["K04", "RHM7", "T05399", "noinharangsua", ", 20, 4503"]

danhMucDichVu["Điều trị tủy lại răng số 1"] := ["K04.4", "16.61.8", "P11655248", "noinhalai", "03", 15, 30]
danhMucDichVu["Điều trị tủy lại răng số 2"] := ["K04.4", "16.61.8.1", "P11655248", "noinhalai", "03", 15, 30]
danhMucDichVu["Điều trị tủy lại răng số 3"] := ["K04.4", "16.61.8.2", "P11655248", "noinhalai", "03", 15, 30]
danhMucDichVu["Điều trị tủy lại răng số 4"] := ["K04.4", "16.61.7", "P11655248", "noinhalai", "03", 15, 30]
danhMucDichVu["Điều trị tủy lại răng số 5"] := ["K04.4", "16.61.7.1", "P11655248", "noinhalai", "03", 15, 30]
danhMucDichVu["Điều trị tủy lại răng số 6"] := ["K04.4", "16.61.3", "P11655248", "noinhalai", "03", 20, 45]
danhMucDichVu["Điều trị tủy lại răng số 7"] := ["K04.4", "16.61.3.1", "P11655248", "noinhalai", "03", 20, 45]

danhMucDichVu["Điều trị tủy lại răng số 1 gây mê"] := ["K04.4", "RHM9", "P11655248", "noinhalai", "03", 10, 30]
danhMucDichVu["Điều trị tủy lại răng số 2 gây mê"] := ["K04.4", "RHM11", "P11655248", "noinhalai", "03", 10, 30]
danhMucDichVu["Điều trị tủy lại răng số 3 gây mê"] := ["K04.4", "RHM13", "P11655248", "noinhalai", "03", 10, 30]
danhMucDichVu["Điều trị tủy lại răng số 4 gây mê"] := ["K04.4", "RHM15", "P11655248", "noinhalai", "03", 10, 30]
danhMucDichVu["Điều trị tủy lại răng số 5 gây mê"] := ["K04.4", "RHM19", "P11655248", "noinhalai", "03", 10, 30]
danhMucDichVu["Điều trị tủy lại răng số 6 gây mê"] := ["K04.4", "RHM22", "P11655248", "noinhalai", "03", 10, 30]

danhMucDichVu["Sứ kim loại"] := ["K02.4", "16.115", "T05163", "rangsu", "03", 1, 2]
danhMucDichVu["Sứ Titanium"] := ["K02.4", "16.116", "T05165",  "rangsu", "03", 1, 2]
danhMucDichVu["Sứ Zirconia"] := ["K02.4", "16.109.1", "T05167", "rangsu", "03", 1, 2]
danhMucDichVu["Sứ Ceramil Zolid"] := ["K02.4", "16.109.2", "T05169", "rangsu", "03", 1, 2]
danhMucDichVu["Sứ Emax"] := ["K02.4", "16.109.4", "T05171", "rangsu", "03"]
danhMucDichVu["Sứ Lava 3M"] := ["K02.4", "16.109.3", "T05205", "rangsu", "03", 1, 2]
danhMucDichVu["Veneer Ivoclar 6 triệu"] := ["K02.4", "16.128", "T06001", "rangsu", "03", 1, 2]
danhMucDichVu["Veneer Lisi Press 8 triệu"] := ["K02.4", "RHM015", "T06001", "rangsu", "03", 1, 2]
danhMucDichVu["Inlay/Onlay"] := ["K02.4", "16.126", "T05245", "rangsu", "03", 1, 2]
danhMucDichVu["Răng sứ Zirconia trên Implant"] := ["K02.4", "RAN010", "T05189", "rangsutrenimplant", "03", 1, 2]
danhMucDichVu["Răng sứ Ceramill Zolid trên Implant"] := ["K02.4", "RAN011", "T05191", "rangsutrenimplant", "03", 1, 2]
danhMucDichVu["Răng sứ Lava 3M trên Implant"] := ["K02.4", "RAN012", "T05195", "rangsutrenimplant", "03", 1, 2]

danhMucDichVu["Răng tháo lắp Nhật"] := ["K08.1", "16.140.1", "T05417", "rangthaolap", "00", 1, 1]
danhMucDichVu["Răng tháo lắp Mỹ"] := ["K08.1", "16.140", "T05417", "rangthaolap", "00", 1, 1]
danhMucDichVu["Răng tháo lắp composite"] := ["K08.1", "16.140.2", "T05417", "rangthaolap", "00", 1, 1]
danhMucDichVu["Nền nhựa dẻo bán phần"] := ["K08.1", "16.131", "T05449", "nhuadeobanphan", "00", 1, 1]
danhMucDichVu["Nền nhựa dẻo toàn phần"] := ["K08.1", "16.132", "T05461", "nhuadeobanphan", "00", 1, 1]
danhMucDichVu["Lưới nền hàm"] := ["K08.1", "LUO001", "T05463", "luoinenham", "00", 1, 1]

danhMucDichVu["Tháo cầu răng"] := ["K02.1", "16.137", "T05249", "thaocau", "00", 1, 2]
danhMucDichVu["Tháo mão (chụp)"] := ["K02.1", "16.138", "T05249", "thaomao", "00", 1, 2]

danhMucDichVu["Trám răng xoang 1"] := ["K02.1", "16.68.5", "T05113", "tramrangxoang1", "00", 5, 17]
danhMucDichVu["Trám răng xoang 2"] := ["K02.1", "16.68.4", "T05115", "tramrangxoang2", "00", 5, 17]
danhMucDichVu["Trám răng xoang 1+2"] := ["K02.1", "16.68.3", "T05117", "tramrangxoang12", "00", 5, 17]
danhMucDichVu["Trám răng xoang 3"] := ["K02.1", "16.68.2", "T05119", "tramrangxoang3", "00", 5, 17]
danhMucDichVu["Trám răng xoang 4"] := ["K02.1", "16.68.1", "T05121", "tramrangxoang4", "00", 5, 17]
danhMucDichVu["Trám răng xoang 5"] := ["K02.1", "16.72", "T05121", "tramrangxoang5", "00", 5, 17]
danhMucDichVu["Trám răng sữa 150K"] := ["K02.1", "16.236", "T05131", "tramrangsua", "00", 5, 17]
danhMucDichVu["Trám răng sữa 250K"] := ["K02.1", "16.70", "T05123", "tramrangsua", "00", 5, 17]
danhMucDichVu["Che tủy Calci"] := ["K02.5", "16.57", "T05083" "chetuycalci", "03", 5, 17]
danhMucDichVu["Che tủy MTA"] := ["K02.5", "16.56", "T05081", "chetuymta", "03", 5, 17]

danhMucDichVu["Trám răng xoang 1 gây mê"] := ["K02.1", "RHM1", "T05113", "tramrangxoang1", "00", 5, 10]
danhMucDichVu["Trám răng xoang 2 gây mê"] := ["K02.1", "RHM2", "T05115", "tramrangxoang2", "00", 5, 10]
danhMucDichVu["Trám răng xoang 1+2 gây mê"] := ["K02.1", "RHM3", "T05117", "tramrangxoang12", "00", 5, 10]
danhMucDichVu["Trám răng xoang 3 gây mê"] := ["K02.1", "RHM4", "T05119", "tramrangxoang3", "00", 5, 10]
danhMucDichVu["Trám răng xoang 4 gây mê"] := ["K02.1", "RHM5", "T05121", "tramrangxoang4", "00", 5, 10]
danhMucDichVu["Trám răng sữa gây mê"] := ["K02.1", "16.236.3", "T05131", "tramrangsua", "00", 5, 10]

danhMucDichVu["Trám răng xoang 1 laser"] := ["K02.1", "16.65.7", "T05103", "tramrangxoang1laser", "00", 5, 10]
danhMucDichVu["Trám răng xoang 2 laser"] := ["K02.1", "16.65.6", "T05105", "tramrangxoang2", "00", 5, 10]
danhMucDichVu["Trám răng xoang 1+2 laser"] := ["K02.1", "16.65.3", "T05107", "tramrangxoang12laser", "00", 5, 10]
danhMucDichVu["Trám răng xoang 3 laser"] := ["K02.1", "16.65.2", "T05109", "tramrangxoang3", "00", 5, 10]
danhMucDichVu["Trám răng xoang 4 laser"] := ["K02.1", "16.65.1", "T05111", "tramrangxoang4", "00", 5, 10]
danhMucDichVu["Trám răng xoang 5 laser"] := ["K02.1", "16.75", "T05243", "tramrangxoang5", "00", 5, 10]

danhMucDichVu["Trám tái tạo có chốt 400K"] := ["K02.4", "TRA002", "T05125", "tramtaitaocochotsoi", "00", 5, 10]
danhMucDichVu["Trám tái tạo không chốt 200K"] := ["K02", "TRA001", "T05127", "tramtaitaokhongchotsoi", "00", 5, 10]
danhMucDichVu["Trám tái tạo không chốt 400K"] := ["K02", "TRA003", "T05127", "tramtaitaokhongchotsoi", "00", 5, 10]
        