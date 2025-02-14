// ignore_for_file: use_key_in_widget_constructors

import 'package:app_trong_tai/log_in.dart';
import 'package:app_trong_tai/widgets/item_tran_dau.dart';
import 'package:flutter/material.dart';
import 'models/cls_tran_dau.dart';

class DrawerOnly extends StatelessWidget {  
  @override
  Widget build (BuildContext ctxt) {
    return Container(
      padding: const EdgeInsets.all(4),
      width: 250,
      // height: 200,
      child: Drawer(
          child: ListView(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(4),
                height: 80,
                child: const DrawerHeader(              
                  decoration: BoxDecoration(                    
                      color: Colors.orange
                  ),
                  child: Text("HEADER.."),
                ),
              ),
              ListTile(                
                title: const Text("Thông tin người dùng"),
                onTap: () {
                  // Navigator.pop(ctxt);
                  // Navigator.push(ctxt,
                  //     new MaterialPageRoute(builder: (ctxt) => new FirstPage()));
                },
              ),
              ListTile(
                title: const Text("Đăng xuất"),
                onTap: () {
                  Navigator.pop(ctxt);
                  Navigator.push(ctxt,
                      MaterialPageRoute(builder: (ctxt) => const LoginPage()));
                },
              ),
            ],
          )
      ),
    );
  }
}

class DSTranDau extends StatefulWidget {
  @override
  State<DSTranDau> createState() => _DSTranDauState();
}

class _DSTranDauState extends State<DSTranDau> {
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
      status: 1, //0 la Sap dien ra, 1 la Dang dien ra, 2 la Ket thuc, 3 la Tat ca
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
      status: 0,
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
      status: 1,
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
      status: 1,
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
      status: 1,
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
      status: 0,
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
      status: 2,
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
      status: 1,
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
      status: 1,
      ten_giai_dau: "Vô địch U19 Hải Phòng"
    ),    
   
  ];

  ValueNotifier<List<TranDau>> dsChonTranDau = ValueNotifier([]);
  //intLuaChon=0: Sap dien ra, 1: Dang dien ra, 2: Ket thuc; 3: Tat ca
  ValueNotifier<int> intLuaChon=ValueNotifier(0);

@override
  void dispose() {
    // TODO: implement dispose
    dsChonTranDau.dispose();
    super.dispose();
  }
  @override
  void initState() {
    // TODO: implement initState
    intLuaChon.value=3;
    dsChonTranDau.value=[...dsTranDau];
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Xem các trận đấu'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //----1. Gom 4 cai button: Sap dien ra, dang dien ra, da dien ra, ket thuc
            Container(              
              padding: const EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height*0.07,
              width: MediaQuery.of(context).size.width,
              child: ValueListenableBuilder<int>(
                valueListenable: intLuaChon,
                builder: (context, value1, child) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //1.1. Chon cac tran dau "Sap dien ra"
                    TextButton(                                                  
                      onPressed: () {                        
                        List<TranDau> tem=[];
                        tem=dsTranDau.where((element) => element.status==0,).toList();
                        dsChonTranDau.value.clear();
                        dsChonTranDau.value=[...tem];
                        tem.clear();
                        intLuaChon.value=0;
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: const Color.fromARGB(255, 111, 54, 244), 
                        backgroundColor:intLuaChon.value==0? Colors.red : Colors.blue,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                      ),
                      child: const Text('Sắp diễn ra',style: TextStyle(color: Colors.white),),
                    ),
                    //1.2 Chon cac tran dau "Dang dien ra"
                    TextButton(                                                  
                      onPressed: () {
                        List<TranDau> tem=[];
                        tem=dsTranDau.where((element) => element.status==1,).toList();
                        dsChonTranDau.value.clear();
                        dsChonTranDau.value=[...tem];
                        tem.clear();                        
                        intLuaChon.value=1;
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.red, 
                        backgroundColor:intLuaChon.value==1? Colors.red : Colors.blue,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                      ),
                      child: const Text('Đang diễn ra',style: TextStyle(color: Colors.white),),
                    ),
                    //1.3 Chon cac tran dau "Ket thuc"
                    TextButton(                                                  
                      onPressed: () {
                        List<TranDau> tem=[];
                        tem=dsTranDau.where((element) => element.status==2,).toList();
                        dsChonTranDau.value.clear();
                        dsChonTranDau.value=[...tem];
                        tem.clear();                        
                        intLuaChon.value=2;
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.red, 
                        backgroundColor:intLuaChon.value==2? Colors.red : Colors.blue,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                      ),
                      child: const Text('Kết thúc',style: TextStyle(color: Colors.white),),
                    ),
                    TextButton(                                                  
                      onPressed: () {                        
                        dsChonTranDau.value=[...dsTranDau];                        
                        intLuaChon.value=3;                        
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.red, 
                        backgroundColor:intLuaChon.value==3? Colors.red : Colors.blue,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                      ),
                      child: const Text('Tất cả',style: TextStyle(color: Colors.white),),
                    ),
                  ],
                ),
              ),
            ),
            //----2. La danh sach tran dau
            Container(
              padding: const EdgeInsets.all(4),
              height: MediaQuery.of(context).size.height*0.8,
              width: MediaQuery.of(context).size.width,
              child: ValueListenableBuilder<List<TranDau>>(
                valueListenable: dsChonTranDau,
                builder: (context, value1, child) =>GridView.builder(
                  padding: const EdgeInsets.all(10.0),
                  // itemCount: dsTranDau.length,
                  itemCount: value1.length,
                  //cai nay la de sinh ra cac item cua Gridview
                  itemBuilder: (context, i) => TranDauItem(
                    // dsTranDau[i].id,
                    // dsTranDau[i].ten_tran,
                    // dsTranDau[i].ngay,
                    // dsTranDau[i].gio,
                    // dsTranDau[i].san_thi_dau,
                    // dsTranDau[i].loai_tran_dau,
                    // dsTranDau[i].van_dong_vien1,
                    // dsTranDau[i].van_dong_vien2,
                    // dsTranDau[i].van_dong_vien3,
                    // dsTranDau[i].van_dong_vien4,
                    // dsTranDau[i].status,
                    // dsTranDau[i].ten_giai_dau,
                    value1[i].id,
                    value1[i].ten_tran,
                    value1[i].ngay,
                    value1[i].gio,
                    value1[i].san_thi_dau,
                    value1[i].loai_tran_dau,
                    value1[i].van_dong_vien1,
                    value1[i].van_dong_vien2,
                    value1[i].van_dong_vien3,
                    value1[i].van_dong_vien4,
                    value1[i].status,
                    value1[i].ten_giai_dau,
                  ),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    childAspectRatio: 5 / 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: DrawerOnly(),
    );
  }
}
