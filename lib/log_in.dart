// ignore_for_file: avoid_print, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import 'widgets/cham_diem1_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key,}); 

  @override
  State<LoginPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<LoginPage> {  

  final _conUserId = TextEditingController();
  final _conPassword = TextEditingController();

    List<String> danh_sach_giai_dau = [
      'Giai dau 1',
      'Giai dau 2',
      'Giai dau 3',
      'Giai dau 4',
      'Giai dau 5',    
    ];
    List<String> sub_text = [
      'Giai dau 1',
      'Giai dau 2',
      'Giai dau 3',
      'Giai dau 4',
      'Giai dau 5',    
    ];

    List<IconData> icons1 = [
    Icons.view_list_sharp,
    Icons.calendar_today_rounded,
    Icons.calendar_today_outlined,
    Icons.aspect_ratio_rounded,
    Icons.access_time,
    Icons.attach_money,
    Icons.playlist_add_rounded,
    Icons.payment_outlined,
  ];

  List<Color> color1 = [
    Colors.green,
    Colors.deepOrange,
    darkGreen,
    Colors.yellow,
    Colors.teal,
    navy,
    greenColor,
    Colors.brown,
  ];


  showDanhSach() {
    showModalBottomSheet(
      enableDrag: true,
      isDismissible: true,
      isScrollControlled: true,
      context: context,
      // backgroundColor: Colors.transparent,
      backgroundColor: Colors.white,
      builder: (builder) {
        return DraggableScrollableSheet(
          initialChildSize: 0.6,
          minChildSize: 0.2,
          maxChildSize: 1,
          builder: (context, scrollController) {
            return Container(
              // color: context.cardColor,
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [                     
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Chon giai dau',
                              style: primaryTextStyle(size: 20),
                            ),                            
                          ],
                        ),
                        const Spacer(),
                        TextButton(                                                  
                          onPressed: () {
                            //chuyen sang form kia------------------------------------------------------
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
                      danh_sach_giai_dau.length,
                      (index) {
                        return SettingItemWidget(
                          title: danh_sach_giai_dau[index],
                          // leading: Icon(
                          //   icons1[index],
                          //   color: color1[index],
                          //   size: 20,
                          // ),
                          subTitle: sub_text[index],   
                          onTap: (){
                            print('Khi bam vao 1 giai dau');
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
              //------------------------Ảnh logo bên trên
              Image.asset('assets/images/lo_go.jpg', height: 200.0, width: 200.0,),
              SizedBox(
                width: 300,
                child: Column(
                  children: [
                    //----------------------- textform username
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
                    //----------------------- textform password
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
                    //----------------------- Button "Chọn giải đấu"
                    Row(
                      mainAxisSize: MainAxisSize.min,                      
                      children: [           
                        const Icon(Icons.keyboard_arrow_down, color: Colors.black),                        
                        TextButton(                            
                          onPressed: showDanhSach,                            
                          child: const Text('Chọn giải đấu',style: TextStyle(fontSize: 18),),
                        ),
                      ],
                    ),
                    const Divider(color: Colors.red,),
                    //-------------------- ĐĂNG NHẬP
                    TextButton(                                                  
                          onPressed: () {
                            //Dang nhap; thu xem den cai man hinh ngang xem sao
                            Navigator.push(context,
                              MaterialPageRoute(builder: (_) => ChamDiemcreen()));
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