Dichvu1:
Gui, Submit, NoHide
Switch Dichvu1 {
    Case "Cạo vôi răng": {
        GuiControl, show, phantrambaohiem1 
        GuiControl, hide, loaixoangtram1 
        GuiControl, hide, loairangsu1 
        GuiControl, hide, loairangthaolap1 
        GuiControl, hide, loaiabutment1 
        GuiControl, hide, chotsoi1 
        GuiControl, hide, loaiimplant1 
        GuiControl, show, loaicaovoi1 
        GuiControl, hide, loainhorang1 
        GuiControl, hide, Toothlist1 
	    GuiControl, hide, loainhorangthuthuat1
	    GuiControl, hide, loainoinha1
    }
    Case "Trám răng": {
        GuiControl, show, phantrambaohiem1 
        GuiControl, show, loaixoangtram1 
        GuiControl, hide, loairangsu1 
        GuiControl, hide, loairangthaolap1 
        GuiControl, hide, loaiabutment1 
        GuiControl, hide, chotsoi1 
        GuiControl, hide, loaiimplant1 
        GuiControl, hide, loaicaovoi1 
        GuiControl, hide, loainhorang1 
        GuiControl, show, Toothlist1 
	    GuiControl, hide, loainhorangthuthuat1
	    GuiControl, hide, loainoinha1
    }
    Case "Nội nha": {
        GuiControl, show, phantrambaohiem1 
        GuiControl, hide, loaixoangtram1 
        GuiControl, hide, loairangsu1 
        GuiControl, hide, loairangthaolap1 
        GuiControl, hide, loaiabutment1 
        GuiControl, hide, chotsoi1 
        GuiControl, hide, loaiimplant1 
        GuiControl, hide, loaicaovoi1 
        GuiControl, hide, loainhorang1 
        GuiControl, show, Toothlist1 
	    GuiControl, hide, loainhorangthuthuat1
	    GuiControl, show, loainoinha1
    }
        Case "Nhổ răng phẫu thuật": {
        GuiControl, show, phantrambaohiem1 
        GuiControl, hide, loaixoangtram1 
        GuiControl, hide, loairangsu1 
        GuiControl, hide, loairangthaolap1 
        GuiControl, hide, loaiabutment1 
        GuiControl, hide, chotsoi1 
        GuiControl, hide, loaiimplant1 
        GuiControl, hide, loaicaovoi1 
        GuiControl, show, loainhorang1 
        GuiControl, show, Toothlist1 
	    GuiControl, hide, loainhorangthuthuat1
        GuiControl, hide, loainoinha1
    }
        Case "Nhổ răng thủ thuật": {
        GuiControl, show, phantrambaohiem1 
        GuiControl, hide, loaixoangtram1 
        GuiControl, hide, loairangsu1 
        GuiControl, hide, loairangthaolap1 
        GuiControl, hide, loaiabutment1 
        GuiControl, hide, chotsoi1 
        GuiControl, hide, loaiimplant1 
        GuiControl, hide, loaicaovoi1 
        GuiControl, hide, loainhorang1
        GuiControl, show, Toothlist1 
	    GuiControl, show, xquang1
	    GuiControl, show, loainhorangthuthuat1
        GuiControl, hide, loainoinha1
    }

        Case "Răng sứ": {
        GuiControl, hide, phantrambaohiem1 
        GuiControl, hide, loaixoangtram1 
        GuiControl, show, loairangsu1 
        GuiControl, hide, loairangthaolap1 
        GuiControl, hide, loaiabutment1 
        GuiControl, hide, chotsoi1 
        GuiControl, hide, loaiimplant1 
        GuiControl, hide, loaicaovoi1 
        GuiControl, hide, loainhorang1 
        GuiControl, show, Toothlist1 
	    GuiControl, hide, loainhorangthuthuat1
        GuiControl, hide, loainoinha1
    }
        Case "Răng tháo lắp": {
        GuiControl, hide, phantrambaohiem1 
        GuiControl, hide, loaixoangtram1 
        GuiControl, hide, loairangsu1 
        GuiControl, show, loairangthaolap1 
        GuiControl, hide, loaiabutment1 
        GuiControl, hide, chotsoi1 
        GuiControl, hide, loaiimplant1 
        GuiControl, hide, loaicaovoi1 
        GuiControl, hide, loainhorang1 
        GuiControl, show, Toothlist1 
	    GuiControl, hide, loainhorangthuthuat1
        GuiControl, hide, loainoinha1
    }

    Case "Implant": {
        GuiControl, hide, phantrambaohiem1 
        GuiControl, hide, loaixoangtram1 
        GuiControl, hide, loairangsu1 
        GuiControl, hide, loairangthaolap1 
        GuiControl, show, loaiabutment1 
        GuiControl, hide, chotsoi1 
        GuiControl, show, loaiimplant1 
        GuiControl, hide, loaicaovoi1 
        GuiControl, hide, loainhorang1 
        GuiControl, show, Toothlist1 
	    GuiControl, hide, loainhorangthuthuat1
        GuiControl, hide, loainoinha1
    }

    Case "Chỉnh nha": {
        GuiControl, hide, phantrambaohiem1 
        GuiControl, hide, loaixoangtram1 
        GuiControl, hide, loairangsu1 
        GuiControl, hide, loairangthaolap1 
        GuiControl, hide, loaiabutment1 
        GuiControl, hide, chotsoi1 
        GuiControl, hide, loaiimplant1 
        GuiControl, hide, loaicaovoi1 
        GuiControl, hide, loainhorang1 
        GuiControl, show, Toothlist1 
	    GuiControl, hide, loainhorangthuthuat1
        GuiControl, hide, loainoinha1
    }

    Case "Tẩy trắng răng": {
        GuiControl, hide, phantrambaohiem1 
        GuiControl, hide, loaixoangtram1 
        GuiControl, hide, loairangsu1 
        GuiControl, hide, loairangthaolap1 
        GuiControl, hide, loaiabutment1 
        GuiControl, hide, chotsoi1 
        GuiControl, hide, loaiimplant1 
        GuiControl, hide, loaicaovoi1 
        GuiControl, hide, loainhorang1 
        GuiControl, hide, Toothlist1 
	    GuiControl, hide, loainhorangthuthuat1
        GuiControl, hide, loainoinha1
    }

    Case "Nội nha lại": {
        GuiControl, show, phantrambaohiem1 
        GuiControl, hide, loaixoangtram1 
        GuiControl, hide, loairangsu1 
        GuiControl, hide, loairangthaolap1 
        GuiControl, hide, loaiabutment1 
        GuiControl, hide, chotsoi1 
        GuiControl, hide, loaiimplant1 
        GuiControl, hide, loaicaovoi1 
        GuiControl, hide, loainhorang1 
        GuiControl, show, Toothlist1 
	    GuiControl, hide, loainhorangthuthuat1
        GuiControl, hide, loainoinha1
    }

    Case "Ghép huyết tương": {
        GuiControl, hide, phantrambaohiem1 
        GuiControl, hide, loaixoangtram1 
        GuiControl, hide, loairangsu1 
        GuiControl, hide, loairangthaolap1 
        GuiControl, hide, loaiabutment1 
        GuiControl, hide, chotsoi1 
        GuiControl, hide, loaiimplant1 
        GuiControl, hide, loaicaovoi1 
        GuiControl, hide, loainhorang1 
        GuiControl, show, Toothlist1 
	    GuiControl, hide, loainhorangthuthuat1
        GuiControl, hide, loainoinha1
    }

    Case "Ghép xương": {
        GuiControl, hide, phantrambaohiem1 
        GuiControl, hide, loaixoangtram1 
        GuiControl, hide, loairangsu1 
        GuiControl, hide, loairangthaolap1 
        GuiControl, hide, loaiabutment1 
        GuiControl, hide, chotsoi1 
        GuiControl, hide, loaiimplant1 
        GuiControl, hide, loaicaovoi1 
        GuiControl, hide, loainhorang1 
        GuiControl, show, Toothlist1 
	    GuiControl, hide, loainhorangthuthuat1
        GuiControl, hide, loainoinha1
    }
    Case "Xquang": {
        GuiControl, hide, phantrambaohiem1 
        GuiControl, hide, loaixoangtram1 
        GuiControl, hide, loairangsu1 
        GuiControl, hide, loairangthaolap1 
        GuiControl, hide, loaiabutment1 
        GuiControl, hide, chotsoi1 
        GuiControl, hide, loaiimplant1 
        GuiControl, hide, loaicaovoi1 
        GuiControl, hide, loainhorang1 
        GuiControl, show, Toothlist1 
	    GuiControl, hide, loainhorangthuthuat1
        GuiControl, hide, loainoinha1
    }
    Case "": {
        GuiControl, hide, phantrambaohiem1 
        GuiControl, hide, loaixoangtram1 
        GuiControl, hide, loairangsu1 
        GuiControl, hide, loairangthaolap1 
        GuiControl, hide, loaiabutment1 
        GuiControl, hide, chotsoi1 
        GuiControl, hide, loaiimplant1 
        GuiControl, hide, loaicaovoi1 
        GuiControl, hide, loainhorang1 
        GuiControl, hide, Toothlist1 
	    GuiControl, hide, loainhorangthuthuat1
        GuiControl, hide, loainoinha1
    }

}
return

