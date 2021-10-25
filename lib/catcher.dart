// import 'package:flutter/material.dart';
// return Scaffold(
// appBar: AppBar(
// elevation: 0,
// backgroundColor: Colors.white,
// centerTitle: true,
// title: Text('Plans And Pricing',
// style: AppBarTheme.of(context).titleTextStyle),
// leading: Padding(
// padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
// child: InkWell(
// onTap: () {
// Navigator.pop(context);
// },
// child: Row(
// children: [
// Icon(
// Icons.arrow_back_ios,
// color: Colors.black,
// size: 12,
// ),
// Text('Back',
// style: TextStyle(color: Colors.black, fontSize: 12))
// ],
// ),
// ),
// ),
// actions: [
// Padding(
// padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
// child: Image(
// image: AssetImage('assets/icons/action.png'),
// height: 20,
// width: 20,
// ),
// )
// ],
// ),
// body: Container(
// color: Colors.white,
// constraints: BoxConstraints.tightFor(
// height: double.infinity, width: double.infinity),
// child: SingleChildScrollView(
// child: Row(
// children: [
// Flexible(
// fit: FlexFit.loose,
// flex: 2,
// child: Column(
// children: [
// Container(
// child: Padding(
// padding: const EdgeInsets.fromLTRB(20, 30, 0, 20),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text(
// 'What will you get',
// style: TextStyle(
// fontSize: 18,
// fontWeight: FontWeight.w700,
// letterSpacing: 1),
// ),
// Padding(
// padding: const EdgeInsets.symmetric(vertical: 20),
// child: SizedBox(
// height: 218,
// child: ListView.builder(
// shrinkWrap: true,
// physics: AlwaysScrollableScrollPhysics(),
// scrollDirection: Axis.horizontal,
// itemCount: 2,
// itemBuilder: (BuildContext context, int index) {
// return Padding(
// padding: const EdgeInsets.fromLTRB(0, 0, 25, 0),
// child: Container(
// decoration: BoxDecoration(
// color: Colors.white,
// boxShadow: [
// BoxShadow(
// color: Colors.black.withOpacity(0.04),
// offset: Offset(0, 0),
// spreadRadius: 4,
// blurRadius: 8),
// ],
// borderRadius: BorderRadius.circular(4),
// ),
// width: 181,
// child: Padding(
// padding: const EdgeInsets.fromLTRB(
// 10, 20, 10, 20),
// child: Column(
// children: [
// Spacer(),
// Image(
// image: AssetImage(
// pricingCardImages[index])),
// Spacer(),
// Text('Customizable Timeline',
// style: TextStyle(
// color: Color(0xff787CD1),
// fontSize: 14),
// textAlign: TextAlign.center),
// Spacer(),
// Text(
// 'You have complete access to change your deadline in case you can not complete the sprint on time',
// style: TextStyle(fontSize: 12),
// textAlign: TextAlign.center,
// ),
// Spacer(),
// ],
// ),
// ),
// ),
// );
// },
// ),
// ),
// ),
// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Icon(
// Icons.circle,
// color: purpleAccent,
// size: 15,
// ),
// SizedBox(width: 10),
// Icon(
// Icons.circle,
// color: grayy,
// size: 15,
// )
// ],
// )
// ],
// ),
// ),
// ),
// Container(
// width: size.width,
// color: Color(0xffEEEEF1),
// child: Column(
// children: [
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// SizedBox(height: 20),
// Padding(
// padding: const EdgeInsets.only(left: 20),
// child: Text(
// "FAQ's",
// textAlign: TextAlign.left,
// style: TextStyle(
// fontSize: 18,
// fontWeight: FontWeight.w500,
// color: Colors.black),
// ),
// ),
// SizedBox(height: 20),
// Padding(
// padding: const EdgeInsets.symmetric(
// horizontal: 20,
// ),
// child: Container(
// color: Colors.white,
// child: Padding(
// padding: const EdgeInsets.symmetric(
// horizontal: 20, vertical: 5),
// child: Row(
// mainAxisAlignment:
// MainAxisAlignment.spaceBetween,
// children: [
// Image(
// image: AssetImage('assets/icons/FAQs.png'),
// height: 25,
// width: 25,
// ),
// Text(
// 'What types of parts can you make?',
// style: TextStyle(
// fontSize: 12,
// fontWeight: FontWeight.w700,
// color: purpleAccent),
// ),
// Icon(
// Icons.add,
// color: purpleAccent,
// size: 18,
// ),
// ],
// ),
// ),
// ),
// ),
// SizedBox(height: 14),
// Padding(
// padding: const EdgeInsets.symmetric(
// horizontal: 20,
// ),
// child: Container(
// color: Colors.white,
// child: Padding(
// padding: const EdgeInsets.symmetric(
// horizontal: 20, vertical: 5),
// child: Row(
// mainAxisAlignment:
// MainAxisAlignment.spaceBetween,
// children: [
// Image(
// image: AssetImage('assets/icons/FAQs.png'),
// height: 25,
// width: 25,
// ),
// Text(
// 'What types of parts can you make?',
// style: TextStyle(
// fontSize: 12,
// fontWeight: FontWeight.w700,
// color: purpleAccent),
// ),
// Icon(
// Icons.add,
// color: purpleAccent,
// size: 18,
// ),
// ],
// ),
// ),
// ),
// ),
// SizedBox(height: 14),
// Padding(
// padding: const EdgeInsets.symmetric(
// horizontal: 20,
// ),
// child: Container(
// color: Colors.white,
// child: Padding(
// padding: const EdgeInsets.symmetric(
// horizontal: 20, vertical: 5),
// child: Row(
// mainAxisAlignment:
// MainAxisAlignment.spaceBetween,
// children: [
// Image(
// image: AssetImage('assets/icons/FAQs.png'),
// height: 25,
// width: 25,
// ),
// Text(
// 'What types of parts can you make?',
// style: TextStyle(
// fontSize: 12,
// fontWeight: FontWeight.w700,
// color: purpleAccent),
// ),
// Icon(
// Icons.add,
// color: purpleAccent,
// size: 18,
// ),
// ],
// ),
// ),
// ),
// ),
// ],
// ),
// SizedBox(height: 20),
// ],
// ),
// ),
//
// ],
// ),
// ),
// Flexible(
// fit: FlexFit.loose,
// flex: 1,
// child: Container(
// decoration: BoxDecoration(border: Border.all(color: grayy)),
// child: Padding(
// padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
// child: Column(
// // MAIN COLUMN ####################################################
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text(
// 'Professional Plan',
// style: TextStyle(
// color: Colors.black,
// fontSize: 18,
// fontWeight: FontWeight.w700),
// ),
// SizedBox(
// height: 10,
// ),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: [
// for (var p in packages)
// InkWell(
// onTap: () {
// selectedPackage = p;
// setState(() {});
// },
// child: Container(
// // width: size.width * 0.23,
// // height: size.height * 0.06,
// width: 120,
// height: 60,
// decoration: BoxDecoration(
// border: Border.all(
// color: Color(0xffA59292),
// ),
// color: selectedPackage == p
// ? purpleAccent
//     : Colors.white,
// borderRadius: BorderRadius.circular(5),
// ),
// child: Column(
// mainAxisAlignment:
// MainAxisAlignment.spaceEvenly,
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Row(
// mainAxisAlignment:
// MainAxisAlignment.spaceEvenly,
// children: [
// if (selectedPackage == p)
// Stack(
// children: [
// Icon(
// Icons.circle_outlined,
// color: Colors.white,
// size: 24,
// ),
// Positioned(
// right: 1,
// left: 1,
// top: 1,
// bottom: 1,
// child: Icon(
// Icons.circle,
// color: purpleAccent,
// size: 20,
// ),
// ),
// Positioned(
// right: 1,
// left: 1,
// top: 1,
// bottom: 1,
// child: Icon(Icons.circle,
// color: Colors.white,
// size: 12),
// ),
// ],
// )
// else
// Icon(Icons.circle_outlined,
// color: purpleAccent, size: 24),
// Text(
// '${p.packageName}',
// style: TextStyle(
// color: selectedPackage == p
// ? Colors.white
//     : Colors.black,
// fontSize: 12,
// ),
// ),
// ],
// ),
// Padding(
// padding: const EdgeInsets.only(left: 12),
// child: Text(
// '₹${p.amount}',
// style: TextStyle(
// color: selectedPackage == p
// ? Colors.white
//     : Colors.black,
// fontSize: 12,
// ),
// ),
// ),
// ],
// ),
// ),
// )
// ],
// ),
// SizedBox(
// height: 10,
// ),
// Divider(
// indent: 20,
// endIndent: 20,
// color: Color(0xff74838C),
// ),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Column(
// children: [
// Padding(
// padding:
// const EdgeInsets.symmetric(vertical: 20,),
// child: Row(
// children: [
// SizedBox(
// height: 30,
// width: 100,
// child: Row(
// children: [
// InkWell(
// onTap: () {
// if (counter > 1) {
// counter--;
// setState(() {});
// }
// },
// child: Container(
// width: 30,
// height: 30,
// decoration: BoxDecoration(
// color: purpleAccent,
// borderRadius:
// BorderRadius.horizontal(
// left: Radius.circular(3),
// ),
// ),
// child: Icon(
// Icons.remove,
// color: Colors.white,
// size: 16,
// ),
// ),
// ),
// Container(
// width: 40,
// height: 30,
// decoration: BoxDecoration(
// color: Color(0xffEEEEF1),
// borderRadius:
// BorderRadius.horizontal(),
// ),
// child: Center(
// child: Text(
// '$counter',
// style: TextStyle(fontSize: 12),
// )),
// ),
// InkWell(
// onTap: () {
// counter++;
// setState(() {});
// },
// child: Container(
// width: 30,
// height: 30,
// decoration: BoxDecoration(
// color: purpleAccent,
// borderRadius:
// BorderRadius.horizontal(
// right: Radius.circular(3),
// ),
// ),
// child: Icon(
// Icons.add,
// color: Colors.white,
// size: 16,
// ),
// ),
// ),
// ],
// ),
// ),
// SizedBox(width: 20),
// Text(
// 'Members',
// style: TextStyle(
// fontSize: 18,
// fontWeight: FontWeight.w500,
// color: Colors.black),
// ),
// ],
// ),
// ),
// // Text(
// //   '₹19 x $counter Licence x ${selectedPackage.durationInMonths} month',
// //   style: TextStyle(
// //       fontSize: 12,
// //       fontWeight: FontWeight.w400,
// //       color: Color(0xff505657)),
// // ),
// ],
// ),
// Text(
// '₹${counter * 19}',
// style: TextStyle(
// fontSize: 18,
// fontWeight: FontWeight.w400,
// color: purpleAccent),
// ),
// ],
// ),
// Text(
// '₹19 x $counter Licence x ${selectedPackage.durationInMonths} month',
// style: TextStyle(
// fontSize: 12,
// fontWeight: FontWeight.w400,
// color: Color(0xff505657)),
// ),
// SizedBox(
// height: 20,
// ),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Text(
// '${selectedPackage.packageName} Charge',
// style: TextStyle(
// fontSize: 18,
// fontWeight: FontWeight.w400,
// color: Colors.black),
// ),
// Text(
// '₹${selectedPackage.amount}',
// style: TextStyle(
// fontSize: 18,
// fontWeight: FontWeight.w500,
// color: purpleAccent),
// ),
// ],
// ),
// SizedBox(
// height: 20,
// ),
// Divider(
// indent: 20,
// endIndent: 20,
// color: Color(0xff74838C),
// ),
// SizedBox(
// height: 20,
// ),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Text(
// 'Total',
// style: TextStyle(
// fontSize: 18,
// fontWeight: FontWeight.w400,
// color: Colors.black),
// ),
// Text(
// '₹${(counter * 19) + selectedPackage.amount}',
// style: TextStyle(
// fontSize: 18,
// fontWeight: FontWeight.w500,
// color: purpleAccent),
// ),
// ],
// ),
// SizedBox(
// height: 20,
// ),
// Center(
// child: MaterialButton(
// minWidth: size.width,
// height: 45,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(5),
// ),
// onPressed: () {
// Navigator.push(
// context,
// MaterialPageRoute(
// builder: (context) =>
// Checkout(selectedPackage, counter),
// ),
// );
// },
// color: purpleAccent,
// child: Text(
// 'Checkout',
// style: TextStyle(
// fontSize: 18,
// fontWeight: FontWeight.w400,
// color: Colors.white),
// ),
// ),
// ),
// ],
// ),
// ),
// ),
// ),
// ],
// ),
// ),
// ),
// );
