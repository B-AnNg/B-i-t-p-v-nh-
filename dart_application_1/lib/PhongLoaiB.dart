import 'Phong_Tro.dart';

class PhongLoaiB extends PhongTro {
  double _giaTui = 0.0;
  int _soMay = 0;

  PhongLoaiB.fullPara(String masp, int songuoi, double sodien, double sonuocsd, double giatui, int somay)
      : super.fullPara(masp, songuoi, sodien, sonuocsd) {
    _giaTui = giatui;
    _soMay = somay;
  }

  @override
  double tinhTienPhong() {
    return 2000 + 2 * sodien + 8 * sonuocsd + _giaTui * 5 + _soMay * 100;
  }

  @override
  void showInfo() {
    print("Loại B - Mã: $masp | Số người: $songuoi | Điện: $sodien | Nước: $sonuocsd | Giặt ủi: $_giaTui | Số máy: $_soMay | Tiền phòng: ${tinhTienPhong()}");
  }
}