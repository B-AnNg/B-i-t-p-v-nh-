import 'dart:io';
import 'hoa_don.dart';

class KhachHangCaNhan extends HoaDon {
  double _khoangCach = 0.0;

  KhachHangCaNhan() : super();

  KhachHangCaNhan.fullPara(String maKH, String tenKH, int soLuong, double giaBan, this._khoangCach)
      : super.fullPara(maKH, tenKH, soLuong, giaBan);

  double get khoangCach => _khoangCach;

  @override
  double tinhChietKhau() {
    double ck = 0.0;
    if (soLuong >= 3) {
      ck += 0.05 * giaBan * soLuong;
    }
    if (_khoangCach < 10) {
      ck += 50000 * soLuong;
    }
    return ck;
  }

  @override
  double tinhTroGia() {
    double tg = 0.02 * giaBan * soLuong;
    if (soLuong > 2) {
      tg += 100000;
    }
    return tg;
  }

  @override
  void nhapThongTin() {
    super.nhapThongTin();
    stdout.write('Nhập khoảng cách giao hàng (km): ');
    _khoangCach = double.parse(stdin.readLineSync() ?? '0');
  }

  @override
  void xuatThongTin() {
    print('[Khách Hàng Cá Nhân]');
    super.xuatThongTin();
    print('--> Khoảng cách: $_khoangCach km');
  }
}