class NhanVien{
  String _maNV='';
  String _tenNV='';
  double _heSoLuong=0.0;
  String _phongBan='';
  double _soNgayLV=0.0;
  static double LCB=2340;
  NhanVien(){
    _maNV="NV000";
    _tenNV="Nguyễn Văn A";
    _heSoLuong=2.34;
    _phongBan="Tổ Chức";
    _soNgayLV=22;
  }
  NhanVien.fullPara(String masv,String tennv,double hsl,String pb,double songaylv){
    _maNV=masv;
    _tenNV=tennv;
    _heSoLuong=hsl;
    _phongBan=pb;
    _soNgayLV=songaylv;
  }
  String get maNV=>_maNV;
  set maNV(String value){
    if(value.isNotEmpty){
      _maNV=value;
    }
  }
  String get tenNV=>_tenNV;
  set tenNV(String value){
    if(value.isNotEmpty){
      _tenNV=value;
    }
  }
  String get phongBan=>_phongBan;
  set phongBan(String value){
    if(value.isNotEmpty){
      _phongBan=value;
    }
  }
  double get heSoLuong=>_heSoLuong;
  set heSoLuong(double value){
    if(value>0){
      _heSoLuong=0;
    }
  }
  double get soNgayLV=>_soNgayLV;
  set soNgayLV(double value){
    if(value>0){
      _soNgayLV=0;
    }
  }
  String xepLoai(){
    if (_soNgayLV>25){
      return 'A';
    }
    else if(_soNgayLV>22){
      return 'B';
    }else{
      return 'C';
    }
  }
  double tinhLuong(){
    String xLoai=xepLoai();
    double hsThiDua=0.5;
    if(xLoai=='A'){
      hsThiDua=1;
    }else if(xLoai=='B'){
      hsThiDua=0.75;
    }return LCB*_heSoLuong*hsThiDua;
  }
  @override
  String toString(){
    return "$_maNV\t$_tenNV\t$_heSoLuong\t$_soNgayLV\t${xepLoai()}\t${tinhLuong()}";
  }
}