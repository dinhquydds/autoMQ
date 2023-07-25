#Requires AutoHotkey v2.0
MyGui := Gui()
; MyGui.Add("Text", "x12 yp w130 h30", "Giờ chỉ định")
; MyGui.Add("Edit", "Number x150 yp w40 h20")
; MyGui.Add("UpDown", "yp vStartHour Range0-24")
; MyGui.Add("Edit", "Number x200 yp w40 h20")
; MyGui.Add("UpDown", "yp vStartMinute Range0-60")

; MyGui.Add("Text", "x12 yp+30 w130 h30", "Giờ tường trình")
; MyGui.Add("Edit", "Number x150 yp w40 h20")
; giotuongtrinh := MyGui.Add("UpDown", "yp vGiotuongtrinh Range0-24")
; MyGui.Add("Edit", "Number x200 yp w40 h20")
; phuttuongtrinh := MyGui.Add("UpDown", "yp vphuttuongtrinh Range0-60")
MyGui.Add("Button", , "OK").OnEvent("Click", Button_OK_Click)
MyGui.Show

Button_OK_Click(ctrl, *)
{
    giochidinh := "20230725070500"
    giochidinhdichvu := FormatTime(giochidinh, "HH:mm")
    giochidinh := DateAdd(giochidinh, 1, "Minutes")
    MsgBox giochidinh
    MsgBox giochidinhdichvu
}