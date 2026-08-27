abstract class PhongTro {
  String _maSP = '';
  int _soNguoi = 0;
  double _soDien = 0.0;
  double _soNuocSD = 0.0;

  PhongTro.fullPara(String masp, int songuoi, double sodien, double sonuocsd) {
    _maSP = masp;
    _soNguoi = songuoi;
    _soDien = sodien;
    _soNuocSD = sonuocsd;
  }

  String get masp => _maSP;
  set masp(String value) {
    if (value.isNotEmpty) _maSP = value;
  }

  int get songuoi => _soNguoi;
  set songuoi(int value) {
    if (value > 0) _soNguoi = value;
  }

  double get sodien => _soDien;
  set sodien(double value) {
    if (value > 0) _soDien = value;
  }

  double get sonuocsd => _soNuocSD;
  set sonuocsd(double value) {
    if (value > 0) _soNuocSD = value;
  }

  double tinhTienPhong();

  void showInfo() {
    print("Mã: $_maSP | Số người: $_soNguoi | Điện: $_soDien | Nước: $_soNuocSD | Tiền phòng: ${tinhTienPhong()}");
  }

  @override
  String toString() {
    return "$_maSP\t$_soNguoi\t$_soDien\t$_soNuocSD";
  }
}