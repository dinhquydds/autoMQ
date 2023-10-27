;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Tường trình
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

tuongtrinhsuaseomoi(ghichu := "") {
    A_Clipboard := ""
    Sleep 100
    A_Clipboard := "
(LTrim Join`r`n
Bệnh nhân sẹo xấu môi trên T 
BN mê NKQ
Dùng bút đánh dấu các điểm mốc giải phẫu trên môi
Gây tê tại chỗ môi trên bên trái
Dùng dao cắt mô sẹo xơ
Bóc tách, tạo hình môi
Khâu đóng khe hở môi theo từng lớp giải phẫu
Băng ép môi trên

)"
    Clipwait
    Send "^v"
}

tuongtrinhkhehomoimotben(ghichu := "") {
    A_Clipboard := ""
    Sleep 100
    A_Clipboard := "
(LTrim Join`r`n
Bệnh nhân có khe hở môi trên bên trái
BN mê NKQ
Dùng bút đánh dấu các điểm mốc giải phẫu trên môi
Gây tê tại chỗ môi trên bên trái
Dùng dao rạch theo đường đã vẽ trên khe hở
Bóc tách, tạo hình môi
Khâu đóng khe hở môi theo từng lớp giải phẫu
Băng ép môi trên

)"
    Clipwait
    Send "^v"
}

tuongtrinhkhehomoihaiben(ghichu := "") {
    A_Clipboard := ""
    Sleep 100
    A_Clipboard := "
(LTrim Join`r`n
Bệnh nhân có khe hở môi trên hai bên
BN mê NKQ
Dùng bút đánh dấu các điểm mốc giải phẫu trên môi
Gây tê tại chỗ môi trên 
Dùng dao rạch theo đường đã vẽ trên khe hở
Bóc tách, tạo hình môi
Khâu đóng khe hở môi theo từng lớp giải phẫu
Băng ép môi trên

)"
    Clipwait
    Send "^v"
}

tuongtrinhkhehovommiengtoanbo(ghichu := "") {
    A_Clipboard := ""
    Sleep 100
    A_Clipboard := "
(LTrim Join`r`n
Bệnh nhân có khe hở vòm miệng toàn bộ
BN mê NKQ
Dùng bút đánh dấu các điểm mốc giải phẫu trên khẩu cái
Gây tê tại chỗ khẩu cái 
Dùng dao rạch theo đường đã vẽ 
Bóc tách, tạo hình
Khâu đóng khe hở vòm miệng theo từng lớp giải phẫu

)"
    Clipwait
    Send "^v"
}

tuongtrinhkhehovommiengkhongtoanbo(ghichu := "") {
    A_Clipboard := ""
    Sleep 100
    A_Clipboard := "
(LTrim Join`r`n
Bệnh nhân có khe hở vòm miệng không toàn bộ
BN mê NKQ
Dùng bút đánh dấu các điểm mốc giải phẫu trên khẩu cái
Gây tê tại chỗ khẩu cái 
Dùng dao rạch theo đường đã vẽ 
Bóc tách, tạo hình
Khâu đóng khe hở vòm miệng theo từng lớp giải phẫu

)"
    Clipwait
    Send "^v"
}



tuongtrinhtramrangxoang1(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Răng {1} sâu xoang I
- Sát khuẩn.
- Sửa soạn xoang trám
- Phục hồi xoang trám bằng Composite:
+ So màu răng để chọn Composite có màu sắc phù hợp
+ Etching men và ngà răng bằng axít phosphoric từ 10-20 giây.
+ Rửa sạch xoang hàn.
+ Làm khô xoang hàn.
+ Phủ keo dán dính và chiếu đèn 10 -20 giây
+ Đặt Composite theo từng lớp dưới 2mm sao cho Composite được trùng hợp tối đa và khắc phục được co ngót trùng hợp.
+ Chiếu đèn quang trùng hợp theo từng lớp Composite với thời gian từ 20-40 giây.
- Hoàn thiện: Dùng bộ hoàn thiện để làm nhẵn và tạo hình phần phục hồi.
)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}

tuongtrinhtramrangxoang2(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Răng {1} sâu xoang II
- Sát khuẩn.
- Sửa soạn xoang trám
- Phục hồi xoang trám bằng Composite:
+ So màu răng để chọn Composite có màu sắc phù hợp
+ Etching men và ngà răng bằng axít phosphoric từ 10-20 giây.
+ Rửa sạch xoang hàn.
+ Làm khô xoang hàn.
+ Phủ keo dán dính và chiếu đèn 10 -20 giây
+ Đặt Composite theo từng lớp dưới 2mm sao cho Composite được trùng hợp tối đa và khắc phục được co ngót trùng hợp.
+ Chiếu đèn quang trùng hợp theo từng lớp Composite với thời gian từ 20-40 giây.
- Hoàn thiện: Dùng bộ hoàn thiện để làm nhẵn và tạo hình phần phục hồi.

)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}

