import 'mon_hoc.dart';

class MonThucHanh extends MonHoc {
  double _diem1 = 0.0;
  double _diem2 = 0.0;
  double _diem3 = 0.0;

  MonThucHanh.fullPara(String maMon, String tenMon, int soTinChi, double diem1, double diem2, double diem3)
      : super.fullPara(maMon, tenMon, soTinChi) {
    _diem1 = diem1;
    _diem2 = diem2;
    _diem3 = diem3;
  }

  @override
  double tinhDTB() {
    return (_diem1 + _diem2 + _diem3) / 3;
  }
}