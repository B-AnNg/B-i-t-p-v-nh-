import 'dart:io';
import 'package:dart_application_1/quan_ly_hoa_don.dart';

void main() {
  QuanLyHoaDon ql = QuanLyHoaDon();

  ql.nhapDanhSach();

  print('\n================ DANH SÁCH HÓA ĐƠN ================');
  ql.xuatDanhSach();

  print('\n>>> TỔNG THÀNH TIỀN TẤT CẢ HÓA ĐƠN: ${ql.tinhTongThanhTien()}');
  print('>>> TỔNG TIỀN TRỢ GIÁ CÔNG TY ĐÃ HỖ TRỢ: ${ql.tinhTongTroGia()}');

  ql.timKHMuaNhieuNhat();

  print('\n>>> TỔNG SỐ TIỀN CHIẾT KHẤU CHO KH CÔNG TY: ${ql.tinhTongChietKhauKHCongTy()}');

  ql.sapXepDanhSach();
  print('\n================ DANH SÁCH SAU KHI SẮP XẾP ================');
  ql.xuatDanhSach();

  stdout.write('\nNhập mã khách hàng x cần tìm: ');
  String maX = stdin.readLineSync() ?? '';
  ql.timKiemTheoMa(maX);
}