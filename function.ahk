getStartTime(StartHour, StartMinute) {
	FormatTime, tmptime , A_Now, yyyyMMdd

	if (StartHour < 0) or (StartHour > 24)
		{
			MsgBox Bạn nhập sai giờ
			return -1
		}
	if (StartMinute < 0) or (StartMinute > 60)
		{
			MsgBox Bạn nhập sai giờ
			return -1
		}

	if (StartHour < 10)
		StartHour = 0%StartHour%
	if (StartMinute < 10)
		StartMinute = 0%StartMinute%
	tmptime = %tmptime%%StartHour%%StartMinute%00
	return tmptime
}

nhapchidinh(Machidinh, phantrambaohiem, giochidinh, ghichu:=""){
    global bacsichidinh
    SetTitleMatchMode, 2
    CoordMode, Mouse, Screen
    Winwaitchidinhdichvu()
    MouseClick, L, 260, 884
    Send, {Blind}{Alt Down}m{Alt Up}
    Winwaitchidinhdichvu()
    if WinExist("MQ Solutions")
        {
            Gui, Show
            Reload
        }

    Sleep 200
    Send, {Blind}{Shift Down}{Tab}{Shift Up}
    MouseClick, L, 146, 881
    Sleep 200
    Send %machidinh%
    Sleep 100
    Send {tab} ; Sửa thành 1 tab, hỏi có đồng ý dịch vụ, click chuột...
    Sleep 300
    Send !y
    Winwaitchidinhdichvu()
    ; nhap bac si chi dinh
    if (bacsichidinh != "")
    {
    Send +{tab 10}
    Sleep 100
    Send ^a
    Sleep 100
    Send %bacsichidinh%
    Sleep 100
    Send {tab 10}
    }

    Sleep 500
    Send {tab 2}
    Send %ghichu%
    Sleep 100
    Send {tab 2}
    Sleep 100
    Send %giochidinh%
    Send !l
    Sleep 500
    Send !y

    Winwaitchidinhdichvu()

    Sleep 500
    ; sửa phần trăm bảo hiểm nếu khác 100
    If (Phantrambaohiem != 100 and Phantrambaohiem != "")
    {

        MouseClick, L, 800, 155
        Sleep 100
        Send ^a
        Sleep 300
        Send %ghichu%
        Sleep 200
        Send {down 20}
        Send !s

        Winwaitchidinhdichvu()

        Sleep 300
        ;Controlsettext, WindowsForms10.EDIT.app.0.fcf9a4_r7_ad112, %Phantrambaohiem%, ahk_exe MQHIS.exe
        Send {tab 6}
        Sleep 200
        Send ^a
        Sleep 100
        Send %Phantrambaohiem%
        Sleep 100
        Send !l
        Sleep 500
            Send !y

        Winwaitchidinhdichvu()

        MouseClick, L, 800, 155
        Sleep 100
        Send ^a
        Sleep 100
        Send {del}
    }

    Winwaitchidinhdichvu()
	Sleep 500

}

