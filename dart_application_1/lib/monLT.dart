import 'mon_hoc.dart';

class MonLyThuyet extends MonHoc {
  double _diemTieuLuan = 0.0;
  double _diemCuoiKy = 0.0;

  MonLyThuyet.fullPara(String maMon, String tenMon, int soTinChi, double diemTieuLuan, double diemCuoiKy)
      : super.fullPara(maMon, tenMon, soTinChi) {
    _diemTieuLuan = diemTieuLuan;
    _diemCuoiKy = diemCuoiKy;
  }

  @override
  double tinhDTB() {
    return _diemTieuLuan * 0.3 + _diemCuoiKy * 0.7;
  }
}