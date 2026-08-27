import 'mon_hoc.dart';

class MonDoAn extends MonHoc {
  double _diemGVHD = 0.0;
  double _diemGVPB = 0.0;

  MonDoAn.fullPara(String maMon, String tenMon, int soTinChi, double diemGVHD, double diemGVPB)
      : super.fullPara(maMon, tenMon, soTinChi) {
    _diemGVHD = diemGVHD;
    _diemGVPB = diemGVPB;
  }

  @override
  double tinhDTB() {
    return (_diemGVHD + _diemGVPB) / 2;
  }
}