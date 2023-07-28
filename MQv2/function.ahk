﻿getStartTime(StartHour, StartMinute) {
    tmptime := FormatTime(A_Now, "yyyyMMdd") 
	if (StartHour < 0) or (StartHour > 24)
		{
			MsgBox "Bạn nhập sai giờ"
		}
	if (StartMinute < 0) or (StartMinute > 60)
		{
			MsgBox "Bạn nhập sai giờ"
		}

	if (StartHour < 10)
		StartHour := Format("0{1}", StartHour)
	if (StartMinute < 10)
		StartMinute := Format("0{1}", StartMinute)
	tmptime := Format("{1}{2}{3}00", tmptime, StartHour,StartMinute)
	return tmptime
}

nhapchidinh(Machidinh, phantrambaohiem, giochidinh, ghichu:="")
{
    ; global User
    SetTitleMatchMode 2
    CoordMode "Mouse", "Screen"
    WinWaitActiveWindow("Chỉ định dịch vụ")
    MouseClick "L", 260, 884
    Send "{Blind}{Alt Down}m{Alt Up}"
    
    WinWaitActiveWindow("Chỉ định dịch vụ")

    if WinExist("MQ Solutions")
        {
            MyGui.Show()
            Reload
        }

    Send "{Blind}{Shift Down}{Tab}{Shift Up}"
    MouseClick "L", 146, 881
    Sleep 100
    Send machidinh
    Sleep 100
    Send "{tab}" ; Sửa thành 1 tab, hỏi có đồng ý dịch vụ, click chuột...
    Sleep 100
    Send "!y"
    WinWaitActiveWindow("Chỉ định dịch vụ")
    ; nhap bac si chi dinh
    MouseClick "L", 112, 815
    Sleep 100
    Send "^a"
    Sleep 100
    Send "{Delete}"
    Sleep 100
    Send thongTinNhanSu[user.Text][3]
    Sleep 100
    ;Send {tab 11}
    

    Sleep 100
    ;Send {tab 2}
    MouseClick "L", 225, 950
    Sleep 100
    Send ghichu
    Sleep 100
    Send "{tab 2}"
    Sleep 100
    Send giochidinh
    Send "!l"
    Sleep 500
    Send "!y"

    WinWaitActiveWindow("Chỉ định dịch vụ")
    ; sửa phần trăm bảo hiểm nếu khác 100
    If (Phantrambaohiem != 100 and Phantrambaohiem != "")
    {

        MouseClick "L", 800, 155
        Sleep 100
        Send "^a"
        Sleep 300
        Send ghichu
        Sleep 200
        Send "{down 20}"
        Send "!s"

        WinWaitActiveWindow("Chỉ định dịch vụ")
        ;Controlsettext, WindowsForms10.EDIT.app.0.fcf9a4_r7_ad112, %Phantrambaohiem%, ahk_exe MQHIS.exe
        Send "{tab 6}"
        Sleep 200
        Send "^a"
        Sleep 100
        Send Phantrambaohiem
        Sleep 100
        Send "!l"
        Sleep 500
        Send "!y"

        WinWaitActiveWindow("Chỉ định dịch vụ")
        MouseClick "L", 800, 155
        Sleep 100
        Send "^a"
        Sleep 100
        Send "{del}"
    }

	Sleep 500

}

