abstract class MonHoc {
  String _maMon = '';
  String _tenMon = '';
  int _soTinChi = 0;

  MonHoc.fullPara(String maMon, String tenMon, int soTinChi) {
    _maMon = maMon;
    _tenMon = tenMon;
    _soTinChi = soTinChi;
  }

  String get maMon => _maMon;
  String get tenMon => _tenMon;
  int get soTinChi => _soTinChi;

  double tinhDTB();

  String quyDoiDiemChu() {
    double dtb = tinhDTB();
    if (dtb >= 8.5) return 'A';
    if (dtb >= 7.0) return 'B';
    if (dtb >= 5.5) return 'C';
    if (dtb >= 4.0) return 'D';
    return 'F';
  }

  void showInfo() {
    print("Mã: $_maMon | Tên: $_tenMon | STC: $_soTinChi | ĐTB: ${tinhDTB().toStringAsFixed(2)} | Điểm chữ: ${quyDoiDiemChu()}");
  }
}