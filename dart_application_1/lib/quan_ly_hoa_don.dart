import 'dart:io';
import 'hoa_don.dart';
import 'khach_hang_ca_nhan.dart';
import 'dai_ly_cap1.dart';
import 'khach_hang_cong_ty.dart';

class QuanLyHoaDon {
  List<HoaDon> dsHoaDon = [];

  void nhapDanhSach() {
    stdout.write('Nhập số lượng hóa đơn cần thêm: ');
    int n = int.parse(stdin.readLineSync() ?? '0');
    for (int i = 0; i < n; i++) {
      print('\n--- Nhập hóa đơn thứ ${i + 1} ---');
      print('1. Khách hàng cá nhân');
      print('2. Đại lý cấp 1');
      print('3. Khách hàng công ty');
      stdout.write('Chọn loại khách hàng (1-3): ');
      int chon = int.parse(stdin.readLineSync() ?? '1');

      HoaDon hd;
      switch (chon) {
        case 1:
          hd = KhachHangCaNhan();
          break;
        case 2:
          hd = DaiLyCap1();
          break;
        case 3:
          hd = KhachHangCongTy();
          break;
        default:
          hd = KhachHangCaNhan();
      }
      hd.nhapThongTin();
      dsHoaDon.add(hd);
    }
  }

  void xuatDanhSach() {
    if (dsHoaDon.isEmpty) {
      print('Danh sách hóa đơn trống!');
      return;
    }
    for (var hd in dsHoaDon) {
      print('-------------------------------------');
      hd.xuatThongTin();
    }
  }

  double tinhTongThanhTien() {
    return dsHoaDon.fold(0.0, (sum, hd) => sum + hd.tinhThanhTien());
  }

  double tinhTongTroGia() {
    return dsHoaDon.fold(0.0, (sum, hd) => sum + hd.tinhTroGia());
  }

  void timKHMuaNhieuNhat() {
    if (dsHoaDon.isEmpty) return;
    int maxSL = dsHoaDon.fold(0, (max, hd) => hd.soLuong > max ? hd.soLuong : max);
    print('\n=== KHÁCH HÀNG MUA NHIỀU SẢN PHẨM NHẤT ($maxSL SP) ===');
    for (var hd in dsHoaDon.where((hd) => hd.soLuong == maxSL)) {
      hd.xuatThongTin();
    }
  }

  double tinhTongChietKhauKHCongTy() {
    double tongCK = 0.0;
    for (var hd in dsHoaDon) {
      if (hd is KhachHangCongTy) {
        tongCK += hd.tinhChietKhau();
      }
    }
    return tongCK;
  }

  void sapXepDanhSach() {
    dsHoaDon.sort((a, b) {
      int compareSL = a.soLuong.compareTo(b.soLuong);
      if (compareSL != 0) return compareSL; 
      return b.tinhThanhTien().compareTo(a.tinhThanhTien()); 
    });
  }

  void timKiemTheoMa(String maX) {
    var timKiem = dsHoaDon.where((hd) => hd.maKH.toUpperCase() == maX.trim().toUpperCase()).toList();
    if (timKiem.isNotEmpty) {
      print('\n=== HÓA ĐƠN CỦA MÃ KHÁCH HÀNG $maX ===');
      for (var hd in timKiem) {
        hd.xuatThongTin();
      }
    } else {
      print('\n"Khách hàng lạ"');
    }
  }
}