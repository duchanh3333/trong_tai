import 'package:app_trong_tai/tran_dau_screen.dart';
import 'package:app_trong_tai/widgets/cham_diem_screen.dart';
import 'package:flutter/material.dart';
import 'log_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(  
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginPage(),
      // home: TranDauScreen(),
      // home: ChamDiemMaincreen(),
    );
  }
}