tuongtrinhtramrangxoang12(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Răng {1} sâu xoang I kết hợp xoang II
- Sát khuẩn.
- Sửa soạn xoang trám
- Phục hồi xoang trám bằng Composite:
+ So màu răng để chọn Composite có màu sắc phù hợp
+ Etching men và ngà răng bằng axít phosphoric từ 10-20 giây.
+ Rửa sạch xoang hàn.
+ Làm khô xoang hàn.
+ Phủ keo dán dính và chiếu đèn 10 -20 giây
+ Đặt Composite theo từng lớp dưới 2mm sao cho Composite được trùng hợp tối đa và khắc phục được co ngót trùng hợp.
+ Chiếu đèn quang trùng hợp theo từng lớp Composite với thời gian từ 20-40 giây.
- Hoàn thiện: Dùng bộ hoàn thiện để làm nhẵn và tạo hình phần phục hồi.
)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}

tuongtrinhtramrangxoang3(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Răng {1} sâu xoang III
- Sát khuẩn.
- Sửa soạn xoang trám
- Phục hồi xoang trám bằng Composite:
+ So màu răng để chọn Composite có màu sắc phù hợp
+ Etching men và ngà răng bằng axít phosphoric từ 10-20 giây.
+ Rửa sạch xoang hàn.
+ Làm khô xoang hàn.
+ Phủ keo dán dính và chiếu đèn 10 -20 giây
+ Đặt Composite theo từng lớp dưới 2mm sao cho Composite được trùng hợp tối đa và khắc phục được co ngót trùng hợp.
+ Chiếu đèn quang trùng hợp theo từng lớp Composite với thời gian từ 20-40 giây.
- Hoàn thiện: Dùng bộ hoàn thiện để làm nhẵn và tạo hình phần phục hồi.

)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}

tuongtrinhtramrangxoang4(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Răng {1} sâu xoang IV
- Sát khuẩn.
- Sửa soạn xoang trám
- Phục hồi xoang trám bằng Composite:
+ So màu răng để chọn Composite có màu sắc phù hợp
+ Etching men và ngà răng bằng axít phosphoric từ 10-20 giây.
+ Rửa sạch xoang hàn.
+ Làm khô xoang hàn.
+ Phủ keo dán dính và chiếu đèn 10 -20 giây
+ Đặt Composite theo từng lớp dưới 2mm sao cho Composite được trùng hợp tối đa và khắc phục được co ngót trùng hợp.
+ Chiếu đèn quang trùng hợp theo từng lớp Composite với thời gian từ 20-40 giây.
- Hoàn thiện: Dùng bộ hoàn thiện để làm nhẵn và tạo hình phần phục hồi.

)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}

tuongtrinhtramrangxoang5(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Răng {1} mòn cổ răng
- Sát khuẩn.
- Sửa soạn xoang trám
- Phục hồi xoang trám bằng Composite:
+ So màu răng để chọn Composite có màu sắc phù hợp
+ Etching men và ngà răng bằng axít phosphoric từ 10-20 giây.
+ Rửa sạch xoang hàn.
+ Làm khô xoang hàn.
+ Phủ keo dán dính và chiếu đèn 10 -20 giây
+ Đặt Composite theo từng lớp dưới 2mm sao cho Composite được trùng hợp tối đa và khắc phục được co ngót trùng hợp.
+ Chiếu đèn quang trùng hợp theo từng lớp Composite với thời gian từ 20-40 giây.
- Hoàn thiện: Dùng bộ hoàn thiện để làm nhẵn và tạo hình phần phục hồi.

)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}

tuongtrinhtramrangxoang1laser(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Răng {1} sâu xoang I
- Sát khuẩn.
- Sửa soạn xoang trám sử dụng máy laser
- Phục hồi xoang trám bằng Composite:
+ So màu răng để chọn Composite có màu sắc phù hợp
+ Etching men và ngà răng bằng axít phosphoric từ 10-20 giây.
+ Rửa sạch xoang hàn.
+ Làm khô xoang hàn.
+ Phủ keo dán dính và chiếu đèn 10 -20 giây
+ Đặt Composite theo từng lớp dưới 2mm sao cho Composite được trùng hợp tối đa và khắc phục được co ngót trùng hợp.
+ Chiếu đèn quang trùng hợp theo từng lớp Composite với thời gian từ 20-40 giây.
- Hoàn thiện: Dùng bộ hoàn thiện để làm nhẵn và tạo hình phần phục hồi.
)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}

tuongtrinhtramrangxoang2laser(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Răng {1} sâu xoang II
- Sát khuẩn.
- Sửa soạn xoang trám sử dụng máy laser
- Phục hồi xoang trám bằng Composite:
+ So màu răng để chọn Composite có màu sắc phù hợp
+ Etching men và ngà răng bằng axít phosphoric từ 10-20 giây.
+ Rửa sạch xoang hàn.
+ Làm khô xoang hàn.
+ Phủ keo dán dính và chiếu đèn 10 -20 giây
+ Đặt Composite theo từng lớp dưới 2mm sao cho Composite được trùng hợp tối đa và khắc phục được co ngót trùng hợp.
+ Chiếu đèn quang trùng hợp theo từng lớp Composite với thời gian từ 20-40 giây.
- Hoàn thiện: Dùng bộ hoàn thiện để làm nhẵn và tạo hình phần phục hồi.

)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}

