import 'dart:io';

abstract class HoaDon {
  String _maKH = '';
  String _tenKH = '';
  int _soLuong = 0;
  double _giaBan = 0.0;

  HoaDon();

  HoaDon.fullPara(String maKH, String tenKH, int soLuong, double giaBan) {
    this.maKH = maKH;
    this.tenKH = tenKH;
    this.soLuong = soLuong;
    this.giaBan = giaBan;
  }

  String get maKH => _maKH;
  set maKH(String value) {
    RegExp regex = RegExp(r'^KH\d{4}$');
    if (regex.hasMatch(value)) {
      _maKH = value;
    } else {
      print('Lỗi: Mã KH phải có dạng KHxxxx (ví dụ: KH0002)!');
      _maKH = 'KH0000';
    }
  }

  String get tenKH => _tenKH;
  set tenKH(String value) {
    if (value.trim().isNotEmpty) {
      _tenKH = value;
    } else {
      print('Lỗi: Tên khách hàng không được để trống!');
      _tenKH = 'Chưa xác định';
    }
  }

  int get soLuong => _soLuong;
  set soLuong(int value) {
    if (value > 0) {
      _soLuong = value;
    } else {
      print('Lỗi: Số lượng phải > 0!');
      _soLuong = 1;
    }
  }

  double get giaBan => _giaBan;
  set giaBan(double value) {
    if (value > 0) {
      _giaBan = value;
    } else {
      print('Lỗi: Giá bán phải > 0!');
      _giaBan = 1.0;
    }
  }


  double tinhChietKhau();
  double tinhTroGia() => 0.0; 

  double tinhThueVAT() => _soLuong * _giaBan * 0.10;

  double tinhThanhTien() {
    return (_soLuong * _giaBan) - tinhChietKhau() + tinhThueVAT();
  }

  void nhapThongTin() {
    do {
      stdout.write('Nhập mã KH (dạng KHxxxx): ');
      maKH = stdin.readLineSync() ?? '';
    } while (_maKH == 'KH0000');

    do {
      stdout.write('Nhập tên KH: ');
      tenKH = stdin.readLineSync() ?? '';
    } while (_tenKH == 'Chưa xác định');

    stdout.write('Nhập số lượng: ');
    soLuong = int.parse(stdin.readLineSync() ?? '1');

    stdout.write('Nhập giá bán: ');
    giaBan = double.parse(stdin.readLineSync() ?? '1');
  }

  void xuatThongTin() {
    print('Mã KH: $_maKH | Tên KH: $_tenKH | Số lượng: $_soLuong | Giá bán: $_giaBan');
    print('--> Chiết khấu: ${tinhChietKhau()} | Trợ giá: ${tinhTroGia()} | VAT: ${tinhThueVAT()} | Thành tiền: ${tinhThanhTien()}');
  }
}