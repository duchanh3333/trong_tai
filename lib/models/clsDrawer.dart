
// import 'package:flutter/material.dart';

// class DrawerOnly extends StatelessWidget {
//   @override
//   Widget build (BuildContext ctxt) {
//     return new Drawer(
//         child: new ListView(
//           children: <Widget>[
//             new DrawerHeader(
//               child: new Text("DRAWER HEADER.."),
//               decoration: new BoxDecoration(
//                   color: Colors.orange
//               ),
//             ),
//             new ListTile(
//               title: new Text("Item => 1"),
//               onTap: () {
//                 Navigator.pop(ctxt);
//                 Navigator.push(ctxt,
//                     new MaterialPageRoute(builder: (ctxt) => FirstPage()));
//               },
//             ),
//             new ListTile(
//               title: new Text("Item => 2"),
//               onTap: () {
//                 Navigator.pop(ctxt);
//                 Navigator.push(ctxt,
//                     new MaterialPageRoute(builder: (ctxt) => new SecondPage()));
//               },
//             ),
//           ],
//         )
//     );
//   }
// }