Dichvu2:
Gui, Submit, NoHide
Switch Dichvu2 {
    Case "Cạo vôi răng": {
        GuiControl, show, phantrambaohiem2 
        GuiControl, hide, loaixoangtram2 
        GuiControl, hide, loairangsu2 
        GuiControl, hide, loairangthaolap2 
        GuiControl, hide, loaiabutment2 
        GuiControl, hide, chotsoi2 
        GuiControl, hide, loaiimplant2 
        GuiControl, show, loaicaovoi2 
        GuiControl, hide, loainhorang2 
        GuiControl, hide, Toothlist2 
	    GuiControl, hide, loainhorangthuthuat2
	    GuiControl, hide, loainoinha2
    }
    Case "Trám răng": {
        GuiControl, show, phantrambaohiem2 
        GuiControl, show, loaixoangtram2 
        GuiControl, hide, loairangsu2 
        GuiControl, hide, loairangthaolap2 
        GuiControl, hide, loaiabutment2 
        GuiControl, hide, chotsoi2 
        GuiControl, hide, loaiimplant2 
        GuiControl, hide, loaicaovoi2 
        GuiControl, hide, loainhorang2 
        GuiControl, show, Toothlist2 
	    GuiControl, hide, loainhorangthuthuat2
	    GuiControl, hide, loainoinha2
    }
    Case "Nội nha": {
        GuiControl, show, phantrambaohiem2 
        GuiControl, hide, loaixoangtram2 
        GuiControl, hide, loairangsu2 
        GuiControl, hide, loairangthaolap2 
        GuiControl, hide, loaiabutment2 
        GuiControl, hide, chotsoi2 
        GuiControl, hide, loaiimplant2 
        GuiControl, hide, loaicaovoi2 
        GuiControl, hide, loainhorang2 
        GuiControl, show, Toothlist2 
	    GuiControl, hide, loainhorangthuthuat2
	    GuiControl, show, loainoinha2
    }
        Case "Nhổ răng phẫu thuật": {
        GuiControl, show, phantrambaohiem2 
        GuiControl, hide, loaixoangtram2 
        GuiControl, hide, loairangsu2 
        GuiControl, hide, loairangthaolap2 
        GuiControl, hide, loaiabutment2 
        GuiControl, hide, chotsoi2 
        GuiControl, hide, loaiimplant2 
        GuiControl, hide, loaicaovoi2 
        GuiControl, show, loainhorang2 
        GuiControl, show, Toothlist2 
	    GuiControl, hide, loainhorangthuthuat2
        GuiControl, hide, loainoinha2
    }
        Case "Nhổ răng thủ thuật": {
        GuiControl, show, phantrambaohiem2 
        GuiControl, hide, loaixoangtram2 
        GuiControl, hide, loairangsu2 
        GuiControl, hide, loairangthaolap2 
        GuiControl, hide, loaiabutment2 
        GuiControl, hide, chotsoi2 
        GuiControl, hide, loaiimplant2 
        GuiControl, hide, loaicaovoi2 
        GuiControl, hide, loainhorang2
        GuiControl, show, Toothlist2 
	    GuiControl, show, xquang2
	    GuiControl, show, loainhorangthuthuat2
        GuiControl, hide, loainoinha2
    }

        Case "Răng sứ": {
        GuiControl, hide, phantrambaohiem2 
        GuiControl, hide, loaixoangtram2 
        GuiControl, show, loairangsu2 
        GuiControl, hide, loairangthaolap2 
        GuiControl, hide, loaiabutment2 
        GuiControl, hide, chotsoi2 
        GuiControl, hide, loaiimplant2 
        GuiControl, hide, loaicaovoi2 
        GuiControl, hide, loainhorang2 
        GuiControl, show, Toothlist2 
	    GuiControl, hide, loainhorangthuthuat2
        GuiControl, hide, loainoinha2
    }
        Case "Răng tháo lắp": {
        GuiControl, hide, phantrambaohiem2 
        GuiControl, hide, loaixoangtram2 
        GuiControl, hide, loairangsu2 
        GuiControl, show, loairangthaolap2 
        GuiControl, hide, loaiabutment2 
        GuiControl, hide, chotsoi2 
        GuiControl, hide, loaiimplant2 
        GuiControl, hide, loaicaovoi2 
        GuiControl, hide, loainhorang2 
        GuiControl, show, Toothlist2 
	    GuiControl, hide, loainhorangthuthuat2
        GuiControl, hide, loainoinha2
    }

    Case "Implant": {
        GuiControl, hide, phantrambaohiem2 
        GuiControl, hide, loaixoangtram2 
        GuiControl, hide, loairangsu2 
        GuiControl, hide, loairangthaolap2 
        GuiControl, show, loaiabutment2 
        GuiControl, hide, chotsoi2 
        GuiControl, show, loaiimplant2 
        GuiControl, hide, loaicaovoi2 
        GuiControl, hide, loainhorang2 
        GuiControl, show, Toothlist2 
	    GuiControl, hide, loainhorangthuthuat2
        GuiControl, hide, loainoinha2
    }

    Case "Chỉnh nha": {
        GuiControl, hide, phantrambaohiem2 
        GuiControl, hide, loaixoangtram2 
        GuiControl, hide, loairangsu2 
        GuiControl, hide, loairangthaolap2 
        GuiControl, hide, loaiabutment2 
        GuiControl, hide, chotsoi2 
        GuiControl, hide, loaiimplant2 
        GuiControl, hide, loaicaovoi2 
        GuiControl, hide, loainhorang2 
        GuiControl, show, Toothlist2 
	    GuiControl, hide, loainhorangthuthuat2
        GuiControl, hide, loainoinha2
    }

    Case "Tẩy trắng răng": {
        GuiControl, hide, phantrambaohiem2 
        GuiControl, hide, loaixoangtram2 
        GuiControl, hide, loairangsu2 
        GuiControl, hide, loairangthaolap2 
        GuiControl, hide, loaiabutment2 
        GuiControl, hide, chotsoi2 
        GuiControl, hide, loaiimplant2 
        GuiControl, hide, loaicaovoi2 
        GuiControl, hide, loainhorang2 
        GuiControl, hide, Toothlist2 
	    GuiControl, hide, loainhorangthuthuat2
        GuiControl, hide, loainoinha2
    }

    Case "Nội nha lại": {
        GuiControl, show, phantrambaohiem2 
        GuiControl, hide, loaixoangtram2 
        GuiControl, hide, loairangsu2 
        GuiControl, hide, loairangthaolap2 
        GuiControl, hide, loaiabutment2 
        GuiControl, hide, chotsoi2 
        GuiControl, hide, loaiimplant2 
        GuiControl, hide, loaicaovoi2 
        GuiControl, hide, loainhorang2 
        GuiControl, show, Toothlist2 
	    GuiControl, hide, loainhorangthuthuat2
        GuiControl, hide, loainoinha2
    }

    Case "Ghép huyết tương": {
        GuiControl, hide, phantrambaohiem2 
        GuiControl, hide, loaixoangtram2 
        GuiControl, hide, loairangsu2 
        GuiControl, hide, loairangthaolap2 
        GuiControl, hide, loaiabutment2 
        GuiControl, hide, chotsoi2 
        GuiControl, hide, loaiimplant2 
        GuiControl, hide, loaicaovoi2 
        GuiControl, hide, loainhorang2 
        GuiControl, show, Toothlist2 
	    GuiControl, hide, loainhorangthuthuat2
        GuiControl, hide, loainoinha2
    }

    Case "Ghép xương": {
        GuiControl, hide, phantrambaohiem2 
        GuiControl, hide, loaixoangtram2 
        GuiControl, hide, loairangsu2 
        GuiControl, hide, loairangthaolap2 
        GuiControl, hide, loaiabutment2 
        GuiControl, hide, chotsoi2 
        GuiControl, hide, loaiimplant2 
        GuiControl, hide, loaicaovoi2 
        GuiControl, hide, loainhorang2 
        GuiControl, show, Toothlist2 
	    GuiControl, hide, loainhorangthuthuat2
        GuiControl, hide, loainoinha2
    }
    Case "Xquang": {
        GuiControl, hide, phantrambaohiem2 
        GuiControl, hide, loaixoangtram2 
        GuiControl, hide, loairangsu2 
        GuiControl, hide, loairangthaolap2 
        GuiControl, hide, loaiabutment2 
        GuiControl, hide, chotsoi2 
        GuiControl, hide, loaiimplant2 
        GuiControl, hide, loaicaovoi2 
        GuiControl, hide, loainhorang2 
        GuiControl, show, Toothlist2 
	    GuiControl, hide, loainhorangthuthuat2
        GuiControl, hide, loainoinha2
    }
    Case "": {
        GuiControl, hide, phantrambaohiem2 
        GuiControl, hide, loaixoangtram2 
        GuiControl, hide, loairangsu2 
        GuiControl, hide, loairangthaolap2 
        GuiControl, hide, loaiabutment2 
        GuiControl, hide, chotsoi2 
        GuiControl, hide, loaiimplant2 
        GuiControl, hide, loaicaovoi2 
        GuiControl, hide, loainhorang2 
        GuiControl, hide, Toothlist2 
	    GuiControl, hide, loainhorangthuthuat2
        GuiControl, hide, loainoinha2
    }

}
return

