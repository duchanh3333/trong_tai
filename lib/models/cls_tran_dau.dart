
// ignore_for_file: non_constant_identifier_names

class TranDau {
  final String id;
  final String ten_tran;
  final String ngay;
  final String gio;
  final String san_thi_dau;
  final String van_dong_vien1;
  final String van_dong_vien2;
  final String van_dong_vien3;
  final String van_dong_vien4;
  final int loai_tran_dau; //danh doi hay don 
  final int status;//1=Live; 0=END; 2=Waiting...
  final String ten_giai_dau;

  TranDau(
      {required this.id,
      required this.ten_tran,
      required this.ngay,
      required this.gio,
      required this.san_thi_dau,
      required this.van_dong_vien1,
      this.van_dong_vien2='',
      required this.van_dong_vien3,
      this.van_dong_vien4='',
      required this.loai_tran_dau,
      required this.status,
      required this.ten_giai_dau});
}
