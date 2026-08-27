import 'dart:io';
import 'package:dart_application_1/Phong_Tro.dart';
import 'package:dart_application_1/PhongLoaiA.dart';
import 'package:dart_application_1/PhongLoaiB.dart';



void main() async {
  List<PhongTro> ds = await readFile('lib/phongthue.txt');

  for (PhongTro x in ds) {
    x.showInfo();
  }


  print("\n=== CÁC PHÒNG CÓ SỐ NGƯỜI THUÊ > 2 ===");
  List<PhongTro> dsNguoiLonHon2 = ds.where((p) => p.songuoi > 2).toList();
  for (PhongTro x in dsNguoiLonHon2) {
    x.showInfo();
  }


  double tongTien = ds.fold(0.0, (sum, p) => sum + p.tinhTienPhong());
  print("\n>>> TỔNG TIỀN PHÒNG THU ĐƯỢC: $tongTien");

  ds.sort((x, y) => y.sodien.compareTo(x.sodien));
  print("\n=== DANH SÁCH GIẢM DẦN THEO SỐ ĐIỆN TIÊU THỤ ===");
  for (PhongTro x in ds) {
    x.showInfo();
  }

  print("\n=== DANH SÁCH CÁC PHÒNG LOẠI A ===");
  List<PhongLoaiA> dsLoaiA = ds.whereType<PhongLoaiA>().toList();
  for (PhongLoaiA x in dsLoaiA) {
    x.showInfo();
  }
}


Future<List<PhongTro>> readFile(String fileName) async {
  List<PhongTro> arrs = [];
  try {
    List<String> lines = await File(fileName).readAsLines();
    for (String line in lines) {
      if (line.trim().isEmpty) continue;
      List<String> parts = line.split('#');
      
    
      if (parts.length == 5 && parts[0].trim().startsWith('A')) {
        String masp = parts[0].trim();
        int songuoi = int.parse(parts[1].trim());
        double sodien = double.parse(parts[2].trim());
        double sonuocsd = double.parse(parts[3].trim());
        int songuoithan = int.parse(parts[4].trim());

        arrs.add(PhongLoaiA.fullPara(masp, songuoi, sodien, sonuocsd, songuoithan));
      }

      else if (parts.length == 6 && parts[0].trim().startsWith('B')) {
        String masp = parts[0].trim();
        int songuoi = int.parse(parts[1].trim());
        double sodien = double.parse(parts[2].trim());
        double sonuocsd = double.parse(parts[3].trim());
        double giatui = double.parse(parts[4].trim());
        int somay = int.parse(parts[5].trim());

        arrs.add(PhongLoaiB.fullPara(masp, songuoi, sodien, sonuocsd, giatui, somay));
      }
    }
  } catch (e) {
    print('Lỗi khi đọc file: $e');
  }
  return arrs;
}