nhaptuongtrinh(ICD, Mathuthuat, thoigianthuthuat, Vocam, noidungtuongtrinh, ghichu:=""){

    CoordMode "Mouse", "Screen"
    global gioNhapTuongTrinh, mabenhnhan
    ; global time, dichvu1, dichvu2, dichvu3 , dichvu4, dichvu5, dichvu6, dichvu7, mabenhnhan
    Sleep 1000
    MouseClick "L", 567, 845 ;Click mới
    Sleep 300
    ; chon chi dinh
    MouseClick "L", 643, 846 ; Click Danh sách

    WinWaitActiveWindow("Danh sách chỉ định")
    ; gui ma benh nhan
    MouseClick "L", 146, 110
    Sleep 200
    Send mabenhnhan
    Sleep 200
    Send "{Enter}"
    MouseClick "Left" , 65, 130 ; Click chọn thủ thuật

    WinWaitActiveWindow("Thông tin phẫu thủ thuật")
    ; lay ngay gio
    giobatdau := FormatTime(gioNhapTuongTrinh, "HH:mm")
    gioNhapTuongTrinh := DateAdd(gioNhapTuongTrinh, thoigianthuthuat, "Minutes")
    gioketthuc := FormatTime(gioNhapTuongTrinh, "HH:mm")
    gioNhapTuongTrinh := DateAdd(gioNhapTuongTrinh, "1", "Minutes")
    Sleep 300

; chon rang ham mat
    MouseClick "L", 1252, 211
    Sleep 300
    MouseClick "L", 1207, 293

; nhap gio thu thuat
    Send "{tab 2}"
    Send giobatdau
    Sleep 100
    Send "{tab 2}"
    Sleep 100
    Send gioketthuc
    Sleep 100
    Send "{tab 2}"
    Send giobatdau
    Sleep 100
    Send "{tab 2}"
    Sleep 100
    Send gioketthuc
    Sleep 100
    Send "{tab 2}"
    Send ICD
    Sleep 100
    Send "{tab 2}"
    Send ICD
    Sleep 100
    Send "{tab 2}"
    Sleep 100
    If isToothNumber(ghichu)
        Send "Răng " ghichu

    Send "{tab}"
    Sleep 100
    Send mathuthuat
    Sleep 1000
    Send "{enter}"
    Sleep 500
    Send "{enter}"
    Sleep 100
    Send "{tab 2}"
    Sleep 200
    Send vocam
    Sleep 100
    Send "{tab 2}"
    Sleep 100

    nhapPTV()
    Sleep 100

    ; nhap noi dung tuong trinh
    Send "!t"
    Sleep 500
    MouseClick "Left", 1000, 500
    Sleep 100
    Send "^a"
    Sleep 200
    Send "{del}"
    Sleep 200
    tuongtrinh%noidungtuongtrinh%(ghichu)

    Sleep 500

    Send "{f6}" ;Lưu
    Sleep 1000
    Send "!y"
    Sleep 1000

    WinWaitActiveWindow("Thông tin phẫu thủ thuật")
}

nhanketthuc(){
    Sleep 500
    ControlClick("&Kết thúc", "ahk_exe MQHIS.exe")
    WinWaitActiveWindow(tenbenhvien)
}

isToothNumber(toothNumber){
    if (isPermanentToothNumber(toothNumber) or isMilkToothNumber(toothNumber))
        return True
    else return False
}

isPermanentToothNumber(toothNumber){
    if (Strlen(toothNumber) != 2)
        return False
    if InStr(ranghamtren, toothNumber) or InStr(ranghamduoi, toothNumber)
        return true
}

isMilkToothNumber(toothNumber){
    if (Strlen(toothNumber) != 2)
        {
            return False
        }
    if InStr(rangsuahamtren, toothNumber) or InStr(rangsuahamduoi, toothNumber)
        return true
}

laydanhsachrang(info){
    local danhsachrang
    danhsachrang := StrSplit(Trim(info), A_Space)
    if danhsachrang.Length = 0
        return []
    for tooth in danhsachrang
        {
            if not isToothNumber(tooth)
                return []
        }
    return danhsachrang
}

mof6(){
    WinWaitActiveWindow(tenbenhvien)
    Send "{f6}"
    WinWaitActiveWindow("Thông tin phẫu thủ thuật")
}

mof7()
{
    Send "{f7}"
    WinWaitActiveWindow("Chỉ định dịch vụ")
    Sleep 1000
}


dangnhapMQ(tendangnhap, matkhau)
{
    Send tendangnhap
    Sleep 100
    Send "{tab}"
    Sleep 100
    Send matkhau
    Sleep 100
    Send "{tab}"
    ControlClick("Đăng nhập", "ĐĂNG NHẬP HỆ THỐNG")
}


moxquang()
{
    if not WinExist("MQRIS - [X QUANG]")
        {
        if not WinExist("MQRIS")
            {
                try
                    Run("MQRIS.exe", "D:\MQSOFT\MQRIS\bin\Debug")
                catch
                    MsgBox "Không tìm thấy file"
                WinWaitActiveWindow("ĐĂNG NHẬP HỆ THỐNG")
                dangnhapMQ("sonnt", "123456")
                Sleep 3000
            }
        WinWaitActiveWindow("MQRIS")
        Sleep 100
        Send "!1"
        Send "{Down 12}"
        Send "{Enter}"
        if WinWait("Chọn thông tin làm việc", , 30)
            {
            WinActivate("Chọn thông tin làm việc")
            Send "0360"
            Sleep 100
            Send "{Tab}"
            Sleep 500
            ControlClick("Đồng ý", "ahk_exe MQRIS.exe", , "Left", 1)
            Sleep 2000
            }
        else
            {
                MsgBox "Không tìm thấy file"
                Reload
            }
        }
    WinActivate("MQRIS - [X QUANG]")
    Sleep 1000
}

