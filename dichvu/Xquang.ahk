if (Dichvu%A_index% = "XQuang"){
    danhsachrang%A_Index% := laydanhsachrang(toothlist%A_Index%)
        if (!danhsachrang%A_Index%.Length()){
            MsgBox Bạn nhập sai tên răng
            Continue
        }
    index := A_Index
    mof7()
for k, toothNumber in danhsachrang%A_Index%
{
ghichu = Răng %toothNumber%
nhapchidinh("18.81", 100, giochidinh, ghichu)
}
nhanketthuc()
Sleep 1000
;lay ma id benh nhan
Clipboard :=
Sleep 100
MouseClick, L, 100, 125
MouseClick, L, 100, 125
Sleep, 500
MouseClick, R, 100, 125
Sleep, 400
MouseClick, L, 174, 184
; lay xong id benh nhan

; mo phan mem xquang
moxquang()
Winactivate, MQRIS
Sleep 500
for k, toothNumber in danhsachrang%index%
{
Sleep 1000
;vong lap o day
; dan IDbenhnhan vao enter
MouseClick, L, 136, 180
MouseClick, L, 136, 180
Sleep, 200
MouseClick, R, 136, 180
Sleep, 100
MouseClick, L, 185, 270
Sleep 500
Send {enter}
Sleep 1000

;mo ta xquang
MouseClick, Left, 610, 995 ;click mo ta
Sleep 500
MouseClick, Left, 400, 400
Send Hình ảnh răng  {enter} cần chỉnh sửa phiếu xquang này
Sleep 1000
MouseClick, Left, 400, 815
Send Hình ảnh răng  {enter} cần chỉnh sửa phiếu xquang này
Sleep 2000
Send !l
Sleep 1000
}
}