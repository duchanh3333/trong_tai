// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'models/cls_tran_dau.dart';

class ChamDiemMaincreen extends StatefulWidget {
  @override
  State<ChamDiemMaincreen> createState() => _ChamDiemcreenState();
}

class _ChamDiemcreenState extends State<ChamDiemMaincreen> {
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
              //Hang dau tien: Ngay thang / gio/ va cac nut lenh
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                  const Text('25/02/2025'),
                  const SizedBox(width: 15,),
                  const Text('16:20'),
                  SizedBox(width: MediaQuery.of(context).size.width*0.7,),
                  //nut lenh so 1 ben tren
                  SizedBox(                    
                    height: MediaQuery.of(context).size.height*0.08,
                    width: MediaQuery.of(context).size.height*0.08,                                      
                    child: DecoratedBox(                      
                      decoration: const BoxDecoration(                        
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(5)),                        
                      ),
                      child: IconButton(
                        padding: const EdgeInsets.all(0),
                        color: Colors.white,
                        icon: const Icon(Icons.arrow_left_sharp),
                        onPressed: (){},
                      ),
                    ),
                  ),
                  //nút lệnh thứ 2
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
                        padding: const EdgeInsets.all(0),                                  
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
                      Image.asset(2==1?'assets/images/one_person_logo.png':'assets/images/two_person_logo.png', height: 80.0, width: 80.0,),
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
                            height: chieu_cao*0.25,
                            width: chieu_rong*0.1,                            
                            child: const DecoratedBox(
                              decoration: BoxDecoration(                                
                                color: Colors.blue,
                                borderRadius: BorderRadius.all(Radius.circular(5)),                        
                              ),
                              child: Center(child: Text('2', style: TextStyle(fontSize: 60, color: Colors.white),)),),
                          ),
                          const SizedBox(width: 5,),
                          SizedBox(                                                        
                            height: chieu_cao*0.25,
                            width: chieu_rong*0.1,                            
                            child: const DecoratedBox(
                              decoration: BoxDecoration(                                
                                color: Colors.blue,
                                borderRadius: BorderRadius.all(Radius.circular(5)),                        
                              ),
                              child: Center(child: Text('2', style: TextStyle(fontSize: 60, color: Colors.white),)),),
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
                            height: chieu_cao*0.25,
                            width: chieu_rong*0.1,                            
                            child: const DecoratedBox(
                              decoration: BoxDecoration(                                
                                color: Colors.red,
                                borderRadius: BorderRadius.all(Radius.circular(5)),                        
                              ),
                              child: Center(child: Text('2', style: TextStyle(fontSize: 60, color: Colors.white),)),),
                          ),
                          const SizedBox(width: 5,),
                          SizedBox(                                                        
                            height: chieu_cao*0.25,
                            width: chieu_rong*0.1,                            
                            child: const DecoratedBox(
                              decoration: BoxDecoration(                                
                                color: Colors.red,
                                borderRadius: BorderRadius.all(Radius.circular(5)),                        
                              ),
                              child: Center(child: Text('2', style: TextStyle(fontSize: 60, color: Colors.white),)),),
                          ),
                          const SizedBox(width: 3,),                          
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
                      Image.asset(2==1?'assets/images/one_person_logo.png':'assets/images/two_person_logo.png', height: 80.0, width: 80.0,),
                      const Text('Trần Đức Huy', style: TextStyle(fontSize: 20),),
                      const Text('Đoàn T Sơn', style: TextStyle(fontSize: 20),),                      
                    ],
                  ),
                
              ],),            
              //------------------ cac nút lệnh
              //Row duoi chia thanh 4 column, tuong ung voi cac nut lenh              
              Row(
                mainAxisAlignment: MainAxisAlignment.center, 
                crossAxisAlignment: CrossAxisAlignment.center,               
                children: [
                  Column(
                    children: [
                      DecoratedBox(                        
                        decoration: const BoxDecoration(                                                    
                            color: Colors.grey,                                                                    
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                          ),                      
                        child: Container(                              
                          height: chieu_cao*0.09,                      
                          width: chieu_rong*0.2,                          
                          margin: const EdgeInsets.symmetric(horizontal: 1.0, vertical: 1.0),
                          child: TextButton(                                                                                                          
                            onPressed: (){}, 
                            child:  const Text('Van Nam (2)', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color:  Colors.white),),
                          ),
                        ),
                      ),
                      const SizedBox(height: 3,),
                      DecoratedBox(                    
                        decoration: const BoxDecoration(                        
                            color: Colors.blue,                                                                    
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20)),
                          ),                      
                        child: Container(                                                
                          height: chieu_cao*0.09,                      
                          width: chieu_rong*0.2,                          
                          margin: const EdgeInsets.symmetric(horizontal: 1.0, vertical: 1.0),
                          child: TextButton(                                                                              
                            onPressed: (){}, 
                            child:const Text('Cong khanh (1)', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color:  Colors.white),),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 3,),
                  Column(
                    children: [
                      DecoratedBox(                    
                        decoration: const BoxDecoration(                        
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
                          ),                      
                        child: Container(                                                
                          height: chieu_cao*0.2,                      
                          width: chieu_rong*0.2,                          
                          margin: const EdgeInsets.symmetric(horizontal: 1.0, vertical: 1.0),
                          child: TextButton(                                                                              
                            onPressed: (){}, 
                            child:const Text('+', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color:  Colors.white),),
                          ),
                        ),
                      ),                                            
                    ],
                  ),
                  const SizedBox(width: 10,),
                  Column(
                    children: [
                      DecoratedBox(                    
                        decoration: const BoxDecoration(                        
                            color: Colors.red,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
                          ),                      
                        child: Container(                                                
                          height: chieu_cao*0.2,                      
                          width: chieu_rong*0.2,                          
                          margin: const EdgeInsets.symmetric(horizontal: 1.0, vertical: 1.0),
                          child: TextButton(                                                                              
                            onPressed: (){}, 
                            child:const Text('+', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color:  Colors.white),),
                          ),
                        ),
                      ),                                            
                    ],
                  ),
                  const SizedBox(width: 3,),
                  Column(
                    children: [
                      DecoratedBox(                    
                        decoration: const BoxDecoration(                        
                            color: Colors.red,                                                                    
                            borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
                          ),                      
                        child: Container(                                                
                          height: chieu_cao*0.09,                      
                          width: chieu_rong*0.2,                          
                          margin: const EdgeInsets.symmetric(horizontal: 1.0, vertical: 1.0),
                          child: TextButton(                                                                              
                            onPressed: (){}, 
                            child:const Text('Duc Huy (3)', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color:  Colors.white),),
                          ),
                        ),
                      ),
                      const SizedBox(height: 3,),
                      DecoratedBox(                    
                        decoration: const BoxDecoration(                        
                            color: Colors.grey,                                                                    
                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(20)),
                          ),                      
                        child: Container(                                                
                          height: chieu_cao*0.09,                      
                          width: chieu_rong*0.2,                          
                          margin: const EdgeInsets.symmetric(horizontal: 1.0, vertical: 1.0),
                          child: TextButton(                                                                              
                            onPressed: (){}, 
                            child:const Text('Tuan Son (4)', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color:  Colors.white),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ]
          ),
        )
      )
    );
  }
}