nhaptuongtrinh(ICD, Mathuthuat, thoigianthuthuat, Vocam, noidungtuongtrinh, ghichu:="", noidungvocam:=""){

    CoordMode, Mouse, Screen

    global time, dichvu1, dichvu2, dichvu3 , dichvu4, dichvu5, dichvu6, dichvu7, mabenhnhan

    Sleep 1000
    MouseClick, L, 567, 845 ;Click mới
    Sleep 1000

    ; chon chi dinh
    MouseClick, L, 643, 846 ; Click Danh sách

    tt = Danh sách chỉ định
    WinWait, %tt%
    IfWinNotActive, %tt%,, WinActivate, %tt%

    ; gui ma benh nhan
    Sleep 1000
    MouseClick, L, 146, 110
    Sleep 1000
    Send %mabenhnhan%
    Sleep 1000
    Send {Enter}
    MouseClick, Left , 65, 130 ; Click chọn thủ thuật

    tt = Thông tin phẫu thủ thuật
    WinWait, %tt%
    IfWinNotActive, %tt%,, WinActivate, %tt%

    Sleep 100
    ; lay ngay gio
    FormatTime, giobatdau, %time%, HH:mm ; format the time
    EnvAdd, time, %thoigianthuthuat% ,Minits ; them 30 phut
    FormatTime, gioketthuc, %time%, HH:mm ; format the time
    EnvAdd, time, 1 ,Minits ; them 30 phut
    Sleep 300

; chon rang ham mat
    MouseClick, L, 1252, 211
    Sleep, 300
    MouseClick, L, 1207, 293

; nhap gio thu thuat
    Send {tab 2}
    Send, %giobatdau%
    Sleep 100
    Send {tab 2}
    Sleep 100
    Send, %gioketthuc%
    Sleep 100
    Send {tab 2}
    Send, %giobatdau%
    Sleep 100
    Send {tab 2}
    Sleep 100
    Send, %gioketthuc%
    Sleep 100
    Send {tab 2}
    Send %ICD%
    Sleep 100
    Send {tab 2}
    Send %ICD%
    Sleep 100
    Send {tab 2}
    Sleep 100
    If isToothNumber(ghichu)
        Send Răng %ghichu%

    Send {tab}
    Sleep 100
    Send %mathuthuat%
    Sleep 1000
    Send {enter}
    Sleep 500
    Send {enter}
    Sleep 100
    Send {tab 2}
    Sleep 200
    Send %vocam%
    Sleep 100
    Send {tab 2}
    Sleep 100

    nhapPTV()
    Sleep 100

    ; nhap noi dung tuong trinh
    Send !t
    Sleep 500
    MouseClick, Left, 1000, 500
    Sleep 100
    Send ^a
    Sleep 200
    Send {del}
    Sleep 200
    tuongtrinh%noidungtuongtrinh%(ghichu, noidungvocam)

    Sleep 500

    Send {f6} ;Lưu
    Sleep 1000
    Send !y
    Sleep 1000


    tt = Thông tin phẫu thủ thuật
    WinWait, %tt%
    IfWinNotActive, %tt%,, WinActivate, %tt%
}

nhanketthuc(){
    Sleep 500
    ControlClick, &Kết thúc, ahk_exe MQHIS.exe
    WinwaitMQHIS()
    Sleep 500
}




isToothNumber(toothNumber){
    if (isPermanentToothNumber(toothNumber) or isMilkToothNumber(toothNumber))
        return True
    else return False
}

isPermanentToothNumber(toothNumber){
    if (Strlen(toothNumber) != 2)
        {
            return False
        }
    else

    firstLetter := SubStr(toothNumber, 1, 1)
    lastLetter := SubStr(toothNumber, 2, 1)
    if (firstLetter <1 ) or (firstLetter > 4)
        {
            return False
        }
    if (lastLetter < 1) or (lastLetter > 8)
        {
            return False
        }
    return True
}

isMilkToothNumber(toothNumber){
    if (Strlen(toothNumber) != 2)
        {
            return False
        }
    else

    firstLetter := SubStr(toothNumber, 1, 1)
    lastLetter := SubStr(toothNumber, 2, 1)
    if (firstLetter < 5 ) or (firstLetter > 8)
        {
            return False
        }
    if (lastLetter < 1) or (lastLetter > 5)
        {
            return False
        }
    return True
}

laydanhsachrang(info){
    local danhsachrang
    danhsachrang := unique(StrSplit(Trim(info), A_Space)) ; remove duplicated
    danhsachrang := rmInvalidToothNumber(danhsachrang)
    return danhsachrang
}



laydanhsachrangsua(info){
    local danhsachrang
    danhsachrang := unique(StrSplit(Trim(info), A_Space)) ; remove duplicated
    danhsachrang := rmInvalidMilkToothNumber(danhsachrang)
    return danhsachrang
}

unique(arr){
    out := []
Loop % arr.Length()
{
value:=arr.RemoveAt(1) ; otherwise Object.Pop() would work from right to left
Loop % out.Length()
If (value=out[A_Index])
    Continue 2 ; jump to the top of the outer loop, we found a duplicate, discard it and move on
out.Push(value)
}
return out
}

