// import 'dart:developer';
//
// import 'package:dezyit_prasad/screens/GlobalAppBar.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import '../colors.dart';
// import '../typography.dart';
//
// class Share extends StatefulWidget {
//   Share({Key? key}) : super(key: key);
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<Share> {
//
//   bool value = true;
//
//   List<Map<String,dynamic>> tilesTitles = [
//     {
//       "title" : 'Create Personas',
//       'value' : false,
//     },
//     {
//       "title" : 'Journey Mappings',
//       'value' : false,
//     },
//     {
//       "title" : 'Identifying Painpoints',
//       'value' : false,
//     },
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     log('${tilesTitles}');
//     return Scaffold(
//       appBar: GlobalAppBar('Sharing', true),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(18.0),
//             child: Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(6),
//                 border: Border.all(color: purpleAccent),
//               ),
//               child: ExpansionTile(
//                 backgroundColor: Colors.white,
//                 collapsedTextColor: purpleAccent,
//                 iconColor: purpleAccent,
//                 textColor: purpleAccent,
//                 collapsedIconColor: purpleAccent,
//                 title: Text(
//                   'Title',
//                 ),
//                 children: tilesTitles.map((e) => DezysExpansionTile(
//                   title: e['title'],
//                   value: e['value'],
//                   onChange: (bool? value) {
//                     setState(() {
//                       e['value'] = value!;
//                     });
//                   },
//                 )).toList(),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
// }
//
// class DezysExpansionTile extends StatelessWidget {
//   const DezysExpansionTile({Key? key, required this.title, required this.value, required this.onChange}) : super(key: key);
//
//
//   final String title;
//   final bool value;
//   final Function(bool?) onChange;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 18,vertical: 5),
//       child: Material(
//         elevation: 0,
//         child: CheckboxListTile(
//           checkColor: Colors.white,
//           activeColor: purpleAccent,
//           controlAffinity: ListTileControlAffinity.leading,
//           value: value,
//           onChanged: onChange,
//           shape: RoundedRectangleBorder(
//             side: BorderSide(
//               color: purpleAccent,
//               width: 1,
//             ),
//             borderRadius: BorderRadius.circular(6),
//           ),
//           title: Text(
//             title,
//             style: accentText18,
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