tuongtrinhtramrangxoang12laser(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Răng {1} sâu xoang I kết hợp xoang II
- Sát khuẩn.
- Sửa soạn xoang trám sử dụng máy laser
- Phục hồi xoang trám bằng Composite:
+ So màu răng để chọn Composite có màu sắc phù hợp
+ Etching men và ngà răng bằng axít phosphoric từ 10-20 giây.
+ Rửa sạch xoang hàn.
+ Làm khô xoang hàn.
+ Phủ keo dán dính và chiếu đèn 10 -20 giây
+ Đặt Composite theo từng lớp dưới 2mm sao cho Composite được trùng hợp tối đa và khắc phục được co ngót trùng hợp.
+ Chiếu đèn quang trùng hợp theo từng lớp Composite với thời gian từ 20-40 giây.
- Hoàn thiện: Dùng bộ hoàn thiện để làm nhẵn và tạo hình phần phục hồi.
)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}

tuongtrinhtramrangxoang3laser(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Răng {1} sâu xoang III
- Sát khuẩn.
- Sửa soạn xoang trám sử dụng máy laser
- Phục hồi xoang trám bằng Composite:
+ So màu răng để chọn Composite có màu sắc phù hợp
+ Etching men và ngà răng bằng axít phosphoric từ 10-20 giây.
+ Rửa sạch xoang hàn.
+ Làm khô xoang hàn.
+ Phủ keo dán dính và chiếu đèn 10 -20 giây
+ Đặt Composite theo từng lớp dưới 2mm sao cho Composite được trùng hợp tối đa và khắc phục được co ngót trùng hợp.
+ Chiếu đèn quang trùng hợp theo từng lớp Composite với thời gian từ 20-40 giây.
- Hoàn thiện: Dùng bộ hoàn thiện để làm nhẵn và tạo hình phần phục hồi.

)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}

tuongtrinhtramrangxoang4laser(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Răng {1} sâu xoang IV
- Sát khuẩn.
- Sửa soạn xoang trám sử dụng máy laser
- Phục hồi xoang trám bằng Composite:
+ So màu răng để chọn Composite có màu sắc phù hợp
+ Etching men và ngà răng bằng axít phosphoric từ 10-20 giây.
+ Rửa sạch xoang hàn.
+ Làm khô xoang hàn.
+ Phủ keo dán dính và chiếu đèn 10 -20 giây
+ Đặt Composite theo từng lớp dưới 2mm sao cho Composite được trùng hợp tối đa và khắc phục được co ngót trùng hợp.
+ Chiếu đèn quang trùng hợp theo từng lớp Composite với thời gian từ 20-40 giây.
- Hoàn thiện: Dùng bộ hoàn thiện để làm nhẵn và tạo hình phần phục hồi.

)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}

tuongtrinhtramrangxoang5laser(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Răng {1} mòn cổ răng
- Sát khuẩn.
- Sửa soạn xoang trám sử dụng máy laser
- Phục hồi xoang trám bằng Composite:
+ So màu răng để chọn Composite có màu sắc phù hợp
+ Etching men và ngà răng bằng axít phosphoric từ 10-20 giây.
+ Rửa sạch xoang hàn.
+ Làm khô xoang hàn.
+ Phủ keo dán dính và chiếu đèn 10 -20 giây
+ Đặt Composite theo từng lớp dưới 2mm sao cho Composite được trùng hợp tối đa và khắc phục được co ngót trùng hợp.
+ Chiếu đèn quang trùng hợp theo từng lớp Composite với thời gian từ 20-40 giây.
- Hoàn thiện: Dùng bộ hoàn thiện để làm nhẵn và tạo hình phần phục hồi.

)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}

tuongtrinhchetuycalci(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Răng {1} sâu lớn sát tủy răng
- Sát khuẩn.
- Sửa soạn xoang trám
- Lót lớp đáy xoang sát tủy bằng Hydoxit calci
- Phục hồi xoang trám bằng Composite:
+ So màu răng để chọn Composite có màu sắc phù hợp
+ Etching men và ngà răng bằng axít phosphoric từ 10-20 giây.
+ Rửa sạch xoang hàn.
+ Làm khô xoang hàn.
+ Phủ keo dán dính và chiếu đèn 10 -20 giây
+ Đặt Composite theo từng lớp dưới 2mm sao cho Composite được trùng hợp tối đa và khắc phục được co ngót trùng hợp.
+ Chiếu đèn quang trùng hợp theo từng lớp Composite với thời gian từ 20-40 giây.
- Hoàn thiện: Dùng bộ hoàn thiện để làm nhẵn và tạo hình phần phục hồi.
)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}