rmInvalidToothNumber(arr){
	local temp := [], out := []
	local k, v
    for k, v in arr
        {
            if (isToothNumber(v))
               out.push(v)
        }
	return out
}

rmInvalidMilkToothNumber(arr){
	local temp := [], out := []
	local k, v
    for k, v in arr
        {
            if (isMilkToothNumber(v))
               out.push(v)
        }
	return out
}

mof6(){
    tt = BỆNH VIỆN ĐẠI HỌC Y DƯỢC BUÔN MA THUỘT ahk_exe MQHIS.exe
    WinWait, %tt%
    IfWinNotActive, %tt%,, WinActivate, %tt%
    Sleep 100
    Send {f6}
    WinWait, Thông tin phẫu thủ thuật
    WinActivate, Thông tin phẫu thủ thuật
    Sleep 1000
}



mof7()
{
    Send {f7}
    Winwaitchidinhdichvu()
}


dangnhapMQ(tendangnhap, matkhau)
{
    Send, %tendangnhap%
    Sleep, 100
    Send, {tab}
    Sleep, 100
    Send, %matkhau%
    Sleep, 100
    Send, {tab}
    ControlClick, Đăng nhập, ĐĂNG NHẬP HỆ THỐNG
}

moxquang(){
IfWinNotExist, MQRIS - [X QUANG]
{
    IfWinNotExist, MQRIS
    {
        Run MQRIS, D:\MQSOFT\MQRIS\bin\Debug
        Winwaitdangnhap()
        Sleep 100
        dangnhapMQ("sonnt", "123456")

        tt = MQRIS
        WinWait, %tt%
        IfWinNotActive, %tt%,, WinActivate, %tt%
        Sleep 100
        Send, !1
        Send, {Down 12}
        Send, {Enter}

        tt = Chọn thông tin làm việc
        WinWait, %tt%
        IfWinNotActive, %tt%,, WinActivate, %tt%

        Send, 0331
        Sleep 100
        Send {tab}
        Sleep 500
        ControlClick, Đồng ý, ahk_exe MQRIS.exe , , Left, 1
        Sleep 2000
        return
    }

    IfWinExist, MQRIS
    {
        tt = MQRIS
        WinWait, %tt%
        IfWinNotActive, %tt%,, WinActivate, %tt%
    Sleep, 100
    Send, !1
    Send, {Down 12}
    Send, {Enter}
    tt = Chọn thông tin làm việc
    WinWait, %tt%
    IfWinNotActive, %tt%,, WinActivate, %tt%
    Send, 0331{tab}  ; Ma bs doc xquang
    Sleep 500
    ControlClick, Đồng ý, ahk_exe MQRIS.exe , , Left, 1
    return
    }
} ; end if
WinActivate, MQRIS - [X QUANG]
Sleep 1000
}




nhapPTV(){
Global IDbacsy, IDphuta, IDvongtrong, IDvongngoai
Send %IDbacsy%
Send {tab 2}
Send %IDphuta%
Send {tab 2}
Send {tab 8}
Send %IDvongtrong%
Send {tab 2}
Send %IDvongngoai%
Send {tab}
}


MatchBetween(Haystack,char1,char2) {
    Matches :=
    pos1 := InStr(Haystack, char1,, 1)
    pos2 := InStr(Haystack, char2,, 1)
    Matches := SubStr(Haystack,pos1+1,pos2-pos1-1)
    return Matches
}

^+q::
    Loop, 3
	{
	If WinExist("BỆNH VIỆN ĐẠI HỌC Y DƯỢC BUÔN MA THUỘT")
		WinClose
	Sleep 100
	}

    Run MQHIS, D:\MQSOFT\MQHIS\bin\Debug
    Winwaitdangnhap()
    dangnhapMQ("quynd", "1")
    Sleep 500
    ;dang nhap xquang
    moxquang()
    Sleep 500
    WinwaitMQHIS()
    Goto, ButtonMở7phòngkhám
Return


^!i::
Clipboard :=
ControlGetText, Clipboard, WindowsForms10.EDIT.app.0.fcf9a4_r7_ad124, ahk_exe mqhis.exe ; lay id benh nhan
return