Dichvu3:
Gui, Submit, NoHide
Switch Dichvu3 {
    Case "Cạo vôi răng": {
        GuiControl, show, phantrambaohiem3 
        GuiControl, hide, loaixoangtram3 
        GuiControl, hide, loairangsu3 
        GuiControl, hide, loairangthaolap3 
        GuiControl, hide, loaiabutment3 
        GuiControl, hide, chotsoi3 
        GuiControl, hide, loaiimplant3 
        GuiControl, show, loaicaovoi3 
        GuiControl, hide, loainhorang3 
        GuiControl, hide, Toothlist3 
	    GuiControl, hide, loainhorangthuthuat3
	    GuiControl, hide, loainoinha3
    }
    Case "Trám răng": {
        GuiControl, show, phantrambaohiem3 
        GuiControl, show, loaixoangtram3 
        GuiControl, hide, loairangsu3 
        GuiControl, hide, loairangthaolap3 
        GuiControl, hide, loaiabutment3 
        GuiControl, hide, chotsoi3 
        GuiControl, hide, loaiimplant3 
        GuiControl, hide, loaicaovoi3 
        GuiControl, hide, loainhorang3 
        GuiControl, show, Toothlist3 
	    GuiControl, hide, loainhorangthuthuat3
	    GuiControl, hide, loainoinha3
    }
    Case "Nội nha": {
        GuiControl, show, phantrambaohiem3 
        GuiControl, hide, loaixoangtram3 
        GuiControl, hide, loairangsu3 
        GuiControl, hide, loairangthaolap3 
        GuiControl, hide, loaiabutment3 
        GuiControl, hide, chotsoi3 
        GuiControl, hide, loaiimplant3 
        GuiControl, hide, loaicaovoi3 
        GuiControl, hide, loainhorang3 
        GuiControl, show, Toothlist3 
	    GuiControl, hide, loainhorangthuthuat3
	    GuiControl, show, loainoinha3
    }
        Case "Nhổ răng phẫu thuật": {
        GuiControl, show, phantrambaohiem3 
        GuiControl, hide, loaixoangtram3 
        GuiControl, hide, loairangsu3 
        GuiControl, hide, loairangthaolap3 
        GuiControl, hide, loaiabutment3 
        GuiControl, hide, chotsoi3 
        GuiControl, hide, loaiimplant3 
        GuiControl, hide, loaicaovoi3 
        GuiControl, show, loainhorang3 
        GuiControl, show, Toothlist3 
	    GuiControl, hide, loainhorangthuthuat3
        GuiControl, hide, loainoinha3
    }
        Case "Nhổ răng thủ thuật": {
        GuiControl, show, phantrambaohiem3 
        GuiControl, hide, loaixoangtram3 
        GuiControl, hide, loairangsu3 
        GuiControl, hide, loairangthaolap3 
        GuiControl, hide, loaiabutment3 
        GuiControl, hide, chotsoi3 
        GuiControl, hide, loaiimplant3 
        GuiControl, hide, loaicaovoi3 
        GuiControl, hide, loainhorang3
        GuiControl, show, Toothlist3 
	    GuiControl, show, xquang3
	    GuiControl, show, loainhorangthuthuat3
        GuiControl, hide, loainoinha3
    }

        Case "Răng sứ": {
        GuiControl, hide, phantrambaohiem3 
        GuiControl, hide, loaixoangtram3 
        GuiControl, show, loairangsu3 
        GuiControl, hide, loairangthaolap3 
        GuiControl, hide, loaiabutment3 
        GuiControl, hide, chotsoi3 
        GuiControl, hide, loaiimplant3 
        GuiControl, hide, loaicaovoi3 
        GuiControl, hide, loainhorang3 
        GuiControl, show, Toothlist3 
	    GuiControl, hide, loainhorangthuthuat3
        GuiControl, hide, loainoinha3
    }
        Case "Răng tháo lắp": {
        GuiControl, hide, phantrambaohiem3 
        GuiControl, hide, loaixoangtram3 
        GuiControl, hide, loairangsu3 
        GuiControl, show, loairangthaolap3 
        GuiControl, hide, loaiabutment3 
        GuiControl, hide, chotsoi3 
        GuiControl, hide, loaiimplant3 
        GuiControl, hide, loaicaovoi3 
        GuiControl, hide, loainhorang3 
        GuiControl, show, Toothlist3 
	    GuiControl, hide, loainhorangthuthuat3
        GuiControl, hide, loainoinha3
    }

    Case "Implant": {
        GuiControl, hide, phantrambaohiem3 
        GuiControl, hide, loaixoangtram3 
        GuiControl, hide, loairangsu3 
        GuiControl, hide, loairangthaolap3 
        GuiControl, show, loaiabutment3 
        GuiControl, hide, chotsoi3 
        GuiControl, show, loaiimplant3 
        GuiControl, hide, loaicaovoi3 
        GuiControl, hide, loainhorang3 
        GuiControl, show, Toothlist3 
	    GuiControl, hide, loainhorangthuthuat3
        GuiControl, hide, loainoinha3
    }

    Case "Chỉnh nha": {
        GuiControl, hide, phantrambaohiem3 
        GuiControl, hide, loaixoangtram3 
        GuiControl, hide, loairangsu3 
        GuiControl, hide, loairangthaolap3 
        GuiControl, hide, loaiabutment3 
        GuiControl, hide, chotsoi3 
        GuiControl, hide, loaiimplant3 
        GuiControl, hide, loaicaovoi3 
        GuiControl, hide, loainhorang3 
        GuiControl, show, Toothlist3 
	    GuiControl, hide, loainhorangthuthuat3
        GuiControl, hide, loainoinha3
    }

    Case "Tẩy trắng răng": {
        GuiControl, hide, phantrambaohiem3 
        GuiControl, hide, loaixoangtram3 
        GuiControl, hide, loairangsu3 
        GuiControl, hide, loairangthaolap3 
        GuiControl, hide, loaiabutment3 
        GuiControl, hide, chotsoi3 
        GuiControl, hide, loaiimplant3 
        GuiControl, hide, loaicaovoi3 
        GuiControl, hide, loainhorang3 
        GuiControl, hide, Toothlist3 
	    GuiControl, hide, loainhorangthuthuat3
        GuiControl, hide, loainoinha3
    }

    Case "Nội nha lại": {
        GuiControl, show, phantrambaohiem3 
        GuiControl, hide, loaixoangtram3 
        GuiControl, hide, loairangsu3 
        GuiControl, hide, loairangthaolap3 
        GuiControl, hide, loaiabutment3 
        GuiControl, hide, chotsoi3 
        GuiControl, hide, loaiimplant3 
        GuiControl, hide, loaicaovoi3 
        GuiControl, hide, loainhorang3 
        GuiControl, show, Toothlist3 
	    GuiControl, hide, loainhorangthuthuat3
        GuiControl, hide, loainoinha3
    }

    Case "Ghép huyết tương": {
        GuiControl, hide, phantrambaohiem3 
        GuiControl, hide, loaixoangtram3 
        GuiControl, hide, loairangsu3 
        GuiControl, hide, loairangthaolap3 
        GuiControl, hide, loaiabutment3 
        GuiControl, hide, chotsoi3 
        GuiControl, hide, loaiimplant3 
        GuiControl, hide, loaicaovoi3 
        GuiControl, hide, loainhorang3 
        GuiControl, show, Toothlist3 
	    GuiControl, hide, loainhorangthuthuat3
        GuiControl, hide, loainoinha3
    }

    Case "Ghép xương": {
        GuiControl, hide, phantrambaohiem3 
        GuiControl, hide, loaixoangtram3 
        GuiControl, hide, loairangsu3 
        GuiControl, hide, loairangthaolap3 
        GuiControl, hide, loaiabutment3 
        GuiControl, hide, chotsoi3 
        GuiControl, hide, loaiimplant3 
        GuiControl, hide, loaicaovoi3 
        GuiControl, hide, loainhorang3 
        GuiControl, show, Toothlist3 
	    GuiControl, hide, loainhorangthuthuat3
        GuiControl, hide, loainoinha3
    }
    Case "Xquang": {
        GuiControl, hide, phantrambaohiem3 
        GuiControl, hide, loaixoangtram3 
        GuiControl, hide, loairangsu3 
        GuiControl, hide, loairangthaolap3 
        GuiControl, hide, loaiabutment3 
        GuiControl, hide, chotsoi3 
        GuiControl, hide, loaiimplant3 
        GuiControl, hide, loaicaovoi3 
        GuiControl, hide, loainhorang3 
        GuiControl, show, Toothlist3 
	    GuiControl, hide, loainhorangthuthuat3
        GuiControl, hide, loainoinha3
    }
    Case "": {
        GuiControl, hide, phantrambaohiem3 
        GuiControl, hide, loaixoangtram3 
        GuiControl, hide, loairangsu3 
        GuiControl, hide, loairangthaolap3 
        GuiControl, hide, loaiabutment3 
        GuiControl, hide, chotsoi3 
        GuiControl, hide, loaiimplant3 
        GuiControl, hide, loaicaovoi3 
        GuiControl, hide, loainhorang3 
        GuiControl, hide, Toothlist3 
	    GuiControl, hide, loainhorangthuthuat3
        GuiControl, hide, loainoinha3
    }

}
return