tuongtrinhchetuymta(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Răng {1} sâu lớn sát tủy răng
- Sát khuẩn.
- Sửa soạn xoang trám
- Lót lớp đáy xoang sát tủy bằng MTA
- Phục hồi xoang trám bằng Composite:
+ So màu răng để chọn Composite có màu sắc phù hợp
+ Etching men và ngà răng bằng axít phosphoric từ 10-20 giây.
+ Rửa sạch xoang hàn.
+ Làm khô xoang hàn.
+ Phủ keo dán dính và chiếu đèn 10 -20 giây
+ Đặt Composite theo từng lớp dưới 2mm sao cho Composite được trùng hợp tối đa và khắc phục được co ngót trùng hợp.
+ Chiếu đèn quang trùng hợp theo từng lớp Composite với thời gian từ 20-40 giây.
- Hoàn thiện: Dùng bộ hoàn thiện để làm nhẵn và tạo hình phần phục hồi.
)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}

tuongtrinhcaovoirang(ghichu := "") {
    A_Clipboard := ""
    Sleep 100
    A_Clipboard := "
(LTrim Join`r`n
- Sát khuẩn.
- Dùng các đầu lấy cao siêu âm làm rung và bật các mảnh cao răng ra khỏi bề mặt răng.
- Thực hiên theo trình tự sao cho lấy hết cao răng ở các mặt của tất cả các răng, cả cao răng trên lợi và cao răng dưới lợi.
- Dùng các cây lấy cao răng cầm tay lấy các phần cao răng còn lại mà đầu siêu âm không lấy được.
- Sứ dụng các mũi khoan tốc độ chậm phù hợp làm sạch các mảng bám, các chất ngoại lai và làm nhẵn bề mặt răng và chân răng, tạo điều kiên kiểm soát mảng bám răng.
- Bơm rửa bề mặt chân răng và rãnh lợi bằng dung dịch oxy già 3 thể tích 
- Đánh bóng bề mặt các răng và chân răng.

)"
    Clipwait
    Send "^v"
}

tuongtrinhnaotuiloi(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
- Sát khuẩn.
- Gây tê tại chỗ
- Rạch khe nướu răng {1}
- Bóc tách khe nướu, bộc lộ túi nha chu
- Dùng cây cạo vôi siêu âm cạo sạch vôi răng trên và dưới nướu
- Dùng các cây lấy cao răng cầm tay lấy các phần cao răng còn lại mà đầu siêu âm không lấy được.
- Bơm rửa bề mặt chân răng 
- Khâu đóng vết mổ

)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}

tuongtrinhnhorangvinhvien(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Răng {1} sâu vỡ lớn
- Sát khuẩn.
- Gây tê tại chỗ răng {1}
- Dùng nạy và kềm để nhổ răng
- Nạo sạch ổ răng
- Bơm rửa kỹ ổ răng
- Cắn gòn cầm máu
- Sau nhổ răng bệnh nhân tạm ổn, cho ra viện
)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"

}

tuongtrinhnhorangthua(ghichu := "") {
    A_Clipboard := ""
    Sleep 100
    A_Clipboard := "
(LTrim Join`r`n
Răng thừa kẽ giữa
- Sát khuẩn.
- Gây tê tại chỗ răng thừa
- Dùng nạy và kềm để nhổ răng
- Nạo sạch ổ răng
- Bơm rửa kỹ ổ răng
- Cắn gòn cầm máu
- Sau nhổ răng bệnh nhân tạm ổn, cho ra viện
)"
    Clipwait
    Send "^v"

}

tuongtrinhnhoranglunglay(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Răng {1} lung lay
- Sát khuẩn.
- Gây tê tại chỗ răng {1}
- Dùng nạy và kềm để nhổ răng
- Nạo sạch ổ răng
- Bơm rửa kỹ ổ răng
- Cắn gòn cầm máu
- Sau nhổ răng bệnh nhân tạm ổn, cho ra viện
)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"

}

tuongtrinhcatloixo(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
    (LTrim Join`r`n
    Răng {1} chậm mọc, nướu xơ, dày
    - Sát khuẩn.
    - Gây tê tại chỗ răng {1}
    - Rạch nướu, bóc tách bộc lộ răng {1}
    - Cắn gòn cầm máu
    )"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"

}

tuongtrinhcatloitrum(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
        (LTrim Join`r`n
        Răng {1} lợi trùm, viêm tấy đỏ, đau
        - Sát khuẩn.
        - Gây tê tại chỗ răng {1}
        - Cắt lợi trùm
        - Cắn gòn cầm máu
        )"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"

}

tuongtrinhlamdaithanrang(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
            (LTrim Join`r`n
            Răng {1} thân răng ngắn
            - Sát khuẩn.
            - Gây tê tại chỗ răng {1}
            - Rạch khe nướu răng {1}
            - Bóc tách, bộc lộ xương ổ răng
            - Mài chỉnh xương ổ răng
            - Khâu cố định nướu răng về phía chóp r
            )"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"

}

tuongtrinhnhorangkhontren(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Răng {1} mọc lệch
- Sát khuẩn.
- Gây tê tại chỗ răng {1}
- Dùng nạy và kềm để nhổ răng
- Nạo sạch ổ răng
- Bơm rửa kỹ ổ răng
- Cắn gòn cầm máu
- Sau nhổ răng bệnh nhân tạm ổn, cho ra viện
)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}

