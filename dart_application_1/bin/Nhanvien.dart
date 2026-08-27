import 'package:dart_application_1/CanBo.dart';
import 'package:dart_application_1/NhanVien.dart';
void main(){
  NhanVien nv=NhanVien.fullPara("NV001","Nguyễn Trần Tuấn",2.34,"Tổ Chức",23);
  CanBo cb=CanBo.fullPara('NV002','Trần Văn Bình',2.34,"Tổ Chức",26,"Trưởng Phòng",2.0);
  NhanVien nv3=NhanVien.fullPara("NV003","Nguyễn Nam",2.34,"Nhân Sự",27);
  List<NhanVien> lstNhanVien=[];
  lstNhanVien.add(nv);
  lstNhanVien.add(cb);
  lstNhanVien.add(nv3);
  print("Danh sách nhân viên và cán bộ:");
  for (NhanVien x in lstNhanVien){
    print(x);
  }
  List<NhanVien> lstLoaiA=lstNhanVien.where((a) => a.xepLoai()=="A").toList();
  print('Danh sách nhân viên và cán bộ xếp loại A:');
  for (NhanVien x in lstLoaiA){
    print(x);
  }
  double tongLuong=lstNhanVien.fold(0,(sum,nv)=>sum+nv.tinhLuong());
  print("Tổng lương của nhan viên và cán bộ:$tongLuong");
  lstNhanVien.sort((x,y)=>x.tinhLuong().compareTo(y.tinhLuong()));
  print("Danh sách sau khi sắp xếp tăng dần theo lương: ");
  for(NhanVien x in lstNhanVien){
    print(x);
  }
}