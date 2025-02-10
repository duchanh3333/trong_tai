// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'models/cls_tran_dau.dart';

class ChamDiemcreen extends StatefulWidget {
  @override
  State<ChamDiemcreen> createState() => _ChamDiemcreenState();
}

class _ChamDiemcreenState extends State<ChamDiemcreen> {
  //const ProductsOverviewScreen({super.key});
  String vidu='';
  @override
  void initState(){
    super.initState();
    SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeRight,
        DeviceOrientation.landscapeLeft,
    ]);
  }

  @override
  dispose(){
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double chieu_cao=MediaQuery.of(context).size.height;
    double chieu_rong=MediaQuery.of(context).size.width;
    return Scaffold(      
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(          
            children: [
              //Row nay de cach ben tren mot chut
              Row(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                ],
              ),
              //Hang dau tien: Ngay thang / gio/ 2 nut
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                  const Text('25/02/2025'),
                  const SizedBox(width: 15,),
                  const Text('16:20'),
                  SizedBox(width: MediaQuery.of(context).size.width*0.7,),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.08,
                    width: MediaQuery.of(context).size.height*0.08,                                      
                    child: DecoratedBox(
                      decoration: const BoxDecoration(                        
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(5)),                        
                      ),
                      child: IconButton(                                          
                        color: Colors.white,
                        icon: const Icon(Icons.arrow_left_sharp),
                        onPressed: (){},
                      ),
                    ),
                  ),
                  const SizedBox(width: 15,),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.08,
                    width: MediaQuery.of(context).size.height*0.08,                                      
                    child: DecoratedBox(
                      decoration: const BoxDecoration(                        
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(5)),                        
                      ),
                      child: IconButton(                                          
                        color: Colors.white,
                        icon: const Icon(Icons.arrow_left_sharp),
                        onPressed: (){},
                      ),
                    ),
                  ),

                ],
              ),
              // ten tran dau
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                  const Text('Nguoi Gia ChampionShip ngay 25/2/2025', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ],
              ),
              // Ma tran dau
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                  const Icon(Icons.ac_unit),
                  const SizedBox(width: 15,),
                  const Text('Ma tran dau: VDHP007', style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal),),
                  const SizedBox(width: 15,),
                  const Icon(Icons.ac_unit),
                ],
              ),
              //dong chinh gom ten van dong vien, ti so, ...
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [ 
                  //icon và tên vận động viên đội 1                 
                  Column(                    
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                      Image.asset(2==1?'assets/images/one_person_logo.png':'assets/images/two_person_logo.png', height: 100.0, width: 100.0,),
                      const Text('Nguyen Cong Khanh', style: TextStyle(fontSize: 20),),
                      const Text('Cao Van Nam', style: TextStyle(fontSize: 20),),                      
                  ],),
                  //số điểm của đội 1
                  Column(
                    children: [
                      Row(          
                        crossAxisAlignment: CrossAxisAlignment.start,//
                        children: [
                          SizedBox(                                                        
                            height: chieu_cao*0.3,
                            width: chieu_rong*0.1,                            
                            child: const DecoratedBox(
                              decoration: BoxDecoration(                                
                                color: Colors.blue,
                                borderRadius: BorderRadius.all(Radius.circular(5)),                        
                              ),
                              child: Center(child: Text('2', style: TextStyle(fontSize: 80, color: Colors.white),)),),
                          ),
                          const SizedBox(width: 5,),
                          SizedBox(                                                        
                            height: chieu_cao*0.3,
                            width: chieu_rong*0.1,                            
                            child: const DecoratedBox(
                              decoration: BoxDecoration(                                
                                color: Colors.blue,
                                borderRadius: BorderRadius.all(Radius.circular(5)),                        
                              ),
                              child: Center(child: Text('2', style: TextStyle(fontSize: 80, color: Colors.white),)),),
                          ),
                          const SizedBox(width: 5,),
                          SizedBox(                                                        
                            height: chieu_cao*0.08,
                            width: chieu_rong*0.02,                            
                            child: const Center(child: Text('2', style: TextStyle(fontSize: 20, color: Colors.black),)),
                          ),
                        ],
                      ),
                      //phần tròn bên dưới
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.circle,size: 30,color: Colors.black,),
                          Icon(Icons.circle,size: 30,color: Colors.black,),
                          Icon(Icons.circle,size: 30,color: Colors.black,),
                          Icon(Icons.circle,size: 30,color: Colors.red,),
                          Icon(Icons.circle,size: 30,color: Colors.blue,),
                          SizedBox(width: 30,),                          
                        ],
                      ),
                    ],
                  ),
                  //số điểm của đội 2
                  Column(
                    children: [
                      Row(          
                        crossAxisAlignment: CrossAxisAlignment.start,//
                        children: [
                          SizedBox(                                                        
                            height: chieu_cao*0.08,
                            width: chieu_rong*0.02,                            
                            child: const Center(child: Text('2', style: TextStyle(fontSize: 20, color: Colors.black),)),
                          ),
                          SizedBox(                                                        
                            height: chieu_cao*0.3,
                            width: chieu_rong*0.1,                            
                            child: const DecoratedBox(
                              decoration: BoxDecoration(                                
                                color: Colors.red,
                                borderRadius: BorderRadius.all(Radius.circular(5)),                        
                              ),
                              child: Center(child: Text('2', style: TextStyle(fontSize: 80, color: Colors.white),)),),
                          ),
                          const SizedBox(width: 5,),
                          SizedBox(                                                        
                            height: chieu_cao*0.3,
                            width: chieu_rong*0.1,                            
                            child: const DecoratedBox(
                              decoration: BoxDecoration(                                
                                color: Colors.red,
                                borderRadius: BorderRadius.all(Radius.circular(5)),                        
                              ),
                              child: Center(child: Text('2', style: TextStyle(fontSize: 80, color: Colors.white),)),),
                          ),
                          const SizedBox(width: 5,),                          
                        ],
                      ),
                      //phần tròn bên dưới
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(width: 10,),                          
                          Icon(Icons.circle,size: 30,color: Colors.black,),
                          Icon(Icons.circle,size: 30,color: Colors.black,),
                          Icon(Icons.circle,size: 30,color: Colors.black,),
                          Icon(Icons.circle,size: 30,color: Colors.red,),
                          Icon(Icons.circle,size: 30,color: Colors.blue,),                          
                        ],
                      ),
                    ],                  
                  ),
                  //icon và tên vận đội viên đội 2
                  Column(                    
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                      Image.asset(2==1?'assets/images/one_person_logo.png':'assets/images/two_person_logo.png', height: 100.0, width: 100.0,),
                      const Text('Trần Đức Huy', style: TextStyle(fontSize: 20),),
                      const Text('Đoàn Tuấn Sơn', style: TextStyle(fontSize: 20),),                      
                    ],
                  ),
                
              ],),
              //------------- tên séc đấu
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('SET 5', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.red),),
                ],
              ),
              //------------------ nút lệnh "BẮT ĐẦU"
              //căn giữa vẫn chưa chuẩn
              Row(
                mainAxisAlignment: MainAxisAlignment.center, 
                crossAxisAlignment: CrossAxisAlignment.center,               
                children: [
                  DecoratedBox(                    
                    decoration: const BoxDecoration(                        
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(5)),                                                
                      ),                      
                    child: SizedBox(                      
                      height: chieu_cao*0.1,                      
                      width: chieu_rong*0.3,
                      child: TextButton(                      
                        onPressed: (){}, 
                        child:const Text('BẮT ĐẦU', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color:  Color.fromARGB(255, 107, 9, 1)),),
                      ),
                    ),
                  )
                ],
              ),
            ]
          ),
        )
      )
    );
  }
}
