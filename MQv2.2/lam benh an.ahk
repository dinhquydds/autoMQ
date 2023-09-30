
#SingleInstance Force
#Warn All, Off  ; Enable warnings to assist with detecting common errors.

tenbenhvien := "BỆNH VIỆN ĐẠI HỌC Y DƯỢC BUÔN MA THUỘT"
myGui := Gui(, "Tự động nhập bệnh án")
MyGui.SetFont("s10", "Arial")
#Include danhsachdichvu.ahk
#Include glabel1.ahk
#Include danhsachnhansu.ahk
#Include ButtonDangNhap.ahk
#Include ButtonMoXQuang.ahk
#Include ButtonMo7phongkham.ahk

danhmucNoiNha := ["Nội nha lần đầu", "Nội nha lại", "Nội nha lần đầu (gây mê)", "Nội nha lại (gây mê)"]


User := MyGui.Add("DropDownList", "X10 Y10  h10 R50 Sort", danhsachUser)
MyGui.Add("Button", "x+10 yp", "Đăng Nhập").OnEvent("Click", button_dangnhap_click)
MyGui.Add("Button", "x+10 yp", "X-quang").OnEvent("Click", button_moxquang_click)
MyGui.Add("Button", "x+10 yp", "Phòng khám").OnEvent("Click", button_mo7phongkham_click)


; dich vu 1
Dichvu1 := MyGui.Add("DropDownList", "x10 yp+35 R20 Sort", TatCaDichVu)
Dichvu1.OnEvent("Change", chondichvu1)
Chidinh1 := MyGui.Add("DropDownList", "x230 yp w200 R30")
Toothlist1 := MyGui.Add("Edit", "x440 yp w200") ;toothlist

; dich vu 2
Dichvu2 := MyGui.Add("DropDownList", "x10 yp+35 R20 Sort", TatCaDichVu)
Dichvu2.OnEvent("Change", chondichvu2)
Chidinh2 := MyGui.Add("DropDownList", "x230 yp w200 R30")
Toothlist2 := MyGui.Add("Edit", "x440 yp w200") ;toothlist

; dich vu 3
Dichvu3 := MyGui.Add("DropDownList", "x10 yp+35 R20 Sort", TatCaDichVu)
Dichvu3.OnEvent("Change", chondichvu3)
Chidinh3 := MyGui.Add("DropDownList", "x230 yp w200 R30")
Toothlist3 := MyGui.Add("Edit", "x440 yp w200") ;toothlist

; dich vu 4
Dichvu4 := MyGui.Add("DropDownList", "x10 yp+35 R20 Sort", TatCaDichVu)
Dichvu4.OnEvent("Change", chondichvu4)
Chidinh4 := MyGui.Add("DropDownList", "x230 yp w200 R30")
Toothlist4 := MyGui.Add("Edit", "x440 yp w200") ;toothlist

; dich vu 5
Dichvu5 := MyGui.Add("DropDownList", "x10 yp+35 R20 Sort", TatCaDichVu)
Dichvu5.OnEvent("Change", chondichvu5)
Chidinh5 := MyGui.Add("DropDownList", "x230 yp w200 R30")
Toothlist5 := MyGui.Add("Edit", "x440 yp w200") ;toothlist

; dich vu 6
Dichvu6 := MyGui.Add("DropDownList", "x10 yp+35 R20 Sort", TatCaDichVu)
Dichvu6.OnEvent("Change", chondichvu6)
Chidinh6 := MyGui.Add("DropDownList", "x230 yp w200 R30")
Toothlist6 := MyGui.Add("Edit", "x440 yp w200") ;toothlist

; dich vu 7
Dichvu7 := MyGui.Add("DropDownList", "x10 yp+35 R20 Sort", TatCaDichVu)
Dichvu7.OnEvent("Change", chondichvu7)
Chidinh7 := MyGui.Add("DropDownList", "x230 yp w200 R30")
Toothlist7 := MyGui.Add("Edit", "x440 yp w200") ;toothlist

myGui.Add("Button", , "OK").OnEvent("Click", nhapBenhAn)

myGui.Show


; function


#Include function.ahk