Dichvu4:
Gui, Submit, NoHide
Switch Dichvu4 {
    Case "Cạo vôi răng": {
        GuiControl, show, phantrambaohiem4 
        GuiControl, hide, loaixoangtram4 
        GuiControl, hide, loairangsu4 
        GuiControl, hide, loairangthaolap4 
        GuiControl, hide, loaiabutment4 
        GuiControl, hide, chotsoi4 
        GuiControl, hide, loaiimplant4 
        GuiControl, show, loaicaovoi4 
        GuiControl, hide, loainhorang4 
        GuiControl, hide, Toothlist4 
	    GuiControl, hide, loainhorangthuthuat4
	    GuiControl, hide, loainoinha4
    }
    Case "Trám răng": {
        GuiControl, show, phantrambaohiem4 
        GuiControl, show, loaixoangtram4 
        GuiControl, hide, loairangsu4 
        GuiControl, hide, loairangthaolap4 
        GuiControl, hide, loaiabutment4 
        GuiControl, hide, chotsoi4 
        GuiControl, hide, loaiimplant4 
        GuiControl, hide, loaicaovoi4 
        GuiControl, hide, loainhorang4 
        GuiControl, show, Toothlist4 
	    GuiControl, hide, loainhorangthuthuat4
	    GuiControl, hide, loainoinha4
    }
    Case "Nội nha": {
        GuiControl, show, phantrambaohiem4 
        GuiControl, hide, loaixoangtram4 
        GuiControl, hide, loairangsu4 
        GuiControl, hide, loairangthaolap4 
        GuiControl, hide, loaiabutment4 
        GuiControl, hide, chotsoi4 
        GuiControl, hide, loaiimplant4 
        GuiControl, hide, loaicaovoi4 
        GuiControl, hide, loainhorang4 
        GuiControl, show, Toothlist4 
	    GuiControl, hide, loainhorangthuthuat4
	    GuiControl, show, loainoinha4
    }
        Case "Nhổ răng phẫu thuật": {
        GuiControl, show, phantrambaohiem4 
        GuiControl, hide, loaixoangtram4 
        GuiControl, hide, loairangsu4 
        GuiControl, hide, loairangthaolap4 
        GuiControl, hide, loaiabutment4 
        GuiControl, hide, chotsoi4 
        GuiControl, hide, loaiimplant4 
        GuiControl, hide, loaicaovoi4 
        GuiControl, show, loainhorang4 
        GuiControl, show, Toothlist4 
	    GuiControl, hide, loainhorangthuthuat4
        GuiControl, hide, loainoinha4
    }
        Case "Nhổ răng thủ thuật": {
        GuiControl, show, phantrambaohiem4 
        GuiControl, hide, loaixoangtram4 
        GuiControl, hide, loairangsu4 
        GuiControl, hide, loairangthaolap4 
        GuiControl, hide, loaiabutment4 
        GuiControl, hide, chotsoi4 
        GuiControl, hide, loaiimplant4 
        GuiControl, hide, loaicaovoi4 
        GuiControl, hide, loainhorang4
        GuiControl, show, Toothlist4 
	    GuiControl, show, xquang4
	    GuiControl, show, loainhorangthuthuat4
        GuiControl, hide, loainoinha4
    }

        Case "Răng sứ": {
        GuiControl, hide, phantrambaohiem4 
        GuiControl, hide, loaixoangtram4 
        GuiControl, show, loairangsu4 
        GuiControl, hide, loairangthaolap4 
        GuiControl, hide, loaiabutment4 
        GuiControl, hide, chotsoi4 
        GuiControl, hide, loaiimplant4 
        GuiControl, hide, loaicaovoi4 
        GuiControl, hide, loainhorang4 
        GuiControl, show, Toothlist4 
	    GuiControl, hide, loainhorangthuthuat4
        GuiControl, hide, loainoinha4
    }
        Case "Răng tháo lắp": {
        GuiControl, hide, phantrambaohiem4 
        GuiControl, hide, loaixoangtram4 
        GuiControl, hide, loairangsu4 
        GuiControl, show, loairangthaolap4 
        GuiControl, hide, loaiabutment4 
        GuiControl, hide, chotsoi4 
        GuiControl, hide, loaiimplant4 
        GuiControl, hide, loaicaovoi4 
        GuiControl, hide, loainhorang4 
        GuiControl, show, Toothlist4 
	    GuiControl, hide, loainhorangthuthuat4
        GuiControl, hide, loainoinha4
    }

    Case "Implant": {
        GuiControl, hide, phantrambaohiem4 
        GuiControl, hide, loaixoangtram4 
        GuiControl, hide, loairangsu4 
        GuiControl, hide, loairangthaolap4 
        GuiControl, show, loaiabutment4 
        GuiControl, hide, chotsoi4 
        GuiControl, show, loaiimplant4 
        GuiControl, hide, loaicaovoi4 
        GuiControl, hide, loainhorang4 
        GuiControl, show, Toothlist4 
	    GuiControl, hide, loainhorangthuthuat4
        GuiControl, hide, loainoinha4
    }

    Case "Chỉnh nha": {
        GuiControl, hide, phantrambaohiem4 
        GuiControl, hide, loaixoangtram4 
        GuiControl, hide, loairangsu4 
        GuiControl, hide, loairangthaolap4 
        GuiControl, hide, loaiabutment4 
        GuiControl, hide, chotsoi4 
        GuiControl, hide, loaiimplant4 
        GuiControl, hide, loaicaovoi4 
        GuiControl, hide, loainhorang4 
        GuiControl, show, Toothlist4 
	    GuiControl, hide, loainhorangthuthuat4
        GuiControl, hide, loainoinha4
    }

    Case "Tẩy trắng răng": {
        GuiControl, hide, phantrambaohiem4 
        GuiControl, hide, loaixoangtram4 
        GuiControl, hide, loairangsu4 
        GuiControl, hide, loairangthaolap4 
        GuiControl, hide, loaiabutment4 
        GuiControl, hide, chotsoi4 
        GuiControl, hide, loaiimplant4 
        GuiControl, hide, loaicaovoi4 
        GuiControl, hide, loainhorang4 
        GuiControl, hide, Toothlist4 
	    GuiControl, hide, loainhorangthuthuat4
        GuiControl, hide, loainoinha4
    }

    Case "Nội nha lại": {
        GuiControl, show, phantrambaohiem4 
        GuiControl, hide, loaixoangtram4 
        GuiControl, hide, loairangsu4 
        GuiControl, hide, loairangthaolap4 
        GuiControl, hide, loaiabutment4 
        GuiControl, hide, chotsoi4 
        GuiControl, hide, loaiimplant4 
        GuiControl, hide, loaicaovoi4 
        GuiControl, hide, loainhorang4 
        GuiControl, show, Toothlist4 
	    GuiControl, hide, loainhorangthuthuat4
        GuiControl, hide, loainoinha4
    }

    Case "Ghép huyết tương": {
        GuiControl, hide, phantrambaohiem4 
        GuiControl, hide, loaixoangtram4 
        GuiControl, hide, loairangsu4 
        GuiControl, hide, loairangthaolap4 
        GuiControl, hide, loaiabutment4 
        GuiControl, hide, chotsoi4 
        GuiControl, hide, loaiimplant4 
        GuiControl, hide, loaicaovoi4 
        GuiControl, hide, loainhorang4 
        GuiControl, show, Toothlist4 
	    GuiControl, hide, loainhorangthuthuat4
        GuiControl, hide, loainoinha4
    }

    Case "Ghép xương": {
        GuiControl, hide, phantrambaohiem4 
        GuiControl, hide, loaixoangtram4 
        GuiControl, hide, loairangsu4 
        GuiControl, hide, loairangthaolap4 
        GuiControl, hide, loaiabutment4 
        GuiControl, hide, chotsoi4 
        GuiControl, hide, loaiimplant4 
        GuiControl, hide, loaicaovoi4 
        GuiControl, hide, loainhorang4 
        GuiControl, show, Toothlist4 
	    GuiControl, hide, loainhorangthuthuat4
        GuiControl, hide, loainoinha4
    }
    Case "Xquang": {
        GuiControl, hide, phantrambaohiem4 
        GuiControl, hide, loaixoangtram4 
        GuiControl, hide, loairangsu4 
        GuiControl, hide, loairangthaolap4 
        GuiControl, hide, loaiabutment4 
        GuiControl, hide, chotsoi4 
        GuiControl, hide, loaiimplant4 
        GuiControl, hide, loaicaovoi4 
        GuiControl, hide, loainhorang4 
        GuiControl, show, Toothlist4 
	    GuiControl, hide, loainhorangthuthuat4
        GuiControl, hide, loainoinha4
    }
    Case "": {
        GuiControl, hide, phantrambaohiem4 
        GuiControl, hide, loaixoangtram4 
        GuiControl, hide, loairangsu4 
        GuiControl, hide, loairangthaolap4 
        GuiControl, hide, loaiabutment4 
        GuiControl, hide, chotsoi4 
        GuiControl, hide, loaiimplant4 
        GuiControl, hide, loaicaovoi4 
        GuiControl, hide, loainhorang4 
        GuiControl, hide, Toothlist4 
	    GuiControl, hide, loainhorangthuthuat4
        GuiControl, hide, loainoinha4
    }

}
return

