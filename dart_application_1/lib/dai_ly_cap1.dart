import 'dart:io';
import 'hoa_don.dart';

class DaiLyCap1 extends HoaDon {
  int _thoiGianHopTac = 0; 

  DaiLyCap1() : super();

  DaiLyCap1.fullPara(String maKH, String tenKH, int soLuong, double giaBan, this._thoiGianHopTac)
      : super.fullPara(maKH, tenKH, soLuong, giaBan);

  @override
  double tinhChietKhau() {
    double tileCK = 0.30;
    if (_thoiGianHopTac > 5) {
      int namThem = _thoiGianHopTac - 5;
      tileCK += namThem * 0.01;
      if (tileCK > 0.35) tileCK = 0.35;
    }
    return giaBan * tileCK * soLuong;
  }

  @override
  void nhapThongTin() {
    super.nhapThongTin();
    stdout.write('Nhập thời gian hợp tác (năm): ');
    _thoiGianHopTac = int.parse(stdin.readLineSync() ?? '0');
  }

  @override
  void xuatThongTin() {
    print('[Đại Lý Cấp 1]');
    super.xuatThongTin();
    print('--> Thời gian hợp tác: $_thoiGianHopTac năm');
  }
}