tuongtrinhnhorangkhontrencatthan(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Răng {1} mọc lệch
- Sát khuẩn.
- Gây tê tại chỗ răng {1}
- Rạch nướu vùng răng {1}
- Bóc tách, bộc lộ răng
- Dùng mũi khoan mở xương, bộc lộ thân răng {1}
- Dùng mũi khoan chia cắt thân răng
- Dùng nạy và kềm để nhổ răng
- Nạo sạch ổ răng
- Bơm rửa kỹ ổ răng
- Khâu đóng vết mổ
- Cắn gòn cầm máu
- Sau nhổ răng bệnh nhân tạm ổn, cho ra viện
)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}

tuongtrinhnhorangkhontrencatthanchiachan(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Răng {1} mọc lệch ngầm
- Sát khuẩn.
- Gây tê tại chỗ răng {1}
- Rạch nướu vùng răng {1}
- Bóc tách, bộc lộ răng
- Dùng mũi khoan mở xương, bộc lộ thân răng {1}
- Dùng mũi khoan chia cắt thân răng
- Dùng nạy và kềm để nhổ răng
- Dùng mũi khoan chia cắt chân răng
- Dùng nạy và kềm nhổ từng chân răng
- Nạo sạch ổ răng
- Bơm rửa kỹ ổ răng
- Khâu đóng vết mổ
- Cắn gòn cầm máu
- Sau nhổ răng bệnh nhân tạm ổn, cho ra viện
)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}

tuongtrinhnhorangkhonduoi(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Răng {1} mọc lệch gần
- Sát khuẩn.
- Gây tê vùng và gây tê tại chỗ răng {1}
- Rạch nướu vùng răng {1}
- Bóc tách, bộc lộ răng
- Dùng mũi khoan mở xương, bộc lộ thân răng {1}
- Dùng mũi khoan chia cắt thân răng
- Dùng nạy và kềm để nhổ răng
- Nạo sạch ổ răng
- Bơm rửa kỹ ổ răng
- Khâu đóng vết mổ
- Cắn gòn cầm máu
- Sau nhổ răng bệnh nhân tạm ổn, cho ra viện
)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}

tuongtrinhnhorangkhonduoicatthanchiachan(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Răng {1} mọc lệch gần
- Sát khuẩn.
- Gây tê vùng và gây tê tại chỗ răng {1}
- Rạch nướu vùng răng {1}
- Bóc tách, bộc lộ răng
- Dùng mũi khoan mở xương, bộc lộ thân răng {1}
- Dùng mũi khoan chia cắt thân răng
- Dùng nạy và kềm để nhổ thân răng
- Dùng mũi khoan chia cắt chân răng
- Dùng nạy nhổ từng phần chân răng
- Nạo sạch ổ răng
- Bơm rửa kỹ ổ răng
- Khâu đóng vết mổ
- Cắn gòn cầm máu
- Sau nhổ răng bệnh nhân tạm ổn, cho ra viện
)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}

tuongtrinhnhorangthi1(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Răng {1} mọc lệch gần, chân răng sát ống thần kinh răng dưới
- Sát khuẩn.
- Gây tê vùng và gây tê tại chỗ răng {1}
- Rạch nướu vùng răng {1}
- Bóc tách, bộc lộ răng
- Dùng mũi khoan mở xương, bộc lộ thân răng {1}
- Dùng mũi khoan chia cắt thân răng
- Dùng nạy và kềm để nhổ thân răng, để lại phần chân răng
- Nạo sạch ổ răng
- Bơm rửa kỹ ổ răng
- Khâu đóng vết mổ
- Cắn gòn cầm máu
- Sau nhổ răng bệnh nhân tạm ổn, cho ra viện
)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}

tuongtrinhnhorangthi2(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Răng {1} còn chân răng, đã được phẫu thuật cắt thân răng trước đây
- Sát khuẩn.
- Gây tê vùng và gây tê tại chỗ răng {1}
- Rạch nướu vùng răng {1}
- Bóc tách, bộc lộ răng
- Dùng mũi khoan mở xương, bộc lộ răng {1}
- Dùng nạy và kềm để nhổ răng
- Nạo sạch ổ răng
- Bơm rửa kỹ ổ răng
- Khâu đóng vết mổ
- Cắn gòn cầm máu
- Sau nhổ răng bệnh nhân tạm ổn, cho ra viện
)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}

tuongtrinhnhorangngam(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Răng {1} mọc ngầm
- Sát khuẩn.
- Gây tê vùng và gây tê tại chỗ răng {1}
- Rạch nướu vùng răng {1}
- Bóc tách, bộc lộ răng
- Dùng mũi khoan mở xương, bộc lộ thân răng {1}
- Dùng mũi khoan chia cắt thân răng
- Dùng nạy và kềm để nhổ răng
- Nạo sạch ổ răng
- Bơm rửa kỹ ổ răng
- Khâu đóng vết mổ
- Cắn gòn cầm máu
- Sau nhổ răng bệnh nhân tạm ổn, cho ra viện
)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}