Dichvu5:
Gui, Submit, NoHide
Switch Dichvu5 {
    Case "Cạo vôi răng": {
        GuiControl, show, phantrambaohiem5 
        GuiControl, hide, loaixoangtram5 
        GuiControl, hide, loairangsu5 
        GuiControl, hide, loairangthaolap5 
        GuiControl, hide, loaiabutment5 
        GuiControl, hide, chotsoi5 
        GuiControl, hide, loaiimplant5 
        GuiControl, show, loaicaovoi5 
        GuiControl, hide, loainhorang5 
        GuiControl, hide, Toothlist5 
	    GuiControl, hide, loainhorangthuthuat5
	    GuiControl, hide, loainoinha5
    }
    Case "Trám răng": {
        GuiControl, show, phantrambaohiem5 
        GuiControl, show, loaixoangtram5 
        GuiControl, hide, loairangsu5 
        GuiControl, hide, loairangthaolap5 
        GuiControl, hide, loaiabutment5 
        GuiControl, hide, chotsoi5 
        GuiControl, hide, loaiimplant5 
        GuiControl, hide, loaicaovoi5 
        GuiControl, hide, loainhorang5 
        GuiControl, show, Toothlist5 
	    GuiControl, hide, loainhorangthuthuat5
	    GuiControl, hide, loainoinha5
    }
    Case "Nội nha": {
        GuiControl, show, phantrambaohiem5 
        GuiControl, hide, loaixoangtram5 
        GuiControl, hide, loairangsu5 
        GuiControl, hide, loairangthaolap5 
        GuiControl, hide, loaiabutment5 
        GuiControl, hide, chotsoi5 
        GuiControl, hide, loaiimplant5 
        GuiControl, hide, loaicaovoi5 
        GuiControl, hide, loainhorang5 
        GuiControl, show, Toothlist5 
	    GuiControl, hide, loainhorangthuthuat5
	    GuiControl, show, loainoinha5
    }
        Case "Nhổ răng phẫu thuật": {
        GuiControl, show, phantrambaohiem5 
        GuiControl, hide, loaixoangtram5 
        GuiControl, hide, loairangsu5 
        GuiControl, hide, loairangthaolap5 
        GuiControl, hide, loaiabutment5 
        GuiControl, hide, chotsoi5 
        GuiControl, hide, loaiimplant5 
        GuiControl, hide, loaicaovoi5 
        GuiControl, show, loainhorang5 
        GuiControl, show, Toothlist5 
	    GuiControl, hide, loainhorangthuthuat5
        GuiControl, hide, loainoinha5
    }
        Case "Nhổ răng thủ thuật": {
        GuiControl, show, phantrambaohiem5 
        GuiControl, hide, loaixoangtram5 
        GuiControl, hide, loairangsu5 
        GuiControl, hide, loairangthaolap5 
        GuiControl, hide, loaiabutment5 
        GuiControl, hide, chotsoi5 
        GuiControl, hide, loaiimplant5 
        GuiControl, hide, loaicaovoi5 
        GuiControl, hide, loainhorang5
        GuiControl, show, Toothlist5 
	    GuiControl, show, xquang5
	    GuiControl, show, loainhorangthuthuat5
        GuiControl, hide, loainoinha5
    }

        Case "Răng sứ": {
        GuiControl, hide, phantrambaohiem5 
        GuiControl, hide, loaixoangtram5 
        GuiControl, show, loairangsu5 
        GuiControl, hide, loairangthaolap5 
        GuiControl, hide, loaiabutment5 
        GuiControl, hide, chotsoi5 
        GuiControl, hide, loaiimplant5 
        GuiControl, hide, loaicaovoi5 
        GuiControl, hide, loainhorang5 
        GuiControl, show, Toothlist5 
	    GuiControl, hide, loainhorangthuthuat5
        GuiControl, hide, loainoinha5
    }
        Case "Răng tháo lắp": {
        GuiControl, hide, phantrambaohiem5 
        GuiControl, hide, loaixoangtram5 
        GuiControl, hide, loairangsu5 
        GuiControl, show, loairangthaolap5 
        GuiControl, hide, loaiabutment5 
        GuiControl, hide, chotsoi5 
        GuiControl, hide, loaiimplant5 
        GuiControl, hide, loaicaovoi5 
        GuiControl, hide, loainhorang5 
        GuiControl, show, Toothlist5 
	    GuiControl, hide, loainhorangthuthuat5
        GuiControl, hide, loainoinha5
    }

    Case "Implant": {
        GuiControl, hide, phantrambaohiem5 
        GuiControl, hide, loaixoangtram5 
        GuiControl, hide, loairangsu5 
        GuiControl, hide, loairangthaolap5 
        GuiControl, show, loaiabutment5 
        GuiControl, hide, chotsoi5 
        GuiControl, show, loaiimplant5 
        GuiControl, hide, loaicaovoi5 
        GuiControl, hide, loainhorang5 
        GuiControl, show, Toothlist5 
	    GuiControl, hide, loainhorangthuthuat5
        GuiControl, hide, loainoinha5
    }

    Case "Chỉnh nha": {
        GuiControl, hide, phantrambaohiem5 
        GuiControl, hide, loaixoangtram5 
        GuiControl, hide, loairangsu5 
        GuiControl, hide, loairangthaolap5 
        GuiControl, hide, loaiabutment5 
        GuiControl, hide, chotsoi5 
        GuiControl, hide, loaiimplant5 
        GuiControl, hide, loaicaovoi5 
        GuiControl, hide, loainhorang5 
        GuiControl, show, Toothlist5 
	    GuiControl, hide, loainhorangthuthuat5
        GuiControl, hide, loainoinha5
    }

    Case "Tẩy trắng răng": {
        GuiControl, hide, phantrambaohiem5 
        GuiControl, hide, loaixoangtram5 
        GuiControl, hide, loairangsu5 
        GuiControl, hide, loairangthaolap5 
        GuiControl, hide, loaiabutment5 
        GuiControl, hide, chotsoi5 
        GuiControl, hide, loaiimplant5 
        GuiControl, hide, loaicaovoi5 
        GuiControl, hide, loainhorang5 
        GuiControl, hide, Toothlist5 
	    GuiControl, hide, loainhorangthuthuat5
        GuiControl, hide, loainoinha5
    }

    Case "Nội nha lại": {
        GuiControl, show, phantrambaohiem5 
        GuiControl, hide, loaixoangtram5 
        GuiControl, hide, loairangsu5 
        GuiControl, hide, loairangthaolap5 
        GuiControl, hide, loaiabutment5 
        GuiControl, hide, chotsoi5 
        GuiControl, hide, loaiimplant5 
        GuiControl, hide, loaicaovoi5 
        GuiControl, hide, loainhorang5 
        GuiControl, show, Toothlist5 
	    GuiControl, hide, loainhorangthuthuat5
        GuiControl, hide, loainoinha5
    }

    Case "Ghép huyết tương": {
        GuiControl, hide, phantrambaohiem5 
        GuiControl, hide, loaixoangtram5 
        GuiControl, hide, loairangsu5 
        GuiControl, hide, loairangthaolap5 
        GuiControl, hide, loaiabutment5 
        GuiControl, hide, chotsoi5 
        GuiControl, hide, loaiimplant5 
        GuiControl, hide, loaicaovoi5 
        GuiControl, hide, loainhorang5 
        GuiControl, show, Toothlist5 
	    GuiControl, hide, loainhorangthuthuat5
        GuiControl, hide, loainoinha5
    }

    Case "Ghép xương": {
        GuiControl, hide, phantrambaohiem5 
        GuiControl, hide, loaixoangtram5 
        GuiControl, hide, loairangsu5 
        GuiControl, hide, loairangthaolap5 
        GuiControl, hide, loaiabutment5 
        GuiControl, hide, chotsoi5 
        GuiControl, hide, loaiimplant5 
        GuiControl, hide, loaicaovoi5 
        GuiControl, hide, loainhorang5 
        GuiControl, show, Toothlist5 
	    GuiControl, hide, loainhorangthuthuat5
        GuiControl, hide, loainoinha5
    }
    Case "Xquang": {
        GuiControl, hide, phantrambaohiem5 
        GuiControl, hide, loaixoangtram5 
        GuiControl, hide, loairangsu5 
        GuiControl, hide, loairangthaolap5 
        GuiControl, hide, loaiabutment5 
        GuiControl, hide, chotsoi5 
        GuiControl, hide, loaiimplant5 
        GuiControl, hide, loaicaovoi5 
        GuiControl, hide, loainhorang5 
        GuiControl, show, Toothlist5 
	    GuiControl, hide, loainhorangthuthuat5
        GuiControl, hide, loainoinha5
    }
    Case "": {
        GuiControl, hide, phantrambaohiem5 
        GuiControl, hide, loaixoangtram5 
        GuiControl, hide, loairangsu5 
        GuiControl, hide, loairangthaolap5 
        GuiControl, hide, loaiabutment5 
        GuiControl, hide, chotsoi5 
        GuiControl, hide, loaiimplant5 
        GuiControl, hide, loaicaovoi5 
        GuiControl, hide, loainhorang5 
        GuiControl, hide, Toothlist5 
	    GuiControl, hide, loainhorangthuthuat5
        GuiControl, hide, loainoinha5
    }

}
return