; Khám xong cho về
#p::
khamxongchove()
return

khamxongchove(){
    CoordMode, Mouse, Screen
    WinwaitMQHIS()
    Sleep 500
    MouseClick, Left, 600, 248, 1
    Sleep 100
    Send 09
    Sleep 100
    MouseClick, Left, 85, 1000, 1
    Sleep 500
    return
}

WinwaitMQHIS(){
    tt = BỆNH VIỆN ĐẠI HỌC Y DƯỢC BUÔN MA THUỘT
    WinWait, %tt%
    IfWinNotActive, %tt%,, WinActivate, %tt%
}

Winwaitchidinhdichvu(){
    tt = Chỉ định dịch vụ
    WinWait, %tt%
    IfWinNotActive, %tt%,, WinActivate, %tt%
}

Winwaitdangnhap(){
    tt = ĐĂNG NHẬP HỆ THỐNG
    WinWait, %tt%
    IfWinNotActive, %tt%,, WinActivate, %tt%
}




laymabenhnhan(){

    ; lay ma benh nhan
    Clipboard =
    Sleep 500
    MouseClick, L, 109, 128
    MouseClick, L, 109, 128
    Sleep 1000
    MouseClick, R, 109, 128
    Sleep 1000
    MouseClick, L, 173, 193
    Sleep 1000
    return Clipboard
}

ShowTip(s:="", pos:="y0", color:="Red|00FFFF") {
  static bak, idx
  if (bak=color "," pos "," s)
    return
  bak:=color "," pos "," s
  SetTimer, ShowTip_ChangeColor, Off
  Gui, ShowTip: Destroy
  if (s="")
    return
  ; WS_EX_NOACTIVATE:=0x08000000, WS_EX_TRANSPARENT:=0x20
  Gui, ShowTip: +LastFound +AlwaysOnTop +ToolWindow -Caption +E0x08000020
  Gui, ShowTip: Color, FFFFF0
  WinSet, TransColor, FFFFF0 150
  Gui, ShowTip: Margin, 10, 5
  Gui, ShowTip: Font, Q3 s20 bold
  Gui, ShowTip: Add, Text,, %s%
  Gui, ShowTip: Show, NA %pos%, ShowTip
  SetTimer, ShowTip_ChangeColor, 1000
  ShowTip_ChangeColor:
  Gui, ShowTip: +AlwaysOnTop
  r:=StrSplit(SubStr(bak,1,InStr(bak,",")-1),"|")
  Gui, ShowTip: Font, % "Q3 c" r[idx:=Mod(Round(idx),r.length())+1]
  GuiControl, ShowTip: Font, Static1
  return
}

::rang2ham::18 17 16 15 14 13 12 11 21 22 23 24 25 26 27 28{enter}38 37 36 35 34 33 32 31 41 42 43 44 45 46 47 48
::hamtren::17 16 15 14 13 12 11 21 22 23 24 25 26 27
::hamduoi::37 36 35 34 33 32 31 41 42 43 44 45 46 47
::caorang2ham::Cao răng hai hàm

::dxnrk::
SetTitleMatchMode, 2
CoordMode, Mouse, Screen

tt = BỆNH VIỆN ĐẠI HỌC Y DƯỢC BUÔN MA THUỘT 
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%

Sleep, 100

MouseClick, L, 482, 83

Sleep, 500

MouseClick, L, 563, 349

Sleep, 1000

tt = PHIẾU ĐỀ XUẤT ĐIỀU TRỊ 
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%

Sleep, 500

MouseClick, L, 1053, 873

Sleep, 500

MouseClick, L, 867, 401

Sleep, 890

Send, {Blind}k01

Sleep, 100

Send, {Blind}{Enter}

Sleep, 100

MouseClick, L, 903, 490

Sleep, 100

Send Phẫu thuật nhổ răng khôn mọc lệch hàm dưới

Sleep, 100

Send, {Blind}{Down}{Down}{Down}{Down}{Down}{Down}{Down}{Down}{Down}

Sleep, 500

Send, {Blind}{Enter}

Sleep, 100

MouseClick, L, 900, 541

Sleep, 100

Send Răng 18 28 38 48

Sleep, 100

Send {tab} Do chân răng … nằm sát dây thần kinh, nên sau khi nhổ răng… có thể bị tê môi, lưỡi, cằm trong thời gian ngắn. Sau nhổ răng có thể bị sưng, đau, rỉ máu vài ngày. BN đồng ý nhổ răng ... chi phí ...

Return

::dxtr::
SetTitleMatchMode, 2
CoordMode, Mouse, Screen

tt = BỆNH VIỆN ĐẠI HỌC Y DƯỢC BUÔN MA THUỘT 
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%

Sleep, 100

MouseClick, L, 482, 83

Sleep, 500

MouseClick, L, 563, 349

Sleep, 1000

tt = PHIẾU ĐỀ XUẤT ĐIỀU TRỊ 
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%

Sleep, 500

MouseClick, L, 1053, 873

Sleep, 500

MouseClick, L, 867, 401

Sleep, 890

Send, {Blind}k02

Sleep, 100

Send, {Blind}{Enter}

Sleep, 100

MouseClick, L, 903, 490

Sleep, 100

Send trám răng xoang i kết hợp xoang ii bằng composite

Sleep, 100

Send, {Blind}{Down}{Down}

Sleep, 100

Send, {Blind}{Enter}

Sleep, 100

MouseClick, L, 900, 541

Sleep, 100

Send Răng xxx

Sleep, 100

Send {tab} Do răng … có lỗ sâu lớn nên sau khi trám răng phải theo dõi tình trạng răng, nếu đau nhức thì phải điều trị tủy (chi phí điều trị tủy tính riêng).

Return



::dxrs::
SetTitleMatchMode, 2
CoordMode, Mouse, Screen

tt = BỆNH VIỆN ĐẠI HỌC Y DƯỢC BUÔN MA THUỘT 
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%

Sleep, 100

MouseClick, L, 482, 83

Sleep, 500

MouseClick, L, 563, 349

Sleep, 1000

tt = PHIẾU ĐỀ XUẤT ĐIỀU TRỊ 
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%

Sleep, 500

MouseClick, L, 1053, 873

Sleep, 500

MouseClick, L, 867, 401

Sleep, 890

Send, {Blind}k02

Sleep, 100

Send, {Blind}{Enter}

Sleep, 100

MouseClick, L, 903, 490

Sleep, 100

Send răng sứ zirconia

Sleep, 100

Send, {Blind}{Down}{Down}{Down}{Down}{Down}

Sleep, 100

Send, {Blind}{Enter}

Sleep, 100

MouseClick, L, 900, 541

Sleep, 100

Send Răng xxx

Sleep, 100

Send {tab} Răng ... cần bọc sứ, BV chỉ bảo hành răng sứ, không bảo hành chân răng

Return

::dxnn::
SetTitleMatchMode, 2
CoordMode, Mouse, Screen

tt = BỆNH VIỆN ĐẠI HỌC Y DƯỢC BUÔN MA THUỘT 
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%

Sleep, 100

MouseClick, L, 482, 83

Sleep, 500

MouseClick, L, 563, 349

Sleep, 1000

tt = PHIẾU ĐỀ XUẤT ĐIỀU TRỊ 
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%

Sleep, 500

MouseClick, L, 1053, 873

Sleep, 500

MouseClick, L, 867, 401

Sleep, 890

Send, {Blind}k04

Sleep, 100

Send, {Blind}{Enter}

Sleep, 100

MouseClick, L, 903, 490

Sleep, 100

Send điều trị tủy răng số 1

Sleep, 100

Send, {Blind}{Down}{Down}{Down}{Down}{Down}

Sleep, 100

Send, {Blind}{Enter}

Sleep, 100

MouseClick, L, 900, 541

Sleep, 100

Send Răng xxx

Sleep, 100

Send {tab} Do tình trạng giải phẫu phức tạp của ống tủy nên trong quá trình điều trị có thể thất bại trong thời gian ngắn hạn hoặc lâu dài. Trong trường hợp đó, phải nhổ bỏ và không hoàn lại chi phí điều trị tủy.

Return


