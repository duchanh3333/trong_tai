// ignore_for_file: non_constant_identifier_names

import 'package:app_trong_tai/widgets/xem_tran_dau_screen.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'cham_diem_screen.dart';

class TranDauItem extends StatelessWidget {
  // const ProductItem({super.key});
  final String id;
  final String ten_tran;
  final String ngay;
  final String gio;
  final String san_thi_dau;
  final int loai_tran_dau;
  final String van_dong_vien1;
  final String van_dong_vien2;
  final String van_dong_vien3;
  final String van_dong_vien4;  
  final int status;
  final String ten_giai_dau;

  const TranDauItem(
    this.id,
    this.ten_tran,
    this.ngay,
    this.gio,
    this.san_thi_dau,
    this.loai_tran_dau,
    this.van_dong_vien1,
    this.van_dong_vien2,
    this.van_dong_vien3,
    this.van_dong_vien4,
    this.status,
    this.ten_giai_dau,
    
  );
  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: SizedBox(        
        width: MediaQuery.of(context).size.width,
        // height: 220,        
        child: DecoratedBox(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 223, 217, 217),
          ),
          child: Row(
            //Tổng thể là 1 dòng, chia thành 2 cột (bên trái, bên phải), cột bên phải gồm 4 dòng (tên sân, dòng còn lại chia thành 3 cột)
            //tương ứng với vận động viên đội 1, tỉ số, vận động viên đội 2; dòng tiếp là kiểu trận, dòng cuối cùng là tên giải đấu)
            children: [
              //----------------1. Cột bên trái ngày, giờ
              Column(                                
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30,),
                  Text(gio),                  
                  const SizedBox(height: 5,),
                  Text(ngay),
                ],
              ),
              const SizedBox(width: 8,),
              //-----------------2. Cột bên phải (sẽ chia thành n dòng)
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //_______2.1. Tên sân thi dau
                  Row(
                    children: [
                      Text('Sân: $san_thi_dau',),
                    ],
                  ),
                  //Sizedbox là cái hình nổi màu trắng; gồm tên vận động viên, tỉ số, Live hay ...
                  SizedBox(        
                    width: MediaQuery.of(context).size.width*0.8,                            
                    child: DecoratedBox(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Row(children: [                        
                        Expanded(
                          flex: 4,
                          child: Column(
                            children: [
                              Image.asset(loai_tran_dau==1?'assets/images/one_person_logo.png':'assets/images/two_person_logo.png', height: 20.0, width: 20.0,),
                              Text(van_dong_vien1),
                              Text(loai_tran_dau==2? van_dong_vien2:''),                            
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            children: [
                              const Text('2-1'),
                              Container(
                                padding: EdgeInsets.zero,
                                margin: EdgeInsets.zero,
                                height: 35,
                                width: 80,
                                child: DecoratedBox(                              
                                  decoration: const BoxDecoration(
                                    color: Colors.red,                                
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: TextButton(                                
                                    onPressed: (){
                                      //clik vao cai nay thi tuy theo cai status ma ra cham diem, hay la hien thi tran dau
                                      //cần phải truyền vào cái id của trận đấu, tạm chưa làm
                                      if(status==0){                                        
                                        toast('Tran dau chua dien ra');
                                      }else if (status==1){
                                        toast('Tran dau dang dien ra');                                         
                                        Navigator.push(context, MaterialPageRoute(builder: (_) => ChamDiemMainScreen()));

                                      }else{
                                        // toast('Tran dau da ket thuc');
                                        Navigator.push(context, MaterialPageRoute(builder: (_) => XemTranDauScreen()));
                                      }
                                    },                               
                                    child: Text(status==0?'Up...':status==1?'Live':'End')),
                                ),
                              ),                            
                            ],
                          ),
                        ),
                         Expanded(
                          flex: 4,
                           child: Column(
                            children: [
                              Image.asset(loai_tran_dau==1?'assets/images/one_person_logo.png':'assets/images/two_person_logo.png', height: 20.0, width: 20.0,),
                              Text(van_dong_vien3),
                              Text(loai_tran_dau==2? van_dong_vien4:''),                            
                            ],
                                                   ),
                         ),
                      ],),
                    )
                  ),
                  const SizedBox(height: 10,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [                    
                      Text('Đơn nam'),                      
                      SizedBox(width: 100,),
                      Text('Chung kết'),
                    ]
                  ),
                  const SizedBox(height: 3,),
                  //------ tên giải đấu                                 
                  IntrinsicWidth(
                    child: Row(                    
                        mainAxisAlignment: MainAxisAlignment.start,                    
                        children: [
                          Text(ten_giai_dau,style:const TextStyle(color: Colors.red),textAlign:TextAlign.left,),  
                          const SizedBox(width: 10,),
                        ],
                      ),
                  ),
                  
                ],
              ),
            ],
          ))),
    );
  }
}

  