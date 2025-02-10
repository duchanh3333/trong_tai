// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

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
  final int trang_thai;
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
    this.trang_thai,
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
              //----------------Cột bên trái ngày, giờ
              Column(                                
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(gio),
                  const Divider(),
                  Text(ngay),
                ],
              ),
              const SizedBox(width: 20,),
              //Cột bên phải (sẽ chia thành 2 dòng)
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //Tên sân đấu
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Sân: $san_thi_dau')),
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
                        Column(
                          children: [
                            Image.asset(loai_tran_dau==1?'assets/images/one_person_logo.png':'assets/images/two_person_logo.png', height: 20.0, width: 20.0,),
                            Text(van_dong_vien1),
                            Text(loai_tran_dau==2? van_dong_vien2:''),                            
                          ],
                        ),
                        Column(
                          children: [
                            const Text('2-1'),
                            SizedBox(
                              height: 35,
                              width: 90,
                              child: DecoratedBox(                              
                                decoration: const BoxDecoration(
                                  color: Colors.red,                                
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                ),
                                child: TextButton(                                
                                  onPressed: (){},                               
                                  child: Text(trang_thai==0?'End':trang_thai==1?'Live':'Wait..')),
                              ),
                            ),                            
                          ],
                        ),
                         Column(
                          children: [
                            Image.asset(loai_tran_dau==1?'assets/images/one_person_logo.png':'assets/images/two_person_logo.png', height: 20.0, width: 20.0,),
                            Text(van_dong_vien3),
                            Text(loai_tran_dau==2? van_dong_vien4:''),                            
                          ],
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

  