Dichvu6:
Gui, Submit, NoHide
Switch Dichvu6 {
    Case "Cạo vôi răng": {
        GuiControl, show, phantrambaohiem6 
        GuiControl, hide, loaixoangtram6 
        GuiControl, hide, loairangsu6 
        GuiControl, hide, loairangthaolap6 
        GuiControl, hide, loaiabutment6 
        GuiControl, hide, chotsoi6 
        GuiControl, hide, loaiimplant6 
        GuiControl, show, loaicaovoi6 
        GuiControl, hide, loainhorang6 
        GuiControl, hide, Toothlist6 
	    GuiControl, hide, loainhorangthuthuat6
	    GuiControl, hide, loainoinha6
    }
    Case "Trám răng": {
        GuiControl, show, phantrambaohiem6 
        GuiControl, show, loaixoangtram6 
        GuiControl, hide, loairangsu6 
        GuiControl, hide, loairangthaolap6 
        GuiControl, hide, loaiabutment6 
        GuiControl, hide, chotsoi6 
        GuiControl, hide, loaiimplant6 
        GuiControl, hide, loaicaovoi6 
        GuiControl, hide, loainhorang6 
        GuiControl, show, Toothlist6 
	    GuiControl, hide, loainhorangthuthuat6
	    GuiControl, hide, loainoinha6
    }
    Case "Nội nha": {
        GuiControl, show, phantrambaohiem6 
        GuiControl, hide, loaixoangtram6 
        GuiControl, hide, loairangsu6 
        GuiControl, hide, loairangthaolap6 
        GuiControl, hide, loaiabutment6 
        GuiControl, hide, chotsoi6 
        GuiControl, hide, loaiimplant6 
        GuiControl, hide, loaicaovoi6 
        GuiControl, hide, loainhorang6 
        GuiControl, show, Toothlist6 
	    GuiControl, hide, loainhorangthuthuat6
	    GuiControl, show, loainoinha6
    }
        Case "Nhổ răng phẫu thuật": {
        GuiControl, show, phantrambaohiem6 
        GuiControl, hide, loaixoangtram6 
        GuiControl, hide, loairangsu6 
        GuiControl, hide, loairangthaolap6 
        GuiControl, hide, loaiabutment6 
        GuiControl, hide, chotsoi6 
        GuiControl, hide, loaiimplant6 
        GuiControl, hide, loaicaovoi6 
        GuiControl, show, loainhorang6 
        GuiControl, show, Toothlist6 
	    GuiControl, hide, loainhorangthuthuat6
        GuiControl, hide, loainoinha6
    }
        Case "Nhổ răng thủ thuật": {
        GuiControl, show, phantrambaohiem6 
        GuiControl, hide, loaixoangtram6 
        GuiControl, hide, loairangsu6 
        GuiControl, hide, loairangthaolap6 
        GuiControl, hide, loaiabutment6 
        GuiControl, hide, chotsoi6 
        GuiControl, hide, loaiimplant6 
        GuiControl, hide, loaicaovoi6 
        GuiControl, hide, loainhorang6
        GuiControl, show, Toothlist6 
	    GuiControl, show, xquang6
	    GuiControl, show, loainhorangthuthuat6
        GuiControl, hide, loainoinha6
    }

        Case "Răng sứ": {
        GuiControl, hide, phantrambaohiem6 
        GuiControl, hide, loaixoangtram6 
        GuiControl, show, loairangsu6 
        GuiControl, hide, loairangthaolap6 
        GuiControl, hide, loaiabutment6 
        GuiControl, hide, chotsoi6 
        GuiControl, hide, loaiimplant6 
        GuiControl, hide, loaicaovoi6 
        GuiControl, hide, loainhorang6 
        GuiControl, show, Toothlist6 
	    GuiControl, hide, loainhorangthuthuat6
        GuiControl, hide, loainoinha6
    }
        Case "Răng tháo lắp": {
        GuiControl, hide, phantrambaohiem6 
        GuiControl, hide, loaixoangtram6 
        GuiControl, hide, loairangsu6 
        GuiControl, show, loairangthaolap6 
        GuiControl, hide, loaiabutment6 
        GuiControl, hide, chotsoi6 
        GuiControl, hide, loaiimplant6 
        GuiControl, hide, loaicaovoi6 
        GuiControl, hide, loainhorang6 
        GuiControl, show, Toothlist6 
	    GuiControl, hide, loainhorangthuthuat6
        GuiControl, hide, loainoinha6
    }

    Case "Implant": {
        GuiControl, hide, phantrambaohiem6 
        GuiControl, hide, loaixoangtram6 
        GuiControl, hide, loairangsu6 
        GuiControl, hide, loairangthaolap6 
        GuiControl, show, loaiabutment6 
        GuiControl, hide, chotsoi6 
        GuiControl, show, loaiimplant6 
        GuiControl, hide, loaicaovoi6 
        GuiControl, hide, loainhorang6 
        GuiControl, show, Toothlist6 
	    GuiControl, hide, loainhorangthuthuat6
        GuiControl, hide, loainoinha6
    }

    Case "Chỉnh nha": {
        GuiControl, hide, phantrambaohiem6 
        GuiControl, hide, loaixoangtram6 
        GuiControl, hide, loairangsu6 
        GuiControl, hide, loairangthaolap6 
        GuiControl, hide, loaiabutment6 
        GuiControl, hide, chotsoi6 
        GuiControl, hide, loaiimplant6 
        GuiControl, hide, loaicaovoi6 
        GuiControl, hide, loainhorang6 
        GuiControl, show, Toothlist6 
	    GuiControl, hide, loainhorangthuthuat6
        GuiControl, hide, loainoinha6
    }

    Case "Tẩy trắng răng": {
        GuiControl, hide, phantrambaohiem6 
        GuiControl, hide, loaixoangtram6 
        GuiControl, hide, loairangsu6 
        GuiControl, hide, loairangthaolap6 
        GuiControl, hide, loaiabutment6 
        GuiControl, hide, chotsoi6 
        GuiControl, hide, loaiimplant6 
        GuiControl, hide, loaicaovoi6 
        GuiControl, hide, loainhorang6 
        GuiControl, hide, Toothlist6 
	    GuiControl, hide, loainhorangthuthuat6
        GuiControl, hide, loainoinha6
    }

    Case "Nội nha lại": {
        GuiControl, show, phantrambaohiem6 
        GuiControl, hide, loaixoangtram6 
        GuiControl, hide, loairangsu6 
        GuiControl, hide, loairangthaolap6 
        GuiControl, hide, loaiabutment6 
        GuiControl, hide, chotsoi6 
        GuiControl, hide, loaiimplant6 
        GuiControl, hide, loaicaovoi6 
        GuiControl, hide, loainhorang6 
        GuiControl, show, Toothlist6 
	    GuiControl, hide, loainhorangthuthuat6
        GuiControl, hide, loainoinha6
    }

    Case "Ghép huyết tương": {
        GuiControl, hide, phantrambaohiem6 
        GuiControl, hide, loaixoangtram6 
        GuiControl, hide, loairangsu6 
        GuiControl, hide, loairangthaolap6 
        GuiControl, hide, loaiabutment6 
        GuiControl, hide, chotsoi6 
        GuiControl, hide, loaiimplant6 
        GuiControl, hide, loaicaovoi6 
        GuiControl, hide, loainhorang6 
        GuiControl, show, Toothlist6 
	    GuiControl, hide, loainhorangthuthuat6
        GuiControl, hide, loainoinha6
    }

    Case "Ghép xương": {
        GuiControl, hide, phantrambaohiem6 
        GuiControl, hide, loaixoangtram6 
        GuiControl, hide, loairangsu6 
        GuiControl, hide, loairangthaolap6 
        GuiControl, hide, loaiabutment6 
        GuiControl, hide, chotsoi6 
        GuiControl, hide, loaiimplant6 
        GuiControl, hide, loaicaovoi6 
        GuiControl, hide, loainhorang6 
        GuiControl, show, Toothlist6 
	    GuiControl, hide, loainhorangthuthuat6
        GuiControl, hide, loainoinha6
    }
    Case "Xquang": {
        GuiControl, hide, phantrambaohiem6 
        GuiControl, hide, loaixoangtram6 
        GuiControl, hide, loairangsu6 
        GuiControl, hide, loairangthaolap6 
        GuiControl, hide, loaiabutment6 
        GuiControl, hide, chotsoi6 
        GuiControl, hide, loaiimplant6 
        GuiControl, hide, loaicaovoi6 
        GuiControl, hide, loainhorang6 
        GuiControl, show, Toothlist6 
	    GuiControl, hide, loainhorangthuthuat6
        GuiControl, hide, loainoinha6
    }
    Case "": {
        GuiControl, hide, phantrambaohiem6 
        GuiControl, hide, loaixoangtram6 
        GuiControl, hide, loairangsu6 
        GuiControl, hide, loairangthaolap6 
        GuiControl, hide, loaiabutment6 
        GuiControl, hide, chotsoi6 
        GuiControl, hide, loaiimplant6 
        GuiControl, hide, loaicaovoi6 
        GuiControl, hide, loainhorang6 
        GuiControl, hide, Toothlist6 
	    GuiControl, hide, loainhorangthuthuat6
        GuiControl, hide, loainoinha6
    }

}
return