nhapPTV(){
Global IDbacsy, IDphuta, IDvongtrong, IDvongngoai
Send IDbacsy
Send "{tab 2}"
Send IDphuta
Send "{tab 2}"
Send "{tab 8}"
Send IDvongtrong
Send "{tab 2}"
Send IDvongngoai
Send "{tab}"
}

; MatchBetween(Haystack,char1,char2) {
;     Matches :=
;     pos1 := InStr(Haystack, char1,, 1)
;     pos2 := InStr(Haystack, char2,, 1)
;     Matches := SubStr(Haystack,pos1+1,pos2-pos1-1)
;     return Matches
; }

; ^+q::
;     Loop, 3
; 	{
; 	If WinExist("BỆNH VIỆN ĐẠI HỌC Y DƯỢC BUÔN MA THUỘT")
; 		WinClose
; 	Sleep 100
; 	}

;     Run MQHIS, D:\MQSOFT\MQHIS\bin\Debug
;     Winwaitdangnhap()
;     dangnhapMQ("quynd", "1")
;     Sleep 500
;     ;dang nhap xquang
;     moxquang()
;     Sleep 500
;     WinwaitMQHIS()
;     Goto, ButtonMở7phòngkhám
; Return


; ^!i::
; Clipboard :=
; ControlGetText, Clipboard, WindowsForms10.EDIT.app.0.fcf9a4_r7_ad124, ahk_exe mqhis.exe ; lay id benh nhan
; return

laymabenhnhan(){
    A_Clipboard := ""
    Sleep 500
    MouseClick("L", 109, 128)
    MouseClick("L", 109, 128)
    Sleep 500
    MouseClick("R", 109, 128)
    Sleep 500
    MouseClick("L", 173, 193)
    ClipWait
    return A_Clipboard
}

ranghamtren := "18 17 16 15 14 13 12 11 21 22 23 24 25 26 27 28"
ranghamduoi := "38 37 36 35 34 33 32 31 41 42 43 44 45 46 47 48"
rangsuahamtren := " 51 52 53 54 55 61 62 63 64 65"
rangsuahamduoi := "71 72 73 74 75 81 82 83 84 85"
rangsua := "51 52 53 54 55 61 62 63 64 65 71 72 73 74 75 81 82 83 84 85"
rangvinhvien := "18 17 16 15 14 13 12 11 21 22 23 24 25 26 27 28 38 37 36 35 34 33 32 31 41 42 43 44 45 46 47 48"
::rang2ham::18 17 16 15 14 13 12 11 21 22 23 24 25 26 27 28{enter}38 37 36 35 34 33 32 31 41 42 43 44 45 46 47 48
::hamtren::17 16 15 14 13 12 11 21 22 23 24 25 26 27
::hamduoi::37 36 35 34 33 32 31 41 42 43 44 45 46 47
::caorang2ham::Cao răng hai hàm

; ::dxnrk::
; SetTitleMatchMode, 2
; CoordMode, Mouse, Screen

; tt = BỆNH VIỆN ĐẠI HỌC Y DƯỢC BUÔN MA THUỘT 
; WinWait, %tt%
; IfWinNotActive, %tt%,, WinActivate, %tt%

; Sleep, 100

; MouseClick, L, 482, 83

; Sleep, 500

; MouseClick, L, 563, 349

; Sleep, 1000

; tt = PHIẾU ĐỀ XUẤT ĐIỀU TRỊ 
; WinWait, %tt%
; IfWinNotActive, %tt%,, WinActivate, %tt%

; Sleep, 500

; MouseClick, L, 1053, 873

; Sleep, 500

; MouseClick, L, 867, 401

; Sleep, 890

; Send {Blind}k01

; Sleep, 100

; Send {Blind}{Enter}

; Sleep, 100

; MouseClick, L, 903, 490

; Sleep, 100

; Send Phẫu thuật nhổ răng khôn mọc lệch hàm dưới

; Sleep, 100

; Send {Blind}{Down}{Down}{Down}{Down}{Down}{Down}{Down}{Down}{Down}

; Sleep, 500

; Send {Blind}{Enter}

; Sleep, 100

; MouseClick, L, 900, 541

; Sleep, 100

; Send Răng 18 28 38 48

; Sleep, 100

