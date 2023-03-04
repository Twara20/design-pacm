// import 'package:design_pacm/controller/controller.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:get/get.dart';
//
// class AccountSetting extends GetView<AccountSettingController> {
//   static const pageId = '/AccountSetting';
//
//   List<Model> data = [
//     Model(
//         title1: "Name",
//         title2: "John White",
//         trail: "Edit"
//     ),
//     Model(
//         title1: "Phone",
//         title2: "0400 000 000",
//         trail: "Edit"
//     ),
//
//     Model(
//         title1: "Email",
//         title2: "johnwhite@pacm.com.au",
//         trail: "Edit"
//     ),
//
//     Model(
//         title1: "Password",
//         title2: "***********",
//         trail: "Edit"
//     ),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xfff0f0f0),
//       appBar: AppBar(
//         toolbarHeight: 60,
//         flexibleSpace: Container(
//           color: Colors.white,
//           child: Padding(
//             padding: const EdgeInsets.only(top: 80, left: 10),
//             child: Row(
//               children: [
//                 Image.asset(
//                   "assets/images/back_arrow.png",
//                   color: Colors.black,
//                 ),
//                 SizedBox(
//                   width: 8,
//                 ),
//                 Text(
//                   "Back",
//                   style: TextStyle(fontSize: 18, fontFamily: "semibold"),
//                 ),
//                 SizedBox(
//                   width: 38,
//                 ),
//                 Center(
//                   child: Text(
//                     "Account Settings",
//                     style: TextStyle(
//                         fontSize: 18,
//                         fontFamily: "regular",
//                         color: Color(0xff666666),
//                         fontWeight: FontWeight.bold),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 20),
//             child: Container(
//               height:290,
//
//               color: Colors.white,
//               child: ListView.builder(
//                   scrollDirection: Axis.vertical,
//                   itemCount: data.length,
//                   itemBuilder: (BuildContext context, int index) {
//                     return Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 20),
//                       child: Column(
//                         children: [
//                           ListTile(
//                             title: Text(
//                               data[index].title1,
//                               style: const TextStyle(
//                                   fontSize: 15,
//                                   color: Colors.black,
//                                   fontFamily: "regular",
//                                   fontWeight: FontWeight.w500),
//                             ),
//                             subtitle:
//                             Text(
//                               data[index].title2,
//                               style: const TextStyle(
//                                 fontSize: 14,
//                                 fontFamily: "regular",
//                                 letterSpacing: 0.3,
//                               ),
//                             ),
//
//                             trailing: Text(data[index].trail,style: TextStyle(fontFamily: "regular",
//                                 color: Color(0xff660066),fontWeight: FontWeight.bold,fontSize: 14),),
//
//
//
//
//                           ),
//
//
//                         ],
//                       ),
//                     );
//                   }),
//             ),
//           ),
//
//
//         ],
//       ),
//     );
//
//     throw UnimplementedError();
//   }
// }
//
// class Model {
//   String title1, title2;
//   String trail;
//
//   Model({
//     required this.title1,
//     required this.title2,
//     required this.trail,
//   });
// }