tuongtrinhnoinha(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n 
1. Gây tê tại chỗ răng {1} bằng lidocain 2`%.
2. Cách ly răng sử dụng đê cao su.
3. Dùng mũi khoan thích hợp mở đường vào buồng tuỷ răng {1}
4. Sửa soạn hệ thống ống tủy 
- Lấy sạch tuỷ buồng, xác định lỗ vào ống tủy
- Đo chiều dài làm việc bằng máy định vị chóp răng
- Tạo hình và làm sạch ống tuỷ bằng các trâm xoay cầm tay
- Bơm rửa hệ thống ống tuỷ bằng dung dịch Natri hypoclorid 2.5-5`%, nước muối sinh lí
5. Hàn kín hệ thống ống tuỷ
- Chọn và đặt một côn Gutta Percha chuẩn phù hợp với file đã tạo hình sau cùng
- Đặt và lèn côn Gutta Percha vào ống tuỷ :
+ Đưa xi măng trám bít vào thành ống tuỷ ở 1/3 ống tuỷ về phía cuống răng.
+ Đặt Gutta Percha chính vào ống tuỷ
+ Lèn Gutta Percha bằng cây lèn ngang, đặt côn phụ vào khoảng trống
+ Lặp lại nhiều lần đặt và lèn Gutta đến khi cây lèn chỉ còn đi được 1/3 trên ống tuỷ.
+ Lấy bỏ Gutta Percha thừa sát đến miệng ống tuỷ bằng nhiệt.
- Kiểm tra kết quả hàn hệ thống ống tuỷ bằng xquang
6. Hàn kín buồng tuỷ và phục hồi thân răng bằng composite
Sau khi nội nha răng {1} bệnh nhân đỡ đau, cho ra viện
)"

    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}

tuongtrinhnoinhagaytevung(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
    (LTrim Join`r`n 
    1. Gây tê vùng và tại chỗ răng {1} bằng lidocain 2`%.
    2. Cách ly răng sử dụng đê cao su.
    3. Dùng mũi khoan thích hợp mở đường vào buồng tuỷ răng {1}
    4. Sửa soạn hệ thống ống tủy 
    - Lấy sạch tuỷ buồng, xác định lỗ vào ống tủy
    - Đo chiều dài làm việc bằng máy định vị chóp răng
    - Tạo hình và làm sạch ống tuỷ bằng các trâm xoay cầm tay
    - Bơm rửa hệ thống ống tuỷ bằng dung dịch Natri hypoclorid 2.5-5`%, nước muối sinh lí
    5. Hàn kín hệ thống ống tuỷ
    - Chọn và đặt một côn Gutta Percha chuẩn phù hợp với file đã tạo hình sau cùng
    - Đặt và lèn côn Gutta Percha vào ống tuỷ :
    + Đưa xi măng trám bít vào thành ống tuỷ ở 1/3 ống tuỷ về phía cuống răng.
    + Đặt Gutta Percha chính vào ống tuỷ
    + Lèn Gutta Percha bằng cây lèn ngang, đặt côn phụ vào khoảng trống
    + Lặp lại nhiều lần đặt và lèn Gutta đến khi cây lèn chỉ còn đi được 1/3 trên ống tuỷ.
    + Lấy bỏ Gutta Percha thừa sát đến miệng ống tuỷ bằng nhiệt.
    - Kiểm tra kết quả hàn hệ thống ống tuỷ bằng xquang
    6. Hàn kín buồng tuỷ và phục hồi thân răng bằng composite
    Sau khi nội nha răng {1} bệnh nhân đỡ đau, cho ra viện
    )"

    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}

tuongtrinhnoinhagayme(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Bệnh nhân mê NKQ 
1. Gây tê tại chỗ răng răng {1} bằng lidocain 2`%.
2. Cách ly răng sử dụng đê cao su.
3. Dùng mũi khoan thích hợp mở đường vào buồng tuỷ răng {1}
4. Sửa soạn hệ thống ống tủy 
- Lấy sạch tuỷ buồng, xác định lỗ vào ống tủy
- Đo chiều dài làm việc bằng máy định vị chóp răng
- Tạo hình và làm sạch ống tuỷ bằng các trâm xoay cầm tay
- Bơm rửa hệ thống ống tuỷ bằng dung dịch Natri hypoclorid 2.5-5`%, nước muối sinh lí
5. Hàn kín hệ thống ống tuỷ
- Chọn và đặt một côn Gutta Percha chuẩn phù hợp với file đã tạo hình sau cùng
- Đặt và lèn côn Gutta Percha vào ống tuỷ :
+ Đưa xi măng trám bít vào thành ống tuỷ ở 1/3 ống tuỷ về phía cuống răng.
+ Đặt Gutta Percha chính vào ống tuỷ
+ Lèn Gutta Percha bằng cây lèn ngang, đặt côn phụ vào khoảng trống
+ Lặp lại nhiều lần đặt và lèn Gutta đến khi cây lèn chỉ còn đi được 1/3 trên ống tuỷ.
+ Lấy bỏ Gutta Percha thừa sát đến miệng ống tuỷ bằng nhiệt.
- Kiểm tra kết quả hàn hệ thống ống tuỷ bằng xquang
6. Hàn kín buồng tuỷ và phục hồi thân răng bằng composite
Sau khi nội nha răng {1} bệnh nhân đỡ đau, cho ra viện
)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}

