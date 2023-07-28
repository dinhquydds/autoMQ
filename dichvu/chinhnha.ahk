If (Dichvu%A_Index% = "Chỉnh nha"){
    danhsachchinhnha := StrSplit(Trim(toothlist%A_Index%), A_Space)
    if (danhsachchinhnha.Length() == 1){
        x := y := danhsachchinhnha[1]
    } else if (danhsachchinhnha.Length() == 2) {
        x := danhsachchinhnha[1]
        y := danhsachchinhnha[2]
        if (x<1 or x>y or y>45) {
            MsgBox Bạn nhập sai `n
            return
        }
    } else {
        MsgBox Bạn nhập sai
        Continue
    }
    ; FormatTime, giochidinh%A_index%, %time%, HH:mm
    ICD%A_Index% := "K00.6"
    vocam%A_Index% := "00"
    thoigianthuthuat%A_Index% := 1 ;
    noidung := "chinhnha"
    Loopcount := y - x + 1

    ;nhap chi dinh
    index := A_index ; luu index
    i := x
    mof7()
    While (i<=y) {
        z := 13 + i
        madichvu = CHI0%z%
        nhapchidinh(madichvu, phantrambaohiem%Index%, giochidinh, ghichu)
        i++ 
        sleep 100
    }

    nhanketthuc()
    mabenhnhan := laymabenhnhan()
    ;nhaptuongtrinh

    CoordMode, Mouse, Screen

    Sleep 1000
    mof6()
    i := x
    Loop, %Loopcount% {
     
    Sleep 1000

    MouseClick, L, 567, 845 ;Click mới
    Sleep 500
    MouseClick, L, 643, 846 ; Click Danh sách

    tt = Danh sách chỉ định
    WinWait, %tt%
    IfWinNotActive, %tt%,, WinActivate, %tt%

    ; gui ma benh nhan
    Sleep 100
    MouseClick, L, 146, 110
    Sleep 100
    Send %mabenhnhan%
    Sleep 100
    Send {Enter}
    Sleep 500
    MouseClick, Left, 680, 90, 1 ; sap xep theo thoi gian
    Sleep 300    
    MouseClick, Left, 500 , 133, 1 ; lay chi dinh
    Sleep 200
    Clipboard =
    Send ^a
    Sleep 100
    Send ^c
    ClipWait
    chidinhchinhnha := Clipboard
    Sleep 100
    ; MsgBox %chidinhchinhnha%
    chidinhchinhnha := StrReplace(chidinhchinhnha, "[", "")
    chidinhchinhnha := StrReplace(chidinhchinhnha, "]", "")

; lay ma chi dinh, phuong phap vo cam va tuong trinh

    if (!chidinhchinhnha){ ; neu khong co chi dinh thi ket thuc
    MouseClick, Left, 728 , 43, 1 ; nhan ket thuc
    Msgbox Da nhap xong tuong trinh
    return
    }


    ; FormatTime, ngaytuongtrinh, %time%, dd/MM/yyyy ; format the time
    FormatTime, giobatdau, %time%, HH:mm ; format the time
    ; EnvAdd, time, 10 , Minits ; them 30 phut
    FormatTime, gioketthuc, %time%, HH:mm ; format the time
    EnvAdd, time, 1 ,Minits ; them 30 phut

    MouseClick, Left , 65, 130 ; Click chọn thủ thuật

    tt = Thông tin phẫu thủ thuật
    WinWait, %tt%
    IfWinNotActive, %tt%,, WinActivate, %tt%

; chon rang ham mat
    MouseClick, L, 1252, 211
    Sleep, 300
    MouseClick, L, 1207, 293

    Send {tab 2}
    Sleep 100
    Send, %giobatdau%
    Sleep 100
    Send {tab}
    Sleep 100
    ;Send %ngaytuongtrinh%
    Sleep 100
    Send {tab}
    Send, %gioketthuc%
    Sleep 500
    Send {tab}
    Sleep 100
    ;Send %ngaytuongtrinh%
    Sleep 100
    Send {tab}
    Sleep 100
    Send, %giobatdau%
    Sleep 100
    Send {tab}
    Sleep 100
    ;Send %ngaytuongtrinh%
    Sleep 100
    Send {tab}
    Send, %gioketthuc%
    Sleep 100
    Send {tab 2}
    Send K00.6
    Sleep 100
    Send {tab 2}
    Send K00.6
    Sleep 100
    Send {tab 3}
    Sleep 100
    Send %chidinhchinhnha%
    Sleep 1000
    Send {enter}
    Sleep 100
    Send {enter}
    Sleep 100
    Send {tab 2}
    Sleep 100
    Send %vocam%
    Sleep 500
    Send {tab 2}
    Sleep 100
    nhapPTV()
    Sleep 100
    ; nhap noi dung tuong trinh
    Send !t
    Sleep 500
    MouseClick, Left, 1000, 500
    Sleep 500
    Send ^a
    Sleep 100
    Send {del}
    Sleep 100
    Sendraw, Gắn mắc cài

    Sleep 500
    Send {f6} ;Lưu
    Sleep 500
	Send !y
	Sleep 1000
    

    i += 1
    }

    nhanketthuc()
}