Dichvu7:
Gui, Submit, NoHide
Switch Dichvu7 {
    Case "Cạo vôi răng": {
        GuiControl, show, phantrambaohiem7 
        GuiControl, hide, loaixoangtram7 
        GuiControl, hide, loairangsu7 
        GuiControl, hide, loairangthaolap7 
        GuiControl, hide, loaiabutment7 
        GuiControl, hide, chotsoi7 
        GuiControl, hide, loaiimplant7 
        GuiControl, show, loaicaovoi7 
        GuiControl, hide, loainhorang7 
        GuiControl, hide, Toothlist7 
	    GuiControl, hide, loainhorangthuthuat7
	    GuiControl, hide, loainoinha7
    }
    Case "Trám răng": {
        GuiControl, show, phantrambaohiem7 
        GuiControl, show, loaixoangtram7 
        GuiControl, hide, loairangsu7 
        GuiControl, hide, loairangthaolap7 
        GuiControl, hide, loaiabutment7 
        GuiControl, hide, chotsoi7 
        GuiControl, hide, loaiimplant7 
        GuiControl, hide, loaicaovoi7 
        GuiControl, hide, loainhorang7 
        GuiControl, show, Toothlist7 
	    GuiControl, hide, loainhorangthuthuat7
	    GuiControl, hide, loainoinha7
    }
    Case "Nội nha": {
        GuiControl, show, phantrambaohiem7 
        GuiControl, hide, loaixoangtram7 
        GuiControl, hide, loairangsu7 
        GuiControl, hide, loairangthaolap7 
        GuiControl, hide, loaiabutment7 
        GuiControl, hide, chotsoi7 
        GuiControl, hide, loaiimplant7 
        GuiControl, hide, loaicaovoi7 
        GuiControl, hide, loainhorang7 
        GuiControl, show, Toothlist7 
	    GuiControl, hide, loainhorangthuthuat7
	    GuiControl, show, loainoinha7
    }
        Case "Nhổ răng phẫu thuật": {
        GuiControl, show, phantrambaohiem7 
        GuiControl, hide, loaixoangtram7 
        GuiControl, hide, loairangsu7 
        GuiControl, hide, loairangthaolap7 
        GuiControl, hide, loaiabutment7 
        GuiControl, hide, chotsoi7 
        GuiControl, hide, loaiimplant7 
        GuiControl, hide, loaicaovoi7 
        GuiControl, show, loainhorang7 
        GuiControl, show, Toothlist7 
	    GuiControl, hide, loainhorangthuthuat7
        GuiControl, hide, loainoinha7
    }
        Case "Nhổ răng thủ thuật": {
        GuiControl, show, phantrambaohiem7 
        GuiControl, hide, loaixoangtram7 
        GuiControl, hide, loairangsu7 
        GuiControl, hide, loairangthaolap7 
        GuiControl, hide, loaiabutment7 
        GuiControl, hide, chotsoi7 
        GuiControl, hide, loaiimplant7 
        GuiControl, hide, loaicaovoi7 
        GuiControl, hide, loainhorang7
        GuiControl, show, Toothlist7 
	    GuiControl, show, xquang7
	    GuiControl, show, loainhorangthuthuat7
        GuiControl, hide, loainoinha7
    }

        Case "Răng sứ": {
        GuiControl, hide, phantrambaohiem7 
        GuiControl, hide, loaixoangtram7 
        GuiControl, show, loairangsu7 
        GuiControl, hide, loairangthaolap7 
        GuiControl, hide, loaiabutment7 
        GuiControl, hide, chotsoi7 
        GuiControl, hide, loaiimplant7 
        GuiControl, hide, loaicaovoi7 
        GuiControl, hide, loainhorang7 
        GuiControl, show, Toothlist7 
	    GuiControl, hide, loainhorangthuthuat7
        GuiControl, hide, loainoinha7
    }
        Case "Răng tháo lắp": {
        GuiControl, hide, phantrambaohiem7 
        GuiControl, hide, loaixoangtram7 
        GuiControl, hide, loairangsu7 
        GuiControl, show, loairangthaolap7 
        GuiControl, hide, loaiabutment7 
        GuiControl, hide, chotsoi7 
        GuiControl, hide, loaiimplant7 
        GuiControl, hide, loaicaovoi7 
        GuiControl, hide, loainhorang7 
        GuiControl, show, Toothlist7 
	    GuiControl, hide, loainhorangthuthuat7
        GuiControl, hide, loainoinha7
    }

    Case "Implant": {
        GuiControl, hide, phantrambaohiem7 
        GuiControl, hide, loaixoangtram7 
        GuiControl, hide, loairangsu7 
        GuiControl, hide, loairangthaolap7 
        GuiControl, show, loaiabutment7 
        GuiControl, hide, chotsoi7 
        GuiControl, show, loaiimplant7 
        GuiControl, hide, loaicaovoi7 
        GuiControl, hide, loainhorang7 
        GuiControl, show, Toothlist7 
	    GuiControl, hide, loainhorangthuthuat7
        GuiControl, hide, loainoinha7
    }

    Case "Chỉnh nha": {
        GuiControl, hide, phantrambaohiem7 
        GuiControl, hide, loaixoangtram7 
        GuiControl, hide, loairangsu7 
        GuiControl, hide, loairangthaolap7 
        GuiControl, hide, loaiabutment7 
        GuiControl, hide, chotsoi7 
        GuiControl, hide, loaiimplant7 
        GuiControl, hide, loaicaovoi7 
        GuiControl, hide, loainhorang7 
        GuiControl, show, Toothlist7 
	    GuiControl, hide, loainhorangthuthuat7
        GuiControl, hide, loainoinha7
    }

    Case "Tẩy trắng răng": {
        GuiControl, hide, phantrambaohiem7 
        GuiControl, hide, loaixoangtram7 
        GuiControl, hide, loairangsu7 
        GuiControl, hide, loairangthaolap7 
        GuiControl, hide, loaiabutment7 
        GuiControl, hide, chotsoi7 
        GuiControl, hide, loaiimplant7 
        GuiControl, hide, loaicaovoi7 
        GuiControl, hide, loainhorang7 
        GuiControl, hide, Toothlist7 
	    GuiControl, hide, loainhorangthuthuat7
        GuiControl, hide, loainoinha7
    }

    Case "Nội nha lại": {
        GuiControl, show, phantrambaohiem7 
        GuiControl, hide, loaixoangtram7 
        GuiControl, hide, loairangsu7 
        GuiControl, hide, loairangthaolap7 
        GuiControl, hide, loaiabutment7 
        GuiControl, hide, chotsoi7 
        GuiControl, hide, loaiimplant7 
        GuiControl, hide, loaicaovoi7 
        GuiControl, hide, loainhorang7 
        GuiControl, show, Toothlist7 
	    GuiControl, hide, loainhorangthuthuat7
        GuiControl, hide, loainoinha7
    }

    Case "Ghép huyết tương": {
        GuiControl, hide, phantrambaohiem7 
        GuiControl, hide, loaixoangtram7 
        GuiControl, hide, loairangsu7 
        GuiControl, hide, loairangthaolap7 
        GuiControl, hide, loaiabutment7 
        GuiControl, hide, chotsoi7 
        GuiControl, hide, loaiimplant7 
        GuiControl, hide, loaicaovoi7 
        GuiControl, hide, loainhorang7 
        GuiControl, show, Toothlist7 
	    GuiControl, hide, loainhorangthuthuat7
        GuiControl, hide, loainoinha7
    }

    Case "Ghép xương": {
        GuiControl, hide, phantrambaohiem7 
        GuiControl, hide, loaixoangtram7 
        GuiControl, hide, loairangsu7 
        GuiControl, hide, loairangthaolap7 
        GuiControl, hide, loaiabutment7 
        GuiControl, hide, chotsoi7 
        GuiControl, hide, loaiimplant7 
        GuiControl, hide, loaicaovoi7 
        GuiControl, hide, loainhorang7 
        GuiControl, show, Toothlist7 
	    GuiControl, hide, loainhorangthuthuat7
        GuiControl, hide, loainoinha7
    }
    Case "Xquang": {
        GuiControl, hide, phantrambaohiem7 
        GuiControl, hide, loaixoangtram7 
        GuiControl, hide, loairangsu7 
        GuiControl, hide, loairangthaolap7 
        GuiControl, hide, loaiabutment7 
        GuiControl, hide, chotsoi7 
        GuiControl, hide, loaiimplant7 
        GuiControl, hide, loaicaovoi7 
        GuiControl, hide, loainhorang7 
        GuiControl, show, Toothlist7 
	    GuiControl, hide, loainhorangthuthuat7
        GuiControl, hide, loainoinha7
    }
    Case "": {
        GuiControl, hide, phantrambaohiem7 
        GuiControl, hide, loaixoangtram7 
        GuiControl, hide, loairangsu7 
        GuiControl, hide, loairangthaolap7 
        GuiControl, hide, loaiabutment7 
        GuiControl, hide, chotsoi7 
        GuiControl, hide, loaiimplant7 
        GuiControl, hide, loaicaovoi7 
        GuiControl, hide, loainhorang7 
        GuiControl, hide, Toothlist7 
	    GuiControl, hide, loainhorangthuthuat7
        GuiControl, hide, loainoinha7
    }

}
return