chondichvu1(ctrl, *) {
    switch Dichvu1.Text {
        Case "Cạo vôi răng":
            {
                Chidinh1.Delete()
                Chidinh1.Add(danhmuccaovoirang)
            }
        Case "Cắt thắng lưỡi":
            {
                Chidinh1.Delete()
                Chidinh1.Add(danhMucCatThangLuoi)
            }
        Case "Chỉnh nha":
            {
                Chidinh1.Delete()
                Chidinh1.Add(["Từ lần ... đến lần ..."])
                Chidinh1.Value := 1
            }
        Case "Implant":
            {
                Chidinh1.Delete()
                Chidinh1.Add(danhMucImplant)
            }
        Case "Nhổ răng":
            {
                Chidinh1.Delete()
                Chidinh1.Add(danhMucNhoRang)
            }
        Case "Nội nha":
            {
                Chidinh1.Delete()
                Chidinh1.Add(luachonnoinha)
            }
        
        Case "Răng sứ":
            {
                Chidinh1.Delete()
                Chidinh1.Add(danhMucRangSu)
            }
        Case "Răng tháo lắp":
            {
                Chidinh1.Delete()
                Chidinh1.Add(danhMucRangThaoLap)
            }
        Case "Trám răng":
            {
                Chidinh1.Delete()
                Chidinh1.Add(danhMucTramRang)
            }
        Case "":
            {
                Chidinh1.Delete()
            }
    }
}