; Send {tab} Do chân răng … nằm sát dây thần kinh, nên sau khi nhổ răng… có thể bị tê môi, lưỡi, cằm trong thời gian ngắn. Sau nhổ răng có thể bị sưng, đau, rỉ máu vài ngày. BN đồng ý nhổ răng ... chi phí ...

; Return

; ::dxtr::
; SetTitleMatchMode, 2
; CoordMode, Mouse, Screen

; tt = BỆNH VIỆN ĐẠI HỌC Y DƯỢC BUÔN MA THUỘT 
; WinWait, %tt%
; IfWinNotActive, %tt%,, WinActivate, %tt%

; Sleep, 100

; MouseClick, L, 482, 83

; Sleep, 500

; MouseClick, L, 563, 349

; Sleep, 1000

; tt = PHIẾU ĐỀ XUẤT ĐIỀU TRỊ 
; WinWait, %tt%
; IfWinNotActive, %tt%,, WinActivate, %tt%

; Sleep, 500

; MouseClick, L, 1053, 873

; Sleep, 500

; MouseClick, L, 867, 401

; Sleep, 890

; Send {Blind}k02

; Sleep, 100

; Send {Blind}{Enter}

; Sleep, 100

; MouseClick, L, 903, 490

; Sleep, 100

; Send trám răng xoang i kết hợp xoang ii bằng composite

; Sleep, 100

; Send {Blind}{Down}{Down}

; Sleep, 100

; Send {Blind}{Enter}

; Sleep, 100

; MouseClick, L, 900, 541

; Sleep, 100

; Send Răng xxx

; Sleep, 100

; Send {tab} Do răng … có lỗ sâu lớn nên sau khi trám răng phải theo dõi tình trạng răng, nếu đau nhức thì phải điều trị tủy (chi phí điều trị tủy tính riêng).

; Return



; ::dxrs::
; SetTitleMatchMode, 2
; CoordMode, Mouse, Screen

; tt = BỆNH VIỆN ĐẠI HỌC Y DƯỢC BUÔN MA THUỘT 
; WinWait, %tt%
; IfWinNotActive, %tt%,, WinActivate, %tt%

; Sleep, 100

; MouseClick, L, 482, 83

; Sleep, 500

; MouseClick, L, 563, 349

; Sleep, 1000

; tt = PHIẾU ĐỀ XUẤT ĐIỀU TRỊ 
; WinWait, %tt%
; IfWinNotActive, %tt%,, WinActivate, %tt%

; Sleep, 500

; MouseClick, L, 1053, 873

; Sleep, 500

; MouseClick, L, 867, 401

; Sleep, 890

; Send {Blind}k02

; Sleep, 100

; Send {Blind}{Enter}

; Sleep, 100

; MouseClick, L, 903, 490

; Sleep, 100

; Send răng sứ zirconia

; Sleep, 100

; Send {Blind}{Down}{Down}{Down}{Down}{Down}

; Sleep, 100

; Send {Blind}{Enter}

; Sleep, 100

; MouseClick, L, 900, 541

; Sleep, 100

; Send Răng xxx

; Sleep, 100

; Send {tab} Răng ... cần bọc sứ, BV chỉ bảo hành răng sứ, không bảo hành chân răng

; Return

; ::dxnn::
; SetTitleMatchMode, 2
; CoordMode, Mouse, Screen

; tt = BỆNH VIỆN ĐẠI HỌC Y DƯỢC BUÔN MA THUỘT 
; WinWait, %tt%
; IfWinNotActive, %tt%,, WinActivate, %tt%

; Sleep, 100

; MouseClick, L, 482, 83

; Sleep, 500

; MouseClick, L, 563, 349

; Sleep, 1000

; tt = PHIẾU ĐỀ XUẤT ĐIỀU TRỊ 
; WinWait, %tt%
; IfWinNotActive, %tt%,, WinActivate, %tt%

; Sleep, 500

; MouseClick, L, 1053, 873

; Sleep, 500

; MouseClick, L, 867, 401

; Sleep, 890

; Send {Blind}k04

; Sleep, 100

; Send {Blind}{Enter}

; Sleep, 100

; MouseClick, L, 903, 490

; Sleep, 100

; Send điều trị tủy răng số 1

; Sleep, 100

; Send {Blind}{Down}{Down}{Down}{Down}{Down}

; Sleep, 100

; Send {Blind}{Enter}

; Sleep, 100

; MouseClick, L, 900, 541

; Sleep, 100

; Send Răng xxx