nhapBenhAn(ctrl, *)
{
    SetTitleMatchMode 2
    CoordMode "Mouse", "Screen"
    WinWaitActiveWindow(tenbenhvien)
    Sleep 100

    rowNum := 7
    listChidinh := [] ; chidnh, bao hiem danhsachrang
    loop rowNum
    {
        if not Dichvu%A_Index%.Text
            continue
        if not Chidinh%A_Index%.Text
        {
            MsgBox "Chưa nhập dịch vụ"
            MyGui.Show
            return
        }
        temp := layChiDinh(Dichvu%A_Index%.Text, Chidinh%A_Index%.Text, "100", Toothlist%A_Index%.Text)
        if InStr(temp[1], "Fail")
        {
            MsgBox temp[1]
            MyGui.Show
            return
        }
        listChidinh.Push([temp[2], temp[3], temp[4]]) ; chi dinh, bao hiem danh sach rang
    }

    ; reset param
    lyDoVaoVien := ""
    quaTrinhbenhly := ""
    khamChuyenKhoa := ""
    tomTatBenhAn := ""
    dieuTriDenNgay := ""
    tomTatBenhLyVaDienBienLamSang := ""
    canlamsang := ""
    ICDbenhChinh := ""
    ICDbenhPhu := ""
    phuongPhapDieuTri := ""
    huongDieuTriTiep := ""
    for i in listChidinh ; vong lap qua danh sach chi dinh
    {

        ; neu cao voi rang
        if InStr(i[1], "Cạo vôi răng")
            {
                lyDoVaoVien .= " chảy máu nướu răng"
                khamChuyenKhoa :=  "Cao răng mảng bám 2 hàm `nNướu sưng đỏ, chảy máu khi thăm khám `n"

            }
        

        if InStr(i[1], "Cắt thắng")
            {
                lyDoVaoVien .= " nói ngọng, vận động lưỡi khó"
                khamChuyenKhoa .= "Bệnh nhân nói ngọng `nCo kéo đầu lưỡi, lưỡi vận động hạn chế `n"
            }
        

        if InStr(i[1], "Implant") or InStr(i[1], "Abutment") or InStr(i[1], "tháo lắp")
            {
                lyDoVaoVien .= " mất răng " 
                khamChuyenKhoa .= "Mất răng " . join(i[3]) . "`n"

            }
        

        if InStr(i[1], "Nhổ") or InStr(i[1], "tủy")
            {
                lyDoVaoVien .= " đau răng " 
                khamChuyenKhoa .= "Răng " . i[3][1] . " đau nhức, gõ ngang gõ dọc đau `n"

            }
        


        if InStr(i[1], "Sứ") or InStr(i[1], "Veneer")
            {
                lyDoVaoVien .= " răng bị vỡ lớn " 
                khamChuyenKhoa .= "Răng " . join(i[3]) . " vỡ lớn, khó khăn khi ăn nhai `n"

            }
                
        quaTrinhbenhly := "Bệnh nhân khai " . lyDoVaoVien . " nên vào viện điều trị `n"
        
        
        
    }
    khamChuyenKhoa .= "Miệng há được `n"
    tomTatBenhAn := quaTrinhbenhly . khamChuyenKhoa
    tomTatBenhLyVaDienBienLamSang := tomTatBenhAn




    ;ly do vao vien
    Send lyDoVaoVien
    Sleep 100
    Send "{Blind}{Tab}"
    Sleep 100
    ;Qua trinh benh ly
    Send quaTrinhbenhly
    Sleep 100
    Send "{Tab}"
    Sleep 100
    ; tien su ban than
    Send "Chưa dị ứng thuốc đã dùng"
    Send "{Tab}"
    Sleep 100
    ; ; tien su gia dinh
    Send "Khỏe"
    Send "{Tab}"
    Sleep 100
    ; Kham benh toan toan
    Send "Bệnh nhân tỉnh táo, tiếp xúc tốt {enter}Da niêm mạc hồng hào"
    Send "{Tab}"
    Sleep 100

    ; Kham benh chuyen khoa
    Send khamChuyenKhoa

    Send "{Tab}"
    Sleep 100

    Send "{Blind}80{Tab}37{Tab}12080{Tab}20{Tab}50{Tab}160"

    Sleep 500

    MouseClick "L", 295, 152

    Sleep 300

    MouseClick "L", 614, 427

    Sleep 100
    ;tom tat benh an
    Send tomTatBenhAn
    Send "{Tab 2}"
    Sleep 100

    ;dieu tri tuyen duoi
    Send "Chưa"
    Send "{Tab}"
    Sleep 100

    ;den ngay
    Send FormatTime(A_Now, "dd/MM/yyyy")

    Sleep 500

    MouseClick "L", 347, 155

    Sleep 100

    MouseClick "L", 393, 238

    Sleep 187

    ;qua trinh bênh ly va dien bien lam sang
    Send tomTatBenhLyVaDienBienLamSang

    Send "{Tab}"
    Sleep 100
    ; tom tat can lam sang
    Send canlamsang

    Send "{Tab}"
    Sleep 100

    ; benh chinh
    Send "{tab 2}"
    ; benh kem
    Send "{tab 3}"

    ; phuong phap dieu tri
    Send "Cạo vôi răng      Cắt thắng lưỡi      Nhổ răng      Trám răng     Điều trị tuỷ răng" 

    Send "{Tab}"
    Sleep 100

    ; tinh trang ra vien
    Send "Bệnh ổn"

    Send "{Tab}"
    Sleep 100

    ; huong dieu trị
    Send "Tái khám định kỳ 6 tháng/lần"

    Send "{Tab}"
    Sleep 100
    ; nguoi giao ho so
    Send "0341 {tab}"
    Sleep 1000
    MyGui.Show
    listChidinh := [] ;reset variable
    return
}

join(arr){
    out := ""
    if arr.Length = 1
        return arr[1]
    for i in arr
        {
            out .= i . ", "
        }
    ; out := SubStr(out, -2)
    return  SubStr(out, 1 , StrLen(out) - 2)

}