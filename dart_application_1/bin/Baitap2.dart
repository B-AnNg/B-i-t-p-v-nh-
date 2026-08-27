import 'dart:io';
import 'package:dart_application_1/mon_hoc.dart';
import 'package:dart_application_1/monLT.dart';
import 'package:dart_application_1/monTH.dart';
import 'package:dart_application_1/monDA.dart';

void main() async {
 
  List<MonHoc> dsMonHoc = await docFile('lib/monhoc.txt');

  
  print('=== DANH SÁCH MÔN HỌC ĐỌC TỪ FILE ===');
  inDanhSach(dsMonHoc);


  bool isSorted = kiemTraTangDanTheoTen(dsMonHoc);
  print('\n>>> Danh sách có sắp xếp tăng dần theo tên môn học hay không? ${isSorted ? "CÓ" : "KHÔNG"}');

 
  dsMonHoc.sort((a, b) => a.soTinChi.compareTo(b.soTinChi));
  print('\n=== DANH SÁCH SẮP XẾP TĂNG DẦN THEO SỐ TÍN CHỈ ===');
  inDanhSach(dsMonHoc);

  int maxSTC = dsMonHoc.fold(0, (max, m) => m.soTinChi > max ? m.soTinChi : max);
  List<MonHoc> dsMaxSTC = dsMonHoc.where((m) => m.soTinChi == maxSTC).toList();
  print('\n=== CÁC MÔN HỌC CÓ SỐ TÍN CHỈ CAO NHẤT ($maxSTC STC) ===');
  inDanhSach(dsMaxSTC);

  int tongSTC = dsMonHoc.fold(0, (sum, m) => sum + m.soTinChi);
  double stcTrungBinh = dsMonHoc.isNotEmpty ? tongSTC / dsMonHoc.length : 0;
  print('\n>>> Số tín chỉ trung bình: ${stcTrungBinh.toStringAsFixed(2)}');


  stdout.write('\nNhập tên môn học cần tìm: ');
  String inputTen = stdin.readLineSync() ?? '';
  
  List<MonHoc> timKiem = dsMonHoc.where((m) => m.tenMon.toLowerCase() == inputTen.trim().toLowerCase()).toList();
  
  if (timKiem.isNotEmpty) {
    print('--> TÌM THẤY MÔN HỌC:');
    inDanhSach(timKiem);
  } else {
    print('--> KHÔNG TÌM THẤY MÔN HỌC! Tiến hành nhập thông tin môn Lý Thuyết mới để thêm vào cuối danh sách:');
    stdout.write('Mã môn: ');
    String ma = stdin.readLineSync() ?? '';
    stdout.write('Số tín chỉ: ');
    int stc = int.parse(stdin.readLineSync() ?? '0');
    stdout.write('Điểm tiểu luận: ');
    double dtl = double.parse(stdin.readLineSync() ?? '0');
    stdout.write('Điểm cuối kỳ: ');
    double dck = double.parse(stdin.readLineSync() ?? '0');

    MonHoc monMoi = MonLyThuyet.fullPara(ma, inputTen, stc, dtl, dck);
    dsMonHoc.add(monMoi);

    print('\n=== DANH SÁCH SAU KHỊ THÊM MÔN MỚI ===');
    inDanhSach(dsMonHoc);
  }
}

void inDanhSach(List<MonHoc> list) {
  for (var mon in list) {
    mon.showInfo();
  }
}

bool kiemTraTangDanTheoTen(List<MonHoc> list) {
  for (int i = 0; i < list.length - 1; i++) {
    if (list[i].tenMon.compareTo(list[i + 1].tenMon) > 0) {
      return false;
    }
  }
  return true;
}

Future<List<MonHoc>> docFile(String path) async {
  List<MonHoc> list = [];
  try {
    List<String> lines = await File(path).readAsLines();
    for (String line in lines) {
      if (line.trim().isEmpty) continue;
      List<String> parts = line.split('#');
      String loai = parts[0].trim();

      if (loai == 'LT') {
        list.add(MonLyThuyet.fullPara(parts[1].trim(), parts[2].trim(), int.parse(parts[3]), double.parse(parts[4]), double.parse(parts[5])));
      } else if (loai == 'TH') {
        list.add(MonThucHanh.fullPara(parts[1].trim(), parts[2].trim(), int.parse(parts[3]), double.parse(parts[4]), double.parse(parts[5]), double.parse(parts[6])));
      } else if (loai == 'DA') {
        list.add(MonDoAn.fullPara(parts[1].trim(), parts[2].trim(), int.parse(parts[3]), double.parse(parts[4]), double.parse(parts[5])));
      }
    }
  } catch (e) {
    print('Lỗi đọc file: $e');
  }
  return list;
}