; Sleep, 100

; Send {tab} Do tình trạng giải phẫu phức tạp của ống tủy nên trong quá trình điều trị có thể thất bại trong thời gian ngắn hạn hoặc lâu dài. Trong trường hợp đó, phải nhổ bỏ và không hoàn lại chi phí điều trị tủy.

; Return

; ^+p::indexuatdieutri()


; indexuatdieutri(){
;     SetTitleMatchMode, 2
; CoordMode, Mouse, Screen

; tt = PHIẾU ĐỀ XUẤT ĐIỀU TRỊ ahk_class WindowsForms10.Window.8.app.0.fcf9a4_r7_ad1
; WinWait, %tt%
; IfWinNotActive, %tt%,, WinActivate, %tt%

; Sleep, 100

; MouseClick, L, 1327, 872

; Sleep, 203

; tt = PHIẾU ĐỀ XUẤT ĐIỀU TRỊ - rp_phieudexuat_dieutri.re ahk_class WindowsForms10.Window.8.app.0.fcf9a4_r7_ad1
; WinWait, %tt%
; IfWinNotActive, %tt%,, WinActivate, %tt%

; Sleep, 500

; Send {Blind}{Alt Down}{Alt Up}fp

; Sleep, 100

; tt = Print ahk_class WindowsForms10.Window.8.app.0.fcf9a4_r7_ad1
; WinWait, %tt%
; IfWinNotActive, %tt%,, WinActivate, %tt%

; Sleep, 500

; MouseClick, L, 904, 511

; Sleep, 414

; MouseClick, L, 1078, 747

; tt = Printing ahk_class WindowsForms10.Window.8.app.0.fcf9a4_r7_ad1
; WinWait, %tt%
; IfWinNotActive, %tt%,, WinActivate, %tt%

; Sleep, 1500

; Send {Blind}{Enter}

; tt = PHIẾU ĐỀ XUẤT ĐIỀU TRỊ - rp_phieudexuat_dieutri.re ahk_class WindowsForms10.Window.8.app.0.fcf9a4_r7_ad1
; WinWait, %tt%
; IfWinNotActive, %tt%,, WinActivate, %tt%

; Sleep, 1000
; }

; ;doc phim xq
; ; 12 xq
; ::xqq::
; SetTitleMatchMode, 2
; CoordMode, Mouse, Screen

; Send {Blind}{Shift Down}{Home}{Shift Up}

; Sleep, 200

; Send {Blind}{Ctrl Down}x{Ctrl Up}

; Sleep, 200

; mof7()
; Winwaitchidinhdichvu()
; MouseClick, L, 260, 884
; Send {Blind}{Alt Down}m{Alt Up}
; Winwaitchidinhdichvu()
; if WinExist("MQ Solutions")
;     {
;         Gui, Show
;         Reload
;     }
; Sleep 100
; Send {Blind}{Shift Down}{Tab}{Shift Up}
; MouseClick, L, 146, 881
; Sleep 100
; Send 18.81
; Sleep 100
;     Send {tab} ; Sửa thành 1 tab, hỏi có đồng ý dịch vụ, click chuột...
;     Sleep 100
;     Send !y
; Winwaitchidinhdichvu()
; Sleep 100
; ;Send {tab 2}
; MouseClick, L, 225, 950
; Sleep 100
; Send Răng%A_Space%
; Send ^v
; Sleep 100
; Send !l
; Sleep 500
; Send !y
; Return

; ; dong tat ca cua so
; ^+w::
; SetTitleMatchMode, 2
; CoordMode, Mouse, Screen

; tt = BỆNH VIỆN ĐẠI HỌC Y DƯỢC BUÔN MA THUỘT - [Khám bện ahk_class WindowsForms10.Window.8.app.0.fcf9a4_r7_ad1
; WinWait, %tt%
; IfWinNotActive, %tt%,, WinActivate, %tt%


; Sleep, 100

; Send {Blind}{Alt Down}{Alt Up}a{Down}{Down}

; Sleep, 200

; Send {Blind}{Enter}

; Sleep, 100

; tt = BỆNH VIỆN ĐẠI HỌC Y DƯỢC BUÔN MA THUỘT ahk_class WindowsForms10.Window.8.app.0.fcf9a4_r7_ad1
; WinWait, %tt%
; IfWinNotActive, %tt%,, WinActivate, %tt%
; Return
WinWaitActiveWindow(window){
    if WinWait(window)
        WinActivate
    Sleep 500
        
}