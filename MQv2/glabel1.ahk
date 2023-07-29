Dichvu1.OnEvent("Change", LuaChonDichVu1)
LuaChonDichVu1(ctr,*){
    switch Dichvu1.Text {
        Case "Bôi SDF": 
        {
            BaoHiem1.Visible := true
            TramRang1.Visible := false
            RangSu1.Visible := false
            RangThaoLap1.Visible := false
            Implant1.Visible := false
            CaoVoi1.Visible := false
            NhoRang1.Visible := false
            CatThangLuoi1.Visible := false
            Toothlist1.Visible := true
            NoiNha1.Visible := false
        }
        Case "Cạo vôi răng": 
        {
            BaoHiem1.Visible := true
            TramRang1.Visible := false
            RangSu1.Visible := false
            RangThaoLap1.Visible := false
            Implant1.Visible := false
            CaoVoi1.Visible := true
            NhoRang1.Visible := false
            CatThangLuoi1.Visible := false
            Toothlist1.Visible := true
            NoiNha1.Visible := false
        }
        Case "Trám răng": 
        {
            BaoHiem1.Visible := true
            TramRang1.Visible := true
            RangSu1.Visible := false
            RangThaoLap1.Visible := false
            Implant1.Visible := false
            CaoVoi1.Visible := false
            NhoRang1.Visible := false
            CatThangLuoi1.Visible := false
            Toothlist1.Visible := true
            NoiNha1.Visible := false
        }
        Case "Nội nha": 
        {
            BaoHiem1.Visible := true
            TramRang1.Visible := false
            RangSu1.Visible := false
            RangThaoLap1.Visible := false
            Implant1.Visible := false
            CaoVoi1.Visible := false
            NhoRang1.Visible := false
            CatThangLuoi1.Visible := false
            Toothlist1.Visible := true
            NoiNha1.Visible := true
        }
        Case "Nhổ răng": 
            {
                BaoHiem1.Visible := true
                TramRang1.Visible := false
                RangSu1.Visible := false
                RangThaoLap1.Visible := false
                Implant1.Visible := false
                CaoVoi1.Visible := false
                NhoRang1.Visible := true
                CatThangLuoi1.Visible := false
                Toothlist1.Visible := true
                NoiNha1.Visible := false
            }
            Case "Răng sứ": 
            {
                BaoHiem1.Visible := true
                TramRang1.Visible := false
                RangSu1.Visible := true
                RangThaoLap1.Visible := false
                Implant1.Visible := false
                CaoVoi1.Visible := false
                NhoRang1.Visible := false
                CatThangLuoi1.Visible := false
                Toothlist1.Visible := true
                NoiNha1.Visible := false
            }
            Case "Răng tháo lắp": 
            {
                BaoHiem1.Visible := true
                TramRang1.Visible := false
                RangSu1.Visible := false
                RangThaoLap1.Visible := true
                Implant1.Visible := false
                CaoVoi1.Visible := false
                NhoRang1.Visible := false
                CatThangLuoi1.Visible := false
                Toothlist1.Visible := true
                NoiNha1.Visible := false
            }
            Case "Implant": 
            {
                BaoHiem1.Visible := false
                TramRang1.Visible := false
                RangSu1.Visible := false
                RangThaoLap1.Visible := false
                Implant1.Visible := true
                CaoVoi1.Visible := false
                NhoRang1.Visible := false
                CatThangLuoi1.Visible := false
                Toothlist1.Visible := true
                NoiNha1.Visible := false
            }
            {
                BaoHiem1.Visible := false
                TramRang1.Visible := false
                RangSu1.Visible := false
                RangThaoLap1.Visible := false
                Implant1.Visible := true
                CaoVoi1.Visible := false
                NhoRang1.Visible := false
                CatThangLuoi1.Visible := false
                Toothlist1.Visible := true
                NoiNha1.Visible := false
            }
            Case "Chỉnh nha": 
            {
                BaoHiem1.Visible := true
                TramRang1.Visible := false
                RangSu1.Visible := false
                RangThaoLap1.Visible := false
                Implant1.Visible := false
                CaoVoi1.Visible := false
                NhoRang1.Visible := false
                CatThangLuoi1.Visible := false
                Toothlist1.Visible := true
                NoiNha1.Visible := false
            }
            Case "Tẩy trắng răng": 
            {
                BaoHiem1.Visible := true
                TramRang1.Visible := false
                RangSu1.Visible := false
                RangThaoLap1.Visible := false
                Implant1.Visible := false
                CaoVoi1.Visible := false
                NhoRang1.Visible := false
                CatThangLuoi1.Visible := false
                Toothlist1.Visible := true
                NoiNha1.Visible := false
            }
            Case "Ghép huyết tương": 
            {
                BaoHiem1.Visible := true
                TramRang1.Visible := false
                RangSu1.Visible := false
                RangThaoLap1.Visible := false
                Implant1.Visible := false
                CaoVoi1.Visible := false
                NhoRang1.Visible := false
                CatThangLuoi1.Visible := false
                Toothlist1.Visible := true
                NoiNha1.Visible := false
            }
            Case "Ghép xương": 
            {
                BaoHiem1.Visible := true
                TramRang1.Visible := false
                RangSu1.Visible := false
                RangThaoLap1.Visible := false
                Implant1.Visible := false
                CaoVoi1.Visible := false
                NhoRang1.Visible := false
                CatThangLuoi1.Visible := false
                Toothlist1.Visible := true
                NoiNha1.Visible := false
            }
            Case "Cắt thắng lưỡi": 
            {
                BaoHiem1.Visible := true
                TramRang1.Visible := false
                RangSu1.Visible := false
                RangThaoLap1.Visible := false
                Implant1.Visible := false
                CaoVoi1.Visible := false
                NhoRang1.Visible := false
                CatThangLuoi1.Visible := true
                Toothlist1.Visible := true
                NoiNha1.Visible := false
            }
            Case "": 
            {
                BaoHiem1.Visible := true
                TramRang1.Visible := false
                RangSu1.Visible := false
                RangThaoLap1.Visible := false
                Implant1.Visible := false
                CaoVoi1.Visible := false
                NhoRang1.Visible := false
                CatThangLuoi1.Visible := false
                Toothlist1.Visible := true
                NoiNha1.Visible := false
            }
    }
}
Dichvu2.OnEvent("Change", LuaChonDichVu2)
LuaChonDichVu2(ctr,*){
    switch Dichvu2.Text {
        Case "Bôi SDF": 
        {
            BaoHiem2.Visible := true
            TramRang2.Visible := false
            RangSu2.Visible := false
            RangThaoLap2.Visible := false
            Implant2.Visible := false
            CaoVoi2.Visible := false
            NhoRang2.Visible := false
            CatThangLuoi2.Visible := false
            Toothlist2.Visible := true
            NoiNha2.Visible := false
        }
        Case "Cạo vôi răng": 
        {
            BaoHiem2.Visible := true
            TramRang2.Visible := false
            RangSu2.Visible := false
            RangThaoLap2.Visible := false
            Implant2.Visible := false
            CaoVoi2.Visible := true
            NhoRang2.Visible := false
            CatThangLuoi2.Visible := false
            Toothlist2.Visible := true
            NoiNha2.Visible := false
        }
        Case "Trám răng": 
        {
            BaoHiem2.Visible := true
            TramRang2.Visible := true
            RangSu2.Visible := false
            RangThaoLap2.Visible := false
            Implant2.Visible := false
            CaoVoi2.Visible := false
            NhoRang2.Visible := false
            CatThangLuoi2.Visible := false
            Toothlist2.Visible := true
            NoiNha2.Visible := false
        }
        Case "Nội nha": 
        {
            BaoHiem2.Visible := true
            TramRang2.Visible := false
            RangSu2.Visible := false
            RangThaoLap2.Visible := false
            Implant2.Visible := false
            CaoVoi2.Visible := false
            NhoRang2.Visible := false
            CatThangLuoi2.Visible := false
            Toothlist2.Visible := true
            NoiNha2.Visible := true
        }
        Case "Nhổ răng": 
            {
                BaoHiem2.Visible := true
                TramRang2.Visible := false
                RangSu2.Visible := false
                RangThaoLap2.Visible := false
                Implant2.Visible := false
                CaoVoi2.Visible := false
                NhoRang2.Visible := true
                CatThangLuoi2.Visible := false
                Toothlist2.Visible := true
                NoiNha2.Visible := false
            }
            Case "Răng sứ": 
            {
                BaoHiem2.Visible := true
                TramRang2.Visible := false
                RangSu2.Visible := true
                RangThaoLap2.Visible := false
                Implant2.Visible := false
                CaoVoi2.Visible := false
                NhoRang2.Visible := false
                CatThangLuoi2.Visible := false
                Toothlist2.Visible := true
                NoiNha2.Visible := false
            }
            Case "Răng tháo lắp": 
            {
                BaoHiem2.Visible := true
                TramRang2.Visible := false
                RangSu2.Visible := false
                RangThaoLap2.Visible := true
                Implant2.Visible := false
                CaoVoi2.Visible := false
                NhoRang2.Visible := false
                CatThangLuoi2.Visible := false
                Toothlist2.Visible := true
                NoiNha2.Visible := false
            }
            Case "Implant": 
            {
                BaoHiem2.Visible := false
                TramRang2.Visible := false
                RangSu2.Visible := false
                RangThaoLap2.Visible := false
                Implant2.Visible := true
                CaoVoi2.Visible := false
                NhoRang2.Visible := false
                CatThangLuoi2.Visible := false
                Toothlist2.Visible := true
                NoiNha2.Visible := false
            }
            {
                BaoHiem2.Visible := false
                TramRang2.Visible := false
                RangSu2.Visible := false
                RangThaoLap2.Visible := false
                Implant2.Visible := true
                CaoVoi2.Visible := false
                NhoRang2.Visible := false
                CatThangLuoi2.Visible := false
                Toothlist2.Visible := true
                NoiNha2.Visible := false
            }
            Case "Chỉnh nha": 
            {
                BaoHiem2.Visible := true
                TramRang2.Visible := false
                RangSu2.Visible := false
                RangThaoLap2.Visible := false
                Implant2.Visible := false
                CaoVoi2.Visible := false
                NhoRang2.Visible := false
                CatThangLuoi2.Visible := false
                Toothlist2.Visible := true
                NoiNha2.Visible := false
            }
            Case "Tẩy trắng răng": 
            {
                BaoHiem2.Visible := true
                TramRang2.Visible := false
                RangSu2.Visible := false
                RangThaoLap2.Visible := false
                Implant2.Visible := false
                CaoVoi2.Visible := false
                NhoRang2.Visible := false
                CatThangLuoi2.Visible := false
                Toothlist2.Visible := true
                NoiNha2.Visible := false
            }
            Case "Ghép huyết tương": 
            {
                BaoHiem2.Visible := true
                TramRang2.Visible := false
                RangSu2.Visible := false
                RangThaoLap2.Visible := false
                Implant2.Visible := false
                CaoVoi2.Visible := false
                NhoRang2.Visible := false
                CatThangLuoi2.Visible := false
                Toothlist2.Visible := true
                NoiNha2.Visible := false
            }
            Case "Ghép xương": 
            {
                BaoHiem2.Visible := true
                TramRang2.Visible := false
                RangSu2.Visible := false
                RangThaoLap2.Visible := false
                Implant2.Visible := false
                CaoVoi2.Visible := false
                NhoRang2.Visible := false
                CatThangLuoi2.Visible := false
                Toothlist2.Visible := true
                NoiNha2.Visible := false
            }
            Case "Cắt thắng lưỡi": 
            {
                BaoHiem2.Visible := true
                TramRang2.Visible := false
                RangSu2.Visible := false
                RangThaoLap2.Visible := false
                Implant2.Visible := false
                CaoVoi2.Visible := false
                NhoRang2.Visible := false
                CatThangLuoi2.Visible := true
                Toothlist2.Visible := true
                NoiNha2.Visible := false
            }
            Case "": 
            {
                BaoHiem2.Visible := true
                TramRang2.Visible := false
                RangSu2.Visible := false
                RangThaoLap2.Visible := false
                Implant2.Visible := false
                CaoVoi2.Visible := false
                NhoRang2.Visible := false
                CatThangLuoi2.Visible := false
                Toothlist2.Visible := true
                NoiNha2.Visible := false
            }
    }
}
Dichvu3.OnEvent("Change", LuaChonDichVu3)
LuaChonDichVu3(ctr,*){
    switch Dichvu3.Text {
        Case "Bôi SDF": 
        {
            BaoHiem3.Visible := true
            TramRang3.Visible := false
            RangSu3.Visible := false
            RangThaoLap3.Visible := false
            Implant3.Visible := false
            CaoVoi3.Visible := false
            NhoRang3.Visible := false
            CatThangLuoi3.Visible := false
            Toothlist3.Visible := true
            NoiNha3.Visible := false
        }
        Case "Cạo vôi răng": 
        {
            BaoHiem3.Visible := true
            TramRang3.Visible := false
            RangSu3.Visible := false
            RangThaoLap3.Visible := false
            Implant3.Visible := false
            CaoVoi3.Visible := true
            NhoRang3.Visible := false
            CatThangLuoi3.Visible := false
            Toothlist3.Visible := true
            NoiNha3.Visible := false
        }
        Case "Trám răng": 
        {
            BaoHiem3.Visible := true
            TramRang3.Visible := true
            RangSu3.Visible := false
            RangThaoLap3.Visible := false
            Implant3.Visible := false
            CaoVoi3.Visible := false
            NhoRang3.Visible := false
            CatThangLuoi3.Visible := false
            Toothlist3.Visible := true
            NoiNha3.Visible := false
        }
        Case "Nội nha": 
        {
            BaoHiem3.Visible := true
            TramRang3.Visible := false
            RangSu3.Visible := false
            RangThaoLap3.Visible := false
            Implant3.Visible := false
            CaoVoi3.Visible := false
            NhoRang3.Visible := false
            CatThangLuoi3.Visible := false
            Toothlist3.Visible := true
            NoiNha3.Visible := true
        }
        Case "Nhổ răng": 
            {
                BaoHiem3.Visible := true
                TramRang3.Visible := false
                RangSu3.Visible := false
                RangThaoLap3.Visible := false
                Implant3.Visible := false
                CaoVoi3.Visible := false
                NhoRang3.Visible := true
                CatThangLuoi3.Visible := false
                Toothlist3.Visible := true
                NoiNha3.Visible := false
            }
            Case "Răng sứ": 
            {
                BaoHiem3.Visible := true
                TramRang3.Visible := false
                RangSu3.Visible := true
                RangThaoLap3.Visible := false
                Implant3.Visible := false
                CaoVoi3.Visible := false
                NhoRang3.Visible := false
                CatThangLuoi3.Visible := false
                Toothlist3.Visible := true
                NoiNha3.Visible := false
            }
            Case "Răng tháo lắp": 
            {
                BaoHiem3.Visible := true
                TramRang3.Visible := false
                RangSu3.Visible := false
                RangThaoLap3.Visible := true
                Implant3.Visible := false
                CaoVoi3.Visible := false
                NhoRang3.Visible := false
                CatThangLuoi3.Visible := false
                Toothlist3.Visible := true
                NoiNha3.Visible := false
            }
            Case "Implant": 
            {
                BaoHiem3.Visible := false
                TramRang3.Visible := false
                RangSu3.Visible := false
                RangThaoLap3.Visible := false
                Implant3.Visible := true
                CaoVoi3.Visible := false
                NhoRang3.Visible := false
                CatThangLuoi3.Visible := false
                Toothlist3.Visible := true
                NoiNha3.Visible := false
            }
            {
                BaoHiem3.Visible := false
                TramRang3.Visible := false
                RangSu3.Visible := false
                RangThaoLap3.Visible := false
                Implant3.Visible := true
                CaoVoi3.Visible := false
                NhoRang3.Visible := false
                CatThangLuoi3.Visible := false
                Toothlist3.Visible := true
                NoiNha3.Visible := false
            }
            Case "Chỉnh nha": 
            {
                BaoHiem3.Visible := true
                TramRang3.Visible := false
                RangSu3.Visible := false
                RangThaoLap3.Visible := false
                Implant3.Visible := false
                CaoVoi3.Visible := false
                NhoRang3.Visible := false
                CatThangLuoi3.Visible := false
                Toothlist3.Visible := true
                NoiNha3.Visible := false
            }
            Case "Tẩy trắng răng": 
            {
                BaoHiem3.Visible := true
                TramRang3.Visible := false
                RangSu3.Visible := false
                RangThaoLap3.Visible := false
                Implant3.Visible := false
                CaoVoi3.Visible := false
                NhoRang3.Visible := false
                CatThangLuoi3.Visible := false
                Toothlist3.Visible := true
                NoiNha3.Visible := false
            }
            Case "Ghép huyết tương": 
            {
                BaoHiem3.Visible := true
                TramRang3.Visible := false
                RangSu3.Visible := false
                RangThaoLap3.Visible := false
                Implant3.Visible := false
                CaoVoi3.Visible := false
                NhoRang3.Visible := false
                CatThangLuoi3.Visible := false
                Toothlist3.Visible := true
                NoiNha3.Visible := false
            }
            Case "Ghép xương": 
            {
                BaoHiem3.Visible := true
                TramRang3.Visible := false
                RangSu3.Visible := false
                RangThaoLap3.Visible := false
                Implant3.Visible := false
                CaoVoi3.Visible := false
                NhoRang3.Visible := false
                CatThangLuoi3.Visible := false
                Toothlist3.Visible := true
                NoiNha3.Visible := false
            }
            Case "Cắt thắng lưỡi": 
            {
                BaoHiem3.Visible := true
                TramRang3.Visible := false
                RangSu3.Visible := false
                RangThaoLap3.Visible := false
                Implant3.Visible := false
                CaoVoi3.Visible := false
                NhoRang3.Visible := false
                CatThangLuoi3.Visible := true
                Toothlist3.Visible := true
                NoiNha3.Visible := false
            }
            Case "": 
            {
                BaoHiem3.Visible := true
                TramRang3.Visible := false
                RangSu3.Visible := false
                RangThaoLap3.Visible := false
                Implant3.Visible := false
                CaoVoi3.Visible := false
                NhoRang3.Visible := false
                CatThangLuoi3.Visible := false
                Toothlist3.Visible := true
                NoiNha3.Visible := false
            }
    }
}
Dichvu4.OnEvent("Change", LuaChonDichVu4)
LuaChonDichVu4(ctr,*){
    switch Dichvu4.Text {
        Case "Bôi SDF": 
        {
            BaoHiem4.Visible := true
            TramRang4.Visible := false
            RangSu4.Visible := false
            RangThaoLap4.Visible := false
            Implant4.Visible := false
            CaoVoi4.Visible := false
            NhoRang4.Visible := false
            CatThangLuoi4.Visible := false
            Toothlist4.Visible := true
            NoiNha4.Visible := false
        }
        Case "Cạo vôi răng": 
        {
            BaoHiem4.Visible := true
            TramRang4.Visible := false
            RangSu4.Visible := false
            RangThaoLap4.Visible := false
            Implant4.Visible := false
            CaoVoi4.Visible := true
            NhoRang4.Visible := false
            CatThangLuoi4.Visible := false
            Toothlist4.Visible := true
            NoiNha4.Visible := false
        }
        Case "Trám răng": 
        {
            BaoHiem4.Visible := true
            TramRang4.Visible := true
            RangSu4.Visible := false
            RangThaoLap4.Visible := false
            Implant4.Visible := false
            CaoVoi4.Visible := false
            NhoRang4.Visible := false
            CatThangLuoi4.Visible := false
            Toothlist4.Visible := true
            NoiNha4.Visible := false
        }
        Case "Nội nha": 
        {
            BaoHiem4.Visible := true
            TramRang4.Visible := false
            RangSu4.Visible := false
            RangThaoLap4.Visible := false
            Implant4.Visible := false
            CaoVoi4.Visible := false
            NhoRang4.Visible := false
            CatThangLuoi4.Visible := false
            Toothlist4.Visible := true
            NoiNha4.Visible := true
        }
        Case "Nhổ răng": 
            {
                BaoHiem4.Visible := true
                TramRang4.Visible := false
                RangSu4.Visible := false
                RangThaoLap4.Visible := false
                Implant4.Visible := false
                CaoVoi4.Visible := false
                NhoRang4.Visible := true
                CatThangLuoi4.Visible := false
                Toothlist4.Visible := true
                NoiNha4.Visible := false
            }
            Case "Răng sứ": 
            {
                BaoHiem4.Visible := true
                TramRang4.Visible := false
                RangSu4.Visible := true
                RangThaoLap4.Visible := false
                Implant4.Visible := false
                CaoVoi4.Visible := false
                NhoRang4.Visible := false
                CatThangLuoi4.Visible := false
                Toothlist4.Visible := true
                NoiNha4.Visible := false
            }
            Case "Răng tháo lắp": 
            {
                BaoHiem4.Visible := true
                TramRang4.Visible := false
                RangSu4.Visible := false
                RangThaoLap4.Visible := true
                Implant4.Visible := false
                CaoVoi4.Visible := false
                NhoRang4.Visible := false
                CatThangLuoi4.Visible := false
                Toothlist4.Visible := true
                NoiNha4.Visible := false
            }
            Case "Implant": 
            {
                BaoHiem4.Visible := false
                TramRang4.Visible := false
                RangSu4.Visible := false
                RangThaoLap4.Visible := false
                Implant4.Visible := true
                CaoVoi4.Visible := false
                NhoRang4.Visible := false
                CatThangLuoi4.Visible := false
                Toothlist4.Visible := true
                NoiNha4.Visible := false
            }
            {
                BaoHiem4.Visible := false
                TramRang4.Visible := false
                RangSu4.Visible := false
                RangThaoLap4.Visible := false
                Implant4.Visible := true
                CaoVoi4.Visible := false
                NhoRang4.Visible := false
                CatThangLuoi4.Visible := false
                Toothlist4.Visible := true
                NoiNha4.Visible := false
            }
            Case "Chỉnh nha": 
            {
                BaoHiem4.Visible := true
                TramRang4.Visible := false
                RangSu4.Visible := false
                RangThaoLap4.Visible := false
                Implant4.Visible := false
                CaoVoi4.Visible := false
                NhoRang4.Visible := false
                CatThangLuoi4.Visible := false
                Toothlist4.Visible := true
                NoiNha4.Visible := false
            }
            Case "Tẩy trắng răng": 
            {
                BaoHiem4.Visible := true
                TramRang4.Visible := false
                RangSu4.Visible := false
                RangThaoLap4.Visible := false
                Implant4.Visible := false
                CaoVoi4.Visible := false
                NhoRang4.Visible := false
                CatThangLuoi4.Visible := false
                Toothlist4.Visible := true
                NoiNha4.Visible := false
            }
            Case "Ghép huyết tương": 
            {
                BaoHiem4.Visible := true
                TramRang4.Visible := false
                RangSu4.Visible := false
                RangThaoLap4.Visible := false
                Implant4.Visible := false
                CaoVoi4.Visible := false
                NhoRang4.Visible := false
                CatThangLuoi4.Visible := false
                Toothlist4.Visible := true
                NoiNha4.Visible := false
            }
            Case "Ghép xương": 
            {
                BaoHiem4.Visible := true
                TramRang4.Visible := false
                RangSu4.Visible := false
                RangThaoLap4.Visible := false
                Implant4.Visible := false
                CaoVoi4.Visible := false
                NhoRang4.Visible := false
                CatThangLuoi4.Visible := false
                Toothlist4.Visible := true
                NoiNha4.Visible := false
            }
            Case "Cắt thắng lưỡi": 
            {
                BaoHiem4.Visible := true
                TramRang4.Visible := false
                RangSu4.Visible := false
                RangThaoLap4.Visible := false
                Implant4.Visible := false
                CaoVoi4.Visible := false
                NhoRang4.Visible := false
                CatThangLuoi4.Visible := true
                Toothlist4.Visible := true
                NoiNha4.Visible := false
            }
            Case "": 
            {
                BaoHiem4.Visible := true
                TramRang4.Visible := false
                RangSu4.Visible := false
                RangThaoLap4.Visible := false
                Implant4.Visible := false
                CaoVoi4.Visible := false
                NhoRang4.Visible := false
                CatThangLuoi4.Visible := false
                Toothlist4.Visible := true
                NoiNha4.Visible := false
            }
    }
}
Dichvu5.OnEvent("Change", LuaChonDichVu5)
LuaChonDichVu5(ctr,*){
    switch Dichvu5.Text {
        Case "Bôi SDF": 
        {
            BaoHiem5.Visible := true
            TramRang5.Visible := false
            RangSu5.Visible := false
            RangThaoLap5.Visible := false
            Implant5.Visible := false
            CaoVoi5.Visible := false
            NhoRang5.Visible := false
            CatThangLuoi5.Visible := false
            Toothlist5.Visible := true
            NoiNha5.Visible := false
        }
        Case "Cạo vôi răng": 
        {
            BaoHiem5.Visible := true
            TramRang5.Visible := false
            RangSu5.Visible := false
            RangThaoLap5.Visible := false
            Implant5.Visible := false
            CaoVoi5.Visible := true
            NhoRang5.Visible := false
            CatThangLuoi5.Visible := false
            Toothlist5.Visible := true
            NoiNha5.Visible := false
        }
        Case "Trám răng": 
        {
            BaoHiem5.Visible := true
            TramRang5.Visible := true
            RangSu5.Visible := false
            RangThaoLap5.Visible := false
            Implant5.Visible := false
            CaoVoi5.Visible := false
            NhoRang5.Visible := false
            CatThangLuoi5.Visible := false
            Toothlist5.Visible := true
            NoiNha5.Visible := false
        }
        Case "Nội nha": 
        {
            BaoHiem5.Visible := true
            TramRang5.Visible := false
            RangSu5.Visible := false
            RangThaoLap5.Visible := false
            Implant5.Visible := false
            CaoVoi5.Visible := false
            NhoRang5.Visible := false
            CatThangLuoi5.Visible := false
            Toothlist5.Visible := true
            NoiNha5.Visible := true
        }
        Case "Nhổ răng": 
            {
                BaoHiem5.Visible := true
                TramRang5.Visible := false
                RangSu5.Visible := false
                RangThaoLap5.Visible := false
                Implant5.Visible := false
                CaoVoi5.Visible := false
                NhoRang5.Visible := true
                CatThangLuoi5.Visible := false
                Toothlist5.Visible := true
                NoiNha5.Visible := false
            }
            Case "Răng sứ": 
            {
                BaoHiem5.Visible := true
                TramRang5.Visible := false
                RangSu5.Visible := true
                RangThaoLap5.Visible := false
                Implant5.Visible := false
                CaoVoi5.Visible := false
                NhoRang5.Visible := false
                CatThangLuoi5.Visible := false
                Toothlist5.Visible := true
                NoiNha5.Visible := false
            }
            Case "Răng tháo lắp": 
            {
                BaoHiem5.Visible := true
                TramRang5.Visible := false
                RangSu5.Visible := false
                RangThaoLap5.Visible := true
                Implant5.Visible := false
                CaoVoi5.Visible := false
                NhoRang5.Visible := false
                CatThangLuoi5.Visible := false
                Toothlist5.Visible := true
                NoiNha5.Visible := false
            }
            Case "Implant": 
            {
                BaoHiem5.Visible := false
                TramRang5.Visible := false
                RangSu5.Visible := false
                RangThaoLap5.Visible := false
                Implant5.Visible := true
                CaoVoi5.Visible := false
                NhoRang5.Visible := false
                CatThangLuoi5.Visible := false
                Toothlist5.Visible := true
                NoiNha5.Visible := false
            }
            {
                BaoHiem5.Visible := false
                TramRang5.Visible := false
                RangSu5.Visible := false
                RangThaoLap5.Visible := false
                Implant5.Visible := true
                CaoVoi5.Visible := false
                NhoRang5.Visible := false
                CatThangLuoi5.Visible := false
                Toothlist5.Visible := true
                NoiNha5.Visible := false
            }
            Case "Chỉnh nha": 
            {
                BaoHiem5.Visible := true
                TramRang5.Visible := false
                RangSu5.Visible := false
                RangThaoLap5.Visible := false
                Implant5.Visible := false
                CaoVoi5.Visible := false
                NhoRang5.Visible := false
                CatThangLuoi5.Visible := false
                Toothlist5.Visible := true
                NoiNha5.Visible := false
            }
            Case "Tẩy trắng răng": 
            {
                BaoHiem5.Visible := true
                TramRang5.Visible := false
                RangSu5.Visible := false
                RangThaoLap5.Visible := false
                Implant5.Visible := false
                CaoVoi5.Visible := false
                NhoRang5.Visible := false
                CatThangLuoi5.Visible := false
                Toothlist5.Visible := true
                NoiNha5.Visible := false
            }
            Case "Ghép huyết tương": 
            {
                BaoHiem5.Visible := true
                TramRang5.Visible := false
                RangSu5.Visible := false
                RangThaoLap5.Visible := false
                Implant5.Visible := false
                CaoVoi5.Visible := false
                NhoRang5.Visible := false
                CatThangLuoi5.Visible := false
                Toothlist5.Visible := true
                NoiNha5.Visible := false
            }
            Case "Ghép xương": 
            {
                BaoHiem5.Visible := true
                TramRang5.Visible := false
                RangSu5.Visible := false
                RangThaoLap5.Visible := false
                Implant5.Visible := false
                CaoVoi5.Visible := false
                NhoRang5.Visible := false
                CatThangLuoi5.Visible := false
                Toothlist5.Visible := true
                NoiNha5.Visible := false
            }
            Case "Cắt thắng lưỡi": 
            {
                BaoHiem5.Visible := true
                TramRang5.Visible := false
                RangSu5.Visible := false
                RangThaoLap5.Visible := false
                Implant5.Visible := false
                CaoVoi5.Visible := false
                NhoRang5.Visible := false
                CatThangLuoi5.Visible := true
                Toothlist5.Visible := true
                NoiNha5.Visible := false
            }
            Case "": 
            {
                BaoHiem5.Visible := true
                TramRang5.Visible := false
                RangSu5.Visible := false
                RangThaoLap5.Visible := false
                Implant5.Visible := false
                CaoVoi5.Visible := false
                NhoRang5.Visible := false
                CatThangLuoi5.Visible := false
                Toothlist5.Visible := true
                NoiNha5.Visible := false
            }
    }
}
Dichvu6.OnEvent("Change", LuaChonDichVu6)
LuaChonDichVu6(ctr,*){
    switch Dichvu6.Text {
        Case "Bôi SDF": 
        {
            BaoHiem6.Visible := true
            TramRang6.Visible := false
            RangSu6.Visible := false
            RangThaoLap6.Visible := false
            Implant6.Visible := false
            CaoVoi6.Visible := false
            NhoRang6.Visible := false
            CatThangLuoi6.Visible := false
            Toothlist6.Visible := true
            NoiNha6.Visible := false
        }
        Case "Cạo vôi răng": 
        {
            BaoHiem6.Visible := true
            TramRang6.Visible := false
            RangSu6.Visible := false
            RangThaoLap6.Visible := false
            Implant6.Visible := false
            CaoVoi6.Visible := true
            NhoRang6.Visible := false
            CatThangLuoi6.Visible := false
            Toothlist6.Visible := true
            NoiNha6.Visible := false
        }
        Case "Trám răng": 
        {
            BaoHiem6.Visible := true
            TramRang6.Visible := true
            RangSu6.Visible := false
            RangThaoLap6.Visible := false
            Implant6.Visible := false
            CaoVoi6.Visible := false
            NhoRang6.Visible := false
            CatThangLuoi6.Visible := false
            Toothlist6.Visible := true
            NoiNha6.Visible := false
        }
        Case "Nội nha": 
        {
            BaoHiem6.Visible := true
            TramRang6.Visible := false
            RangSu6.Visible := false
            RangThaoLap6.Visible := false
            Implant6.Visible := false
            CaoVoi6.Visible := false
            NhoRang6.Visible := false
            CatThangLuoi6.Visible := false
            Toothlist6.Visible := true
            NoiNha6.Visible := true
        }
        Case "Nhổ răng": 
            {
                BaoHiem6.Visible := true
                TramRang6.Visible := false
                RangSu6.Visible := false
                RangThaoLap6.Visible := false
                Implant6.Visible := false
                CaoVoi6.Visible := false
                NhoRang6.Visible := true
                CatThangLuoi6.Visible := false
                Toothlist6.Visible := true
                NoiNha6.Visible := false
            }
            Case "Răng sứ": 
            {
                BaoHiem6.Visible := true
                TramRang6.Visible := false
                RangSu6.Visible := true
                RangThaoLap6.Visible := false
                Implant6.Visible := false
                CaoVoi6.Visible := false
                NhoRang6.Visible := false
                CatThangLuoi6.Visible := false
                Toothlist6.Visible := true
                NoiNha6.Visible := false
            }
            Case "Răng tháo lắp": 
            {
                BaoHiem6.Visible := true
                TramRang6.Visible := false
                RangSu6.Visible := false
                RangThaoLap6.Visible := true
                Implant6.Visible := false
                CaoVoi6.Visible := false
                NhoRang6.Visible := false
                CatThangLuoi6.Visible := false
                Toothlist6.Visible := true
                NoiNha6.Visible := false
            }
            Case "Implant": 
            {
                BaoHiem6.Visible := false
                TramRang6.Visible := false
                RangSu6.Visible := false
                RangThaoLap6.Visible := false
                Implant6.Visible := true
                CaoVoi6.Visible := false
                NhoRang6.Visible := false
                CatThangLuoi6.Visible := false
                Toothlist6.Visible := true
                NoiNha6.Visible := false
            }
            {
                BaoHiem6.Visible := false
                TramRang6.Visible := false
                RangSu6.Visible := false
                RangThaoLap6.Visible := false
                Implant6.Visible := true
                CaoVoi6.Visible := false
                NhoRang6.Visible := false
                CatThangLuoi6.Visible := false
                Toothlist6.Visible := true
                NoiNha6.Visible := false
            }
            Case "Chỉnh nha": 
            {
                BaoHiem6.Visible := true
                TramRang6.Visible := false
                RangSu6.Visible := false
                RangThaoLap6.Visible := false
                Implant6.Visible := false
                CaoVoi6.Visible := false
                NhoRang6.Visible := false
                CatThangLuoi6.Visible := false
                Toothlist6.Visible := true
                NoiNha6.Visible := false
            }
            Case "Tẩy trắng răng": 
            {
                BaoHiem6.Visible := true
                TramRang6.Visible := false
                RangSu6.Visible := false
                RangThaoLap6.Visible := false
                Implant6.Visible := false
                CaoVoi6.Visible := false
                NhoRang6.Visible := false
                CatThangLuoi6.Visible := false
                Toothlist6.Visible := true
                NoiNha6.Visible := false
            }
            Case "Ghép huyết tương": 
            {
                BaoHiem6.Visible := true
                TramRang6.Visible := false
                RangSu6.Visible := false
                RangThaoLap6.Visible := false
                Implant6.Visible := false
                CaoVoi6.Visible := false
                NhoRang6.Visible := false
                CatThangLuoi6.Visible := false
                Toothlist6.Visible := true
                NoiNha6.Visible := false
            }
            Case "Ghép xương": 
            {
                BaoHiem6.Visible := true
                TramRang6.Visible := false
                RangSu6.Visible := false
                RangThaoLap6.Visible := false
                Implant6.Visible := false
                CaoVoi6.Visible := false
                NhoRang6.Visible := false
                CatThangLuoi6.Visible := false
                Toothlist6.Visible := true
                NoiNha6.Visible := false
            }
            Case "Cắt thắng lưỡi": 
            {
                BaoHiem6.Visible := true
                TramRang6.Visible := false
                RangSu6.Visible := false
                RangThaoLap6.Visible := false
                Implant6.Visible := false
                CaoVoi6.Visible := false
                NhoRang6.Visible := false
                CatThangLuoi6.Visible := true
                Toothlist6.Visible := true
                NoiNha6.Visible := false
            }
            Case "": 
            {
                BaoHiem6.Visible := true
                TramRang6.Visible := false
                RangSu6.Visible := false
                RangThaoLap6.Visible := false
                Implant6.Visible := false
                CaoVoi6.Visible := false
                NhoRang6.Visible := false
                CatThangLuoi6.Visible := false
                Toothlist6.Visible := true
                NoiNha6.Visible := false
            }
    }
}
Dichvu7.OnEvent("Change", LuaChonDichVu7)
LuaChonDichVu7(ctr,*){
    switch Dichvu7.Text {
        Case "Bôi SDF": 
        {
            BaoHiem7.Visible := true
            TramRang7.Visible := false
            RangSu7.Visible := false
            RangThaoLap7.Visible := false
            Implant7.Visible := false
            CaoVoi7.Visible := false
            NhoRang7.Visible := false
            CatThangLuoi7.Visible := false
            Toothlist7.Visible := true
            NoiNha7.Visible := false
        }
        Case "Cạo vôi răng": 
        {
            BaoHiem7.Visible := true
            TramRang7.Visible := false
            RangSu7.Visible := false
            RangThaoLap7.Visible := false
            Implant7.Visible := false
            CaoVoi7.Visible := true
            NhoRang7.Visible := false
            CatThangLuoi7.Visible := false
            Toothlist7.Visible := true
            NoiNha7.Visible := false
        }
        Case "Trám răng": 
        {
            BaoHiem7.Visible := true
            TramRang7.Visible := true
            RangSu7.Visible := false
            RangThaoLap7.Visible := false
            Implant7.Visible := false
            CaoVoi7.Visible := false
            NhoRang7.Visible := false
            CatThangLuoi7.Visible := false
            Toothlist7.Visible := true
            NoiNha7.Visible := false
        }
        Case "Nội nha": 
        {
            BaoHiem7.Visible := true
            TramRang7.Visible := false
            RangSu7.Visible := false
            RangThaoLap7.Visible := false
            Implant7.Visible := false
            CaoVoi7.Visible := false
            NhoRang7.Visible := false
            CatThangLuoi7.Visible := false
            Toothlist7.Visible := true
            NoiNha7.Visible := true
        }
        Case "Nhổ răng": 
            {
                BaoHiem7.Visible := true
                TramRang7.Visible := false
                RangSu7.Visible := false
                RangThaoLap7.Visible := false
                Implant7.Visible := false
                CaoVoi7.Visible := false
                NhoRang7.Visible := true
                CatThangLuoi7.Visible := false
                Toothlist7.Visible := true
                NoiNha7.Visible := false
            }
            Case "Răng sứ": 
            {
                BaoHiem7.Visible := true
                TramRang7.Visible := false
                RangSu7.Visible := true
                RangThaoLap7.Visible := false
                Implant7.Visible := false
                CaoVoi7.Visible := false
                NhoRang7.Visible := false
                CatThangLuoi7.Visible := false
                Toothlist7.Visible := true
                NoiNha7.Visible := false
            }
            Case "Răng tháo lắp": 
            {
                BaoHiem7.Visible := true
                TramRang7.Visible := false
                RangSu7.Visible := false
                RangThaoLap7.Visible := true
                Implant7.Visible := false
                CaoVoi7.Visible := false
                NhoRang7.Visible := false
                CatThangLuoi7.Visible := false
                Toothlist7.Visible := true
                NoiNha7.Visible := false
            }
            Case "Implant": 
            {
                BaoHiem7.Visible := false
                TramRang7.Visible := false
                RangSu7.Visible := false
                RangThaoLap7.Visible := false
                Implant7.Visible := true
                CaoVoi7.Visible := false
                NhoRang7.Visible := false
                CatThangLuoi7.Visible := false
                Toothlist7.Visible := true
                NoiNha7.Visible := false
            }
            {
                BaoHiem7.Visible := false
                TramRang7.Visible := false
                RangSu7.Visible := false
                RangThaoLap7.Visible := false
                Implant7.Visible := true
                CaoVoi7.Visible := false
                NhoRang7.Visible := false
                CatThangLuoi7.Visible := false
                Toothlist7.Visible := true
                NoiNha7.Visible := false
            }
            Case "Chỉnh nha": 
            {
                BaoHiem7.Visible := true
                TramRang7.Visible := false
                RangSu7.Visible := false
                RangThaoLap7.Visible := false
                Implant7.Visible := false
                CaoVoi7.Visible := false
                NhoRang7.Visible := false
                CatThangLuoi7.Visible := false
                Toothlist7.Visible := true
                NoiNha7.Visible := false
            }
            Case "Tẩy trắng răng": 
            {
                BaoHiem7.Visible := true
                TramRang7.Visible := false
                RangSu7.Visible := false
                RangThaoLap7.Visible := false
                Implant7.Visible := false
                CaoVoi7.Visible := false
                NhoRang7.Visible := false
                CatThangLuoi7.Visible := false
                Toothlist7.Visible := true
                NoiNha7.Visible := false
            }
            Case "Ghép huyết tương": 
            {
                BaoHiem7.Visible := true
                TramRang7.Visible := false
                RangSu7.Visible := false
                RangThaoLap7.Visible := false
                Implant7.Visible := false
                CaoVoi7.Visible := false
                NhoRang7.Visible := false
                CatThangLuoi7.Visible := false
                Toothlist7.Visible := true
                NoiNha7.Visible := false
            }
            Case "Ghép xương": 
            {
                BaoHiem7.Visible := true
                TramRang7.Visible := false
                RangSu7.Visible := false
                RangThaoLap7.Visible := false
                Implant7.Visible := false
                CaoVoi7.Visible := false
                NhoRang7.Visible := false
                CatThangLuoi7.Visible := false
                Toothlist7.Visible := true
                NoiNha7.Visible := false
            }
            Case "Cắt thắng lưỡi": 
            {
                BaoHiem7.Visible := true
                TramRang7.Visible := false
                RangSu7.Visible := false
                RangThaoLap7.Visible := false
                Implant7.Visible := false
                CaoVoi7.Visible := false
                NhoRang7.Visible := false
                CatThangLuoi7.Visible := true
                Toothlist7.Visible := true
                NoiNha7.Visible := false
            }
            Case "": 
            {
                BaoHiem7.Visible := true
                TramRang7.Visible := false
                RangSu7.Visible := false
                RangThaoLap7.Visible := false
                Implant7.Visible := false
                CaoVoi7.Visible := false
                NhoRang7.Visible := false
                CatThangLuoi7.Visible := false
                Toothlist7.Visible := true
                NoiNha7.Visible := false
            }
    }
}