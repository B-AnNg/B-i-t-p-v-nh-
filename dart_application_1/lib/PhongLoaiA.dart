import 'Phong_Tro.dart';

class PhongLoaiA extends PhongTro {
  int _soNguoiThan = 0;

  PhongLoaiA.fullPara(String masp, int songuoi, double sodien, double sonuocsd, int songuoithan)
      : super.fullPara(masp, songuoi, sodien, sonuocsd) {
    _soNguoiThan = songuoithan;
  }

  int get soNguoiThan => _soNguoiThan;

  @override
  double tinhTienPhong() {
    return 1400 + 2 * sodien + 8 * sonuocsd + 50 * _soNguoiThan;
  }

  @override
  void showInfo() {
    print("Loại A - Mã: $masp | Số người: $songuoi | Điện: $sodien | Nước: $sonuocsd | Người thân: $_soNguoiThan | Tiền phòng: ${tinhTienPhong()}");
  }
}