tuongtrinhnoinhalai(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
1. Gây tê tại chỗ răng răng {1} bằng lidocain 2`%.
2. Cách ly răng sử dụng đê cao su.
3. Dùng mũi khoan thích hợp mở đường vào buồng tuỷ răng {1}
4. Sửa soạn hệ thống ống tủy 
- Lấy sạch chất trám cũ tuỷ ở buồng tuỷ, và ống tủy
- Xác định chiều dài làm việc của các ống tuỷ
- Tạo hình và làm sạch ống tuỷ bằng các trâm xoay cầm tay
- Bơm rửa hệ thống ống tuỷ bằng dung dịch Natri hypoclorid 2.5-5`%, nước muối sinh lí
5. Hàn kín hệ thống ống tuỷ
- Chọn và đặt một côn Gutta Percha chuẩn phù hợp với file đã tạo hình sau cùng
- Đặt và lèn côn Gutta Percha vào ống tuỷ :
+ Đưa xi măng trám bít vào thành ống tuỷ ở 1/3 ống tuỷ về phía cuống răng.
+ Đặt Gutta Percha chính vào ống tuỷ
+ Lèn Gutta Percha bằng cây lèn ngang, đặt côn phụ vào khoảng trống
+ Lặp lại nhiều lần đặt và lèn Gutta đến khi cây lèn chỉ còn đi được 1/3 trên ống tuỷ.
+ Lấy bỏ Gutta Percha thừa sát đến miệng ống tuỷ bằng nhiệt.
- Kiểm tra kết quả hàn hệ thống ống tuỷ bằng xquang
6. Hàn kín buồng tuỷ và phục hồi thân răng bằng composite
Sau khi nội nha răng {1} bệnh nhân đỡ đau, cho ra viện
)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}

tuongtrinhnoinhalaigayme(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Bệnh nhân mê NKQ
1. Gây tê tại chỗ răng răng {1} bằng lidocain 2`%.
2. Cách ly răng sử dụng đê cao su.
3. Dùng mũi khoan thích hợp mở đường vào buồng tuỷ răng {1}
4. Sửa soạn hệ thống ống tủy 
- Lấy sạch chất trám cũ tuỷ ở buồng tuỷ, và ống tủy
- Xác định chiều dài làm việc của các ống tuỷ
- Tạo hình và làm sạch ống tuỷ bằng các trâm xoay cầm tay
- Bơm rửa hệ thống ống tuỷ bằng dung dịch Natri hypoclorid 2.5-5`%, nước muối sinh lí
5. Hàn kín hệ thống ống tuỷ
- Chọn và đặt một côn Gutta Percha chuẩn phù hợp với file đã tạo hình sau cùng
- Đặt và lèn côn Gutta Percha vào ống tuỷ :
+ Đưa xi măng trám bít vào thành ống tuỷ ở 1/3 ống tuỷ về phía cuống răng.
+ Đặt Gutta Percha chính vào ống tuỷ
+ Lèn Gutta Percha bằng cây lèn ngang, đặt côn phụ vào khoảng trống
+ Lặp lại nhiều lần đặt và lèn Gutta đến khi cây lèn chỉ còn đi được 1/3 trên ống tuỷ.
+ Lấy bỏ Gutta Percha thừa sát đến miệng ống tuỷ bằng nhiệt.
- Kiểm tra kết quả hàn hệ thống ống tuỷ bằng xquang
6. Hàn kín buồng tuỷ và phục hồi thân răng bằng composite
Sau khi nội nha răng {1} bệnh nhân hồi tỉnh, đỡ đau, cho ra viện
)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}

tuongtrinhnoinharangsua(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Gây tê tại chỗ răng {1}
Sử dụng đam cao su ( Rubber dam ) để cách ly, cô lập răng.
Mở tủy:
- Dùng mũi khoan thích hợp mở đường vào buồng tủy
- Dùng mũi khoan thích hợp mở rộng trần buồng tủy
Sửa soạn hệ thống ống tủy
- Lấy tủy buồng và tủy chân bằng trâm gai
- Xác định miệng ống tủy và số lượng ống tủy bằng dụng cụ thích hợp
- Tạo hình và làm sạch hệ thống ống tuỷ
+ Sử dụng file thích hợp để tạo hình hệ thống ống tủy.
+ Làm sạch hệ thống ống tủy bằng bơm rửa với dung dịch nước muối sinh lý hoặc oxy già 3 thể tích…
Hàn kín hệ thống ống tủy
- Làm khô hệ thống ống tủy với bông và côn giấy.
- Đưa paste vào các ống tủy cho đến hết chiều dài ống tủy bằng lentulo.
- Dùng bông lau khô phần paste thừa trên miệng ống tủy.
Hàn kín buồng tủy và phục hồi thân răng bằng GIC
)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}

