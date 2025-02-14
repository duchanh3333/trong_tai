// ignore_for_file: avoid_print, non_constant_identifier_names

import 'dart:io';

import 'package:app_trong_tai/tran_dau_screen.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:flutter/services.dart';
import 'widgets/xem_tran_dau_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key,}); 

  @override
  State<LoginPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<LoginPage> {  

  final _conUserId = TextEditingController();
  final _conPassword = TextEditingController();
  final _conGiaiDau=TextEditingController();

    List<String> danh_sach_giai_dau = [
      'Giai dau 1',
      'Giai dau 2',
      'Giai dau 3',
      'Giai dau 4',
      'Giai dau 5',    
      'Giai dau 11',
      'Giai dau 12',
      'Giai dau 13',
      'Giai dau 14',
      'Giai dau 15',
    ];
   
    List<String> sub_text = [
      'Giai dau 1',
      'Giai dau 2',
      'Giai dau 3',
      'Giai dau 4',
      'Giai dau 5',  
      'Giai dau 11',
      'Giai dau 12',
      'Giai dau 13',
      'Giai dau 14',
      'Giai dau 15',  
    ];

  //   List<IconData> icons1 = [
  //   Icons.view_list_sharp,
  //   Icons.calendar_today_rounded,
  //   Icons.calendar_today_outlined,
  //   Icons.aspect_ratio_rounded,
  //   Icons.access_time,
  //   Icons.attach_money,
  //   Icons.playlist_add_rounded,
  //   Icons.payment_outlined,
  // ];

  // List<Color> color1 = [
  //   Colors.green,
  //   Colors.deepOrange,
  //   darkGreen,
  //   Colors.yellow,
  //   Colors.teal,
  //   navy,
  //   greenColor,
  //   Colors.brown,
  // ];
  
  @override
  void initState(){
    super.initState();
    _conGiaiDau.text="Chưa chọn....";
    SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitUp,
    ]);
  }
  //danh sach cac giai dau  
List<String> text1 = [
    'Giải đấu số 1',
    'Giải đấu số 2',
    'Giải đấu số 3',
    'Giải đấu số 4',
    'Giải đấu số 5',
    'Giải đấu số 6',
    'Giải đấu số 7',
    'Giải đấu số 8',
    'Giải đấu số 9',
    'Giải đấu số 10',
    'Giải đấu số 11',
    'Giải đấu số 12',
    'Giải đấu số 13',    
  ];

  List<String> text2 = [
    'Subtext 1', 
    'Subtext 2', 
    'Subtext 3', 
    'Subtext 4',
    'Subtext 5', 
    'Subtext 6', 
    'Subtext 7', 
    'Subtext 8',
    'Subtext 9',
    'Subtext 10',
    'Subtext 11',
    'Subtext 12',
    'Subtext 13',
  ];



