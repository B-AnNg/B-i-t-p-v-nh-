import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int n = random.nextInt(10) + 5; 
  List<int> list = List.generate(n, (_) => random.nextInt(96) + 5); // Gia tri tu 5 den 100

  print('DANH SACH ');
  print(list.join(' '));
  print('');

  List<int> leList = list.where((x) => x % 2 != 0).toList();
  if (leList.isEmpty) {
    print(' Danh sach khong co so le.');
  } else {
    double tbc = leList.reduce((a, b) => a + b) / leList.length;
    print('Trung binh cong cac so le: ${tbc.toStringAsFixed(2)}');
  }

  bool isDoiXung = true;
  for (int i = 0; i < list.length ~/ 2; i++) {
    if (list[i] != list[list.length - 1 - i]) {
      isDoiXung = false;
      break;
    }
  }
  print('Danh sach ${isDoiXung ? "la" : "khong phai la"} danh sach doi xung.');
  bool isTangDan = true;
  for (int i = 0; i < list.length - 1; i++) {
    if (list[i] > list[i + 1]) {
      isTangDan = false;
      break;
    }
  }
  print('Danh sach ${isTangDan ? "duoc" : "khong duoc"} sap xep tang dan.');
  int maxVal = list.reduce((a, b) => a > b ? a : b);
  print('Phan tu lon nhat trong danh sach: $maxVal');


  List<int> chanList = list.where((x) => x % 2 == 0).toList();
  if (chanList.isEmpty) {
    print('Danh sach khong co so chan.');
  } else {
    int maxChan = chanList.reduce((a, b) => a > b ? a : b);
    print('Phan tu chan lon nhat: $maxChan');
  }
  stdout.write('\n Nhap mot gia tri can tim: ');
  String? input = stdin.readLineSync();
  int? val = int.tryParse(input ?? '');

  if (val == null) {
    print('Gia tri nhap khong hop le!');
  } else {
    if (!list.contains(val)) {
      print('Khong tim thay.');
    } else {
      print('Tim thay gia tri $val trong danh sach.');
      list.removeWhere((element) => element == val);
      print('Danh sach sau khi xoa tat ca cac phan tu bang $val:');
      print(list.join(' '));
    }
  }
}