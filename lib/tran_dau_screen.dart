// ignore_for_file: use_key_in_widget_constructors

import 'package:app_trong_tai/widgets/item_tran_dau.dart';
import 'package:flutter/material.dart';
import 'models/cls_tran_dau.dart';

class TranDauScreen extends StatelessWidget {
  //const ProductsOverviewScreen({super.key});
  final List<TranDau> dsTranDau = [
    TranDau(
      id: 'tran1',
      ten_tran: 'Vô địch u19 Hải Phòng',
      ngay: '25/2',
      gio: '4:20',
      san_thi_dau: 'Nhà thi đấu Hải Phòng',
      loai_tran_dau: 1, //1 là đơn; 2 là đôi
      van_dong_vien1: 'Nguyên Hoàng',
      van_dong_vien3: 'Trần Đức Huy',
      trang_thai: 1,
      ten_giai_dau: "Vô địch U19 Hải Phòng"
    ),
     TranDau(
      id: 'tran3',
      ngay: '25/2',
      gio: '6:20',
      ten_tran: 'Người già Championships',
      san_thi_dau: 'Nhà thi đấu Hải Phòng',
      loai_tran_dau: 2, //1 là đơn; 2 là đôi
      van_dong_vien1: 'Lê Bá Ngọc',
      van_dong_vien2: 'Phùng Bích Ngọc',
      van_dong_vien3: 'Trần Đức Huy',
      van_dong_vien4: 'Vận động viên 4',
      trang_thai: 0,
      ten_giai_dau: "Open Mixed Double Hải Phòng"
    ),        
    TranDau(
      id: 'tran2',
      ngay: '25/2',
      gio: '5:20',
      ten_tran: 'Open Mixed Doubles HP',
      san_thi_dau: 'Nhà thi đấu Hải Phòng',
      loai_tran_dau: 1, //1 là đơn; 2 là đôi
      van_dong_vien1: 'Nguyên Hoàng',
      van_dong_vien3: 'Trần Đức Huy',
      trang_thai: 1,
      ten_giai_dau: "Vô địch U19 Hải Phòng"
    ),    
    TranDau(
      id: 'tran3',
      ngay: '25/2',
      gio: '6:20',
      ten_tran: 'Người già Championships',
      san_thi_dau: 'Nhà thi đấu Hải Phòng',
      loai_tran_dau: 1, //1 là đơn; 2 là đôi
      van_dong_vien1: 'Nguyên Hoàng',
      van_dong_vien3: 'Trần Đức Huy',
      trang_thai: 1,
      ten_giai_dau: "Vô địch U19 Hải Phòng"
    ),    
    TranDau(
      id: 'tran3',
      ngay: '25/2',
      gio: '6:20',
      ten_tran: 'Người già Championships',
      san_thi_dau: 'Nhà thi đấu Hải Phòng',
      loai_tran_dau: 1, //1 là đơn; 2 là đôi
      van_dong_vien1: 'Nguyên Hoàng',
      van_dong_vien3: 'Trần Đức Huy',
      trang_thai: 1,
      ten_giai_dau: "Vô địch U19 Hải Phòng"
    ),    
    TranDau(
      id: 'tran3',
      ngay: '25/2',
      gio: '6:20',
      ten_tran: 'Người già Championships',
      san_thi_dau: 'Nhà thi đấu Hải Phòng',
      loai_tran_dau: 1, //1 là đơn; 2 là đôi
      van_dong_vien1: 'Nguyên Hoàng',
      van_dong_vien3: 'Trần Đức Huy',
      trang_thai: 0,
      ten_giai_dau: "Vô địch U19 Hải Phòng"
    ),    
    TranDau(
      id: 'tran3',
      ngay: '25/2',
      gio: '6:20',
      ten_tran: 'Người già Championships',
      san_thi_dau: 'Nhà thi đấu Hải Phòng',
      loai_tran_dau: 1, //1 là đơn; 2 là đôi
      van_dong_vien1: 'Nguyên Hoàng',
      van_dong_vien3: 'Trần Đức Huy',
      trang_thai: 2,
      ten_giai_dau: "Vô địch U19 Hải Phòng"
    ),    
    TranDau(
      id: 'tran3',
      ngay: '25/2',
      gio: '6:20',
      ten_tran: 'Người già Championships',
      san_thi_dau: 'Nhà thi đấu Hải Phòng',
      loai_tran_dau: 1, //1 là đơn; 2 là đôi
      van_dong_vien1: 'Nguyên Hoàng',
      van_dong_vien3: 'Trần Đức Huy',
      trang_thai: 1,
      ten_giai_dau: "Vô địch U19 Hải Phòng"
    ),    
    TranDau(
      id: 'tran3',
      ngay: '25/2',
      gio: '6:20',
      ten_tran: 'Người già Championships',
      san_thi_dau: 'Nhà thi đấu Hải Phòng',
      loai_tran_dau: 1, //1 là đơn; 2 là đôi
      van_dong_vien1: 'Nguyên Hoàng',
      van_dong_vien3: 'Trần Đức Huy',
      trang_thai: 1,
      ten_giai_dau: "Vô địch U19 Hải Phòng"
    ),    
   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Xem cac tran dau'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: dsTranDau.length,
        //cai nay la de sinh ra cac item cua Gridview
        itemBuilder: (ctx, i) => TranDauItem(
          dsTranDau[i].id,
          dsTranDau[i].ten_tran,
          dsTranDau[i].ngay,
          dsTranDau[i].gio,
          dsTranDau[i].san_thi_dau,
          dsTranDau[i].loai_tran_dau,
          dsTranDau[i].van_dong_vien1,
          dsTranDau[i].van_dong_vien2,
          dsTranDau[i].van_dong_vien3,
          dsTranDau[i].van_dong_vien4,
          dsTranDau[i].trang_thai,
          dsTranDau[i].ten_giai_dau,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 5 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