_showDanhSachGiaiDau() {
    showModalBottomSheet(
      enableDrag: true,
      isDismissible: true,
      isScrollControlled: true,
      context: context,
      backgroundColor: Colors.transparent,
      builder: (builder) {
        return DraggableScrollableSheet(
          initialChildSize: 0.6,
          minChildSize: 0.2,
          maxChildSize: 1,
          builder: (context, scrollController) {
            return Container(
              color: context.cardColor,
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [                        
                        TextButton(                                                  
                          onPressed: () {
                            //chuyen sang form kia------------------------------------------------------
                            //an cai bottomsheet nay
                            Navigator.pop(context);
                          },
                          style: TextButton.styleFrom(
                            // foregroundColor: getColorFromHex('#f2866c'), backgroundColor: getColorFromHex('#f2866c'),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                          ),
                          child: Text(
                            'Chon giai dau',
                            style: primaryTextStyle(color: Colors.black),
                          ),
                        ),
                        const Spacer(),
                        TextButton(                                                  
                          onPressed: () {
                            //chuyen sang form kia------------------------------------------------------
                            Navigator.push(context, MaterialPageRoute(builder: (_) => XemTranDauScreen()));

                          },
                          style: TextButton.styleFrom(
                            foregroundColor: getColorFromHex('#f2866c'), backgroundColor: getColorFromHex('#f2866c'),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                          ),
                          child: Text(
                            'Xem tran dau',
                            style: primaryTextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ).paddingSymmetric(horizontal: 16),
                    const Divider(),
                    16.height,
                    ...List.generate(
                      text1.length,
                      (index) {                                                
                        return SettingItemWidget(
                          highlightColor: Colors.red,
                          splashColor: Colors.red,
                          hoverColor: Colors.red,                                                                              
                          title: text1[index],
                          // leading: Icon(
                          //   icons1[index],
                          //   color: color1[index],
                          //   size: 20,
                          // ),
                          subTitle: text2[index],
                          onTap: (){
                            // print('Tab vao list item $index');
                            _conGiaiDau.text=text1[index].toString();                            
                          },                          
                        );
                      },
                    ),                    
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      appBar: AppBar(        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,        
        title:const Center(child: Text('Trọng tài')),
      ),
      body: Align(        
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(          
            mainAxisAlignment: MainAxisAlignment.center,              
            children: <Widget>[
              SizedBox(height: MediaQuery.of(context).size.height*0.05),
              //------------------------1. Ảnh logo bên trên
              Image.asset('assets/images/lo_go.jpg', height: 200.0, width: 200.0,),
              //------------------------2. Textform: username va password
              SizedBox(
                width: MediaQuery.of(context).size.width*0.8,                
                child: Column(
                  children: [
                    //____________________2.1 Username
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Image.asset('assets/images/user_name.png', height: 50.0, width: 50.0,),),
                        Expanded(
                          flex: 8,
                          child: TextFormField(
                            controller: _conUserId,
                            obscureText: false,
                            keyboardType: TextInputType.text,                      
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter Username';
                              }                  
                              return null;
                            },
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(color: Colors.black),
                              ),                              
                              hintText: 'Username',                              
                            ),                    
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    //____________________2.2 Password
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Image.asset('assets/images/pass_word.png', height: 50.0, width: 50.0,),),
                        Expanded(
                          flex: 8,
                          child: TextFormField(
                            controller: _conPassword,
                            obscureText: true,
                            keyboardType: TextInputType.text,                      
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter Password';
                              }                  
                              return null;
                            },
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(color: Colors.black),
                              ),                              
                              hintText: 'Password',                              
                            ),                    
                          ),
                        ),
                      ],
                    ),
                    //----------------------------------------
                    const SizedBox(height: 10,),
                    //_____________________2.3 Button "Chọn giải đấu"
                    Row(
                      mainAxisSize: MainAxisSize.min,                      
                      children: [           
                        const Icon(Icons.keyboard_arrow_down, color: Colors.black),                        
                        TextButton(                                                      
                          onPressed: _showDanhSachGiaiDau,                            
                          child: const Text('Chọn giải đấu',style: TextStyle(fontSize: 18),),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.zero,
                      margin:EdgeInsets.zero ,
                      height: 40,
                      child: TextFormField(
                        style: const TextStyle(color: Colors.black),
                        controller: _conGiaiDau,
                              obscureText: forceEnableDebug,                              
                              enabled: false,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Nhap giai dau';
                                }                  
                                return null;
                              },                            
                      ),
                    ),
                    const Divider(color: Colors.red,),
                    //_____________________2.4 ĐĂNG NHẬP va THOAT
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //_________________ 2.4.1 Dang nhap
                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.32,
                          child: TextButton(                                                  
                                onPressed: () {
                                  //Dang nhap; thu xem den cai man hinh ngang xem sao
                                  Navigator.push(context,
                                    MaterialPageRoute(builder: (_) => DSTranDau()));
                                },
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.red, backgroundColor: Colors.red,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                                ),
                                child: Text(
                                  'ĐĂNG NHẬP',
                                  style: primaryTextStyle(color: Colors.white),
                                ),
                              ),
                        ),
                            const SizedBox(width: 20,),
                             //_________________ 2.4.2 Thoat
                          SizedBox(
                            width: MediaQuery.of(context).size.width*0.32,
                            child: TextButton(                                                                              
                                onPressed: () {                                  
                                  if (Platform.isAndroid) {
                                    SystemNavigator.pop();
                                  } else if (Platform.isIOS) {
                                    exit(0);
                                  }
                                },
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.red, backgroundColor: Colors.red,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                                ),
                                child: Text(
                                  'THOÁT',
                                  style: primaryTextStyle(color: Colors.white),
                                ),
                              ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),

              
            ],
          ),
        ),
      ),     
    );
  }
}