import 'dart:io';

void main() {

  stdout.write(' Nhap vao mot chuoi: ');
  String input = stdin.readLineSync() ?? '';
  print('Chuoi vua nhap: "$input"');

  if (input.trim().isEmpty) {
    print('Chuoi rong, khong the thuc hien cac buoc tiep theo.');
    return;
  }

  
  int countNguyenAm = 0;
  Set<String> nguyenAm = {'a', 'e', 'i', 'o', 'u', 'y'};

  for (int i = 0; i < input.length; i++) {
    if (nguyenAm.contains(input[i].toLowerCase())) {
      countNguyenAm++;
    }
  }
  print('So ki tu nguyen am trong chuoi: $countNguyenAm');

 
  List<String> words = input.trim().split(RegExp(r'\s+'));
  int countWords = words.isEmpty ? 0 : words.length;
  print('So tu trong chuoi: $countWords');

  bool isDoiXung = true;
  String cleanStr = input.toLowerCase();
  for (int i = 0; i < cleanStr.length ~/ 2; i++) {
    if (cleanStr[i] != cleanStr[cleanStr.length - 1 - i]) {
      isDoiXung = false;
      break;
    }
  }
  print('Chuoi ${isDoiXung ? "la" : "khong phai la"} chuoi doi xung.');

  
  String reversedWords = words.reversed.join(' ');
  print(' Chuoi dao nguoc : "$reversedWords"');
}