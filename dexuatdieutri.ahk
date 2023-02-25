dexuatdieutri:
Gui, Submit, 
Switch dexuatdieutri {
    Case "": {
        Gui, Show
    }
    Case "Nhổ răng khôn": {
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
    } ; end case

    Case "Nhổ răng lung lay": {
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

    Send nhổ răng vĩnh viễn lung lay

    Sleep, 100

    Send, {Blind}{Down}{Down}

    Sleep, 500

    Send, {Blind}{Enter}

    Sleep, 100

    MouseClick, L, 900, 541

    Sleep, 100

    Send Răng 

    Sleep, 100

    Send {tab} Răng ... lung lay cần nhổ. Sau nhổ răng có thể bị sưng, đau, rỉ máu vài ngày. {Enter} BN đồng ý nhổ răng ... chi phí 200.000 đ / răng 
    } ; end case

    Case "Nhổ răng vĩnh viễn": {
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

    Send nhổ răng vĩnh viễn

    Sleep, 100

    Send, {Blind}{Down}{Down}{Down}{Down}

    Sleep, 500

    Send, {Blind}{Enter}

    Sleep, 100

    MouseClick, L, 900, 541

    Sleep, 100

    Send Răng 

    Sleep, 100

    Send {tab} Răng ... sâu vỡ lớn cần nhổ. Sau nhổ răng có thể bị sưng, đau, rỉ máu vài ngày. {Enter} BN đồng ý nhổ răng ... chi phí 200.000 đ / răng 
    } ; end case

    Case "Trám răng": {
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
    } ; end case


Case "Nội nha": {
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

    }



}
Sleep 1000
Gui, show
return
