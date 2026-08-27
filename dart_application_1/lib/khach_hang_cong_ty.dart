import 'dart:io';
import 'hoa_don.dart';

class KhachHangCongTy extends HoaDon {
  int _soLuongNhanVien = 0;

  KhachHangCongTy() : super();

  KhachHangCongTy.fullPara(String maKH, String tenKH, int soLuong, double giaBan, this._soLuongNhanVien)
      : super.fullPara(maKH, tenKH, soLuong, giaBan);

  @override
  double tinhChietKhau() {
    double tileCK = 0.0;
    if (_soLuongNhanVien > 5000) {
      tileCK = 0.07;
    } else if (_soLuongNhanVien > 1000) {
      tileCK = 0.05;
    }
    return giaBan * tileCK * soLuong;
  }

  @override
  double tinhTroGia() {
    return 120000.0 * soLuong;
  }

  @override
  void nhapThongTin() {
    super.nhapThongTin();
    stdout.write('Nhập số lượng nhân viên: ');
    _soLuongNhanVien = int.parse(stdin.readLineSync() ?? '0');
  }

  @override
  void xuatThongTin() {
    print('[Khách Hàng Công Ty]');
    super.xuatThongTin();
    print('--> Số lượng nhân viên: $_soLuongNhanVien');
  }
}