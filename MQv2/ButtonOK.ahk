code block test run file 
; ButtonOK:
; Gui, Submit, Hide
; ;ShowTip("Đang chạy tự động. Nhấn Ctrl + `` để kết thúc")
; IDbacsy := listIDbacsi[bacsi]
; IDphuta := listIDdieuduong[phuta]
; IDvongtrong := listIDdieuduong[vongtrong]
; IDvongngoai := listIDdieuduong[vongngoai]
; bacsichidinh := thongtindangnhap(User)[3]


; ;lay thong tin nguoi nghi
; doc := "1azSdvq9PYTdy9ez6I63_-Q6WR-VgL6QvVupayG-X9wo"
; sht := "0"
; lst := ""

; URLDownloadToFile,% "https://docs.google.com/spreadsheets/d/" doc "/export?format=csv&id=" doc "&gid=" sht, tmp.csv

; FileEncoding, Utf-8

; FileDelete, danhsachnghi.csv ; delete file if exist
; Loop, read, tmp.csv, danhsachnghi.csv ; if True, append line to new file
; {
;     if InStr(A_LoopReadLine, "TRUE")
;         FileAppend, %A_LoopReadLine%`n

; }
; FileDelete, tmp.csv 

; FileRead, khongnhapten, danhsachnghi.csv

; if (User = "") ; chua nhap ten bac si chi dinh
; {
;     MsgBox Chưa nhập tên BS chỉ định
;     gui, show
;     return
; }

; if (bacsi = "") ; chua nhập bác sĩ tường trình
; {
;     MsgBox Chưa nhập tên BS tường trình
;     gui, show
;     return
; }

; var1 = %User%,%bacsi%,%vongtrong%,%vongngoai%

; Loop, parse, var1, `,
; {
;     if (A_LoopField != "") and InStr(khongnhapten, A_LoopField) ; có thể bỏ qua tên phụ tá, vòng trong, vòng ngoài, nếu có tên kiểm tra có được nhập không 
;         {
;             MsgBox Không nhập tên %A_LoopField%
;             gui, show
;             return
;         }
; }



; tt = BỆNH VIỆN ĐẠI HỌC Y DƯỢC BUÔN MA THUỘT
; WinWait, %tt%
; IfWinNotActive, %tt%,, WinActivate, %tt%

; ;lay thoi gian
; if (StartHour = 0) and (StartMinute = 0)
; 	time := A_now
; else
; 	time := getStartTime(StartHour, StartMinute)

; giochidinhdichvu := time
; FormatTime, giochidinh, %giochidinhdichvu%, HH:mm
; Sleep 100

; if (giotuongtrinh = 0) and (phuttuongtrinh = 0)
; 	{
;         Random, randomtime, 3, 5
; 	EnvAdd, time, %randomtime% ,Minits ; gio tuong trinh sau gio chi dinh
;         }
; else
; 	time := getStartTime(giotuongtrinh, phuttuongtrinh)

; Loop, 7 {
;    FormatTime, giochidinh, %giochidinhdichvu%, HH:mm
;    EnvAdd, giochidinhdichvu, 1 ,Minits ; moi chi dinh cach nhau 1 phút

;     if (!Dichvu%A_Index%)
;         Continue
;     #Include, %A_ScriptDir%\dichvu\boisdf.ahk
;     #Include, %A_ScriptDir%\dichvu\caovoirang.ahk
;     #Include, %A_ScriptDir%\dichvu\chinhnha.ahk
;     #Include, %A_ScriptDir%\dichvu\ghephuyettuong.ahk
;     #Include, %A_ScriptDir%\dichvu\ghepxuong.ahk
;     #Include, %A_ScriptDir%\dichvu\implant.ahk
;     #Include, %A_ScriptDir%\dichvu\nhorangphauthuat.ahk
;     #Include, %A_ScriptDir%\dichvu\nhorangthuthuat.ahk
;     #Include, %A_ScriptDir%\dichvu\noinha.ahk
;     #Include, %A_ScriptDir%\dichvu\rangsu.ahk
;     #Include, %A_ScriptDir%\dichvu\rangthaolap.ahk
;     #Include, %A_ScriptDir%\dichvu\taytrangrang.ahk
;     #Include, %A_ScriptDir%\dichvu\thaocaumao.ahk
;     #Include, %A_ScriptDir%\dichvu\tramrang.ahk
;     #Include, %A_ScriptDir%\dichvu\xquang.ahk
;     #Include, %A_ScriptDir%\dichvu\catthangluoi.ahk
; }

; khamxongchove()
; Sleep 1000
; Gui, Show
; Return