tuongtrinhnhorangsua(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
- Sát khuẩn
- Bôi tê tại chỗ răng {1}
- Dùng kìm thích hợp lấy răng ra khỏi ổ răng.
- Cắn gạc cầm máu.
)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}

tuongtrinhtramrangsua(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
-Sửa soạn xoang hàn răng {1}:
+ Dùng mũi khoan thích hợp mở rộng bờ men bộc lộ xoang sâu.
+ Dùng mũi khoan thích hợp làm sạch mô ngà bệnh lý và hoại tử.
+ Sửa lại các thành của xoang hàn để dễ làm sạch và đặt vật liệu.
+ Làm sạch xoang hàn bằng nước muối sinh lý.
+ Làm khô xoang hàn.
+ Đặt dung dịch Coditioner vào xoang hàn trong 10 giây.
+ Rửa sạch và làm khô xoang hàn.
- Hàn phục hồi
+ Dùng dụng cụ đưa GIC lấp đầy xoang hàn.
+ Đàn nhẹ và sửa bề mặt khối phục hồi trước khi vật liệu đông cứng.
- Kiểm tra và điều chỉnh khớp cắn.
- Phủ vaseline cách ly lên bề mặt khối phục hồi.
)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}


tuongtrinhtramtaitaokhongchotsoi(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Răng {1} đã nội nha
Dùng mũi khoan lấy sạch chất trám tạm
Sửa soạn xoang trám
Trám tái tạo răng bằng composite
)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}

tuongtrinhtramtaitaocochotsoi(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Răng {1} đã nội nha
Dùng mũi khoan lấy sạch chất trám tạm
Khoan vào ống tủy để đặt chốt
Dùng dụng cụ đưa xi măng vào ống tủy
Đặt chốt
Trám tái tạo răng bằng composite
)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}

tuongtrinhghephuyettuong(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Răng {1} đã nhổ
Ghép PRF vào ổ răng
Khâu đóng mô mềm
)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}

tuongtrinhrangsu(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Răng {1} mài cùi răng, lấy dấu làm răng sứ
)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}

tuongtrinhrangsutrenimplant(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Răng {1} làm răng sứ trên implant
)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}


tuongtrinhrangthaolap(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Răng giả cho hàm tháo lắp {1}
)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}

tuongtrinhtaytrangrang(ghichu := "") {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Tẩy trắng răng 2 hàm dùng đèn Plasma
)"
    A_Clipboard := Format(text)
    Clipwait
    Send "^v"
}

tuongtrinhchinhnha(ghichu := "") {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Gắn mắc cài
Gắn thun 2 hàm
)"
    A_Clipboard := Format(text)
    Clipwait
    Send "^v"
}

tuongtrinhboisdf(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Làm sạch răng {1}
Bôi SDF lên răng
)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}

tuongtrinhimplant(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Gây tê tại vùng răng {1}
Rạch nướu, bóc tách bộc lộ xương
Dùng mũi khoan thích hợp tạo lỗ cấy implant
Đặt implant vào vị trí đã khoan
)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}

tuongtrinhabutment(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Gắn abutment vào implant vị trí răng {1}
)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}

tuongtrinhghepxuong(ghichu := "") {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Ghép xương đông khô vào ổ răng
)"
    A_Clipboard := Format(text)
    Clipwait
    Send "^v"
}

tuongtrinhnhochanrang(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Còn chân răng {1}
- Sát khuẩn.
- Gây tê tại chỗ răng {1}
- Dùng nạy và kềm để nhổ răng
- Nạo sạch ổ răng
- Bơm rửa kỹ ổ răng
- Cắn gòn cầm máu
- Sau nhổ răng bệnh nhân tạm ổn, cho ra viện
)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}

tuongtrinhthaocau(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Dùng mũi khoan cắt răng sứ {1}
Tháo răng sứ
)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}

tuongtrinhthaomao(toothNumber) {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Dùng mũi khoan cắt răng sứ {1}
Tháo răng sứ
)"
    A_Clipboard := Format(text, toothNumber)
    Clipwait
    Send "^v"
}

tuongtrinhnhuadeobanphan(ghichu := "") {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Nền nhựa dẻo bán phần cho hàm giả tháo lắp
)"
    A_Clipboard := Format(text)
    Clipwait
    Send "^v"
}

tuongtrinhnhuadeotoanphan(ghichu := "") {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Nền nhựa dẻo toàn phần cho hàm giả tháo lắp
)"
    A_Clipboard := Format(text)
    Clipwait
    Send "^v"
}


tuongtrinhluoinenham(ghichu := "") {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Lưới kim loại cho nền hàm giả tháo lắp
)"
    A_Clipboard := Format(text)
    Clipwait
    Send "^v"
}

tuongtrinhcatthangluoi(ghichu := "") {
    A_Clipboard := ""
    Sleep 100
    text := "
(LTrim Join`r`n
Sát trùng vùng phẫu thuật
Gây tê tại chỗ thắng lưỡi
Dùng laser cắt thắng lưỡi, cầm máu
Sau thủ thuật bệnh nhân an toàn
)"
    A_Clipboard := Format(text)
    Clipwait
    Send "^v"
}