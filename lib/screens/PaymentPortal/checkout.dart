import 'package:dezyit_prasad/models/packageModel.dart';
import 'package:dezyit_prasad/screens/PaymentPortal/PaymentResult.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../GlobalAppBar.dart';
import '../colors.dart';

import 'PlansAndPricing.dart';

class Checkout extends StatefulWidget {
  final PackageModel model;
  final int  totalMember;

  Checkout(this.model,this.totalMember);

  @override
  _CheckoutState createState() => _CheckoutState(pm: this.model, counter: this.totalMember);
}

class _CheckoutState extends State<Checkout> {

  PackageModel? pm ;
  int counter;

  _CheckoutState({required this.pm, required this.counter});
  @override
  Widget build(BuildContext context) {

    print(pm!.amount);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: GlobalAppBar('Plans And Pricing',true),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            //FIRST COLUMN ##########################
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xff74838C),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '$counter Members',
                                style:
                                    TextStyle(fontSize: 18, color: Colors.white),
                              ),
                              Text(
                                '₹19 x $counter Licence x 1 month',
                                style:
                                    TextStyle(fontSize: 12, color: Colors.white),
                              ),
                            ],
                          ),
                          Text(
                            '₹${counter*19}',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${pm!.packageName} Charge',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          Text(
                            '₹${pm!.amount}',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Divider(
                        color: Colors.white,
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          Text(
                            '₹${19*counter+pm!.amount}',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w900),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  //SECOND COLUMN ##########################
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text('Checkout',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.04),
                              offset: Offset(0, 0),
                              spreadRadius: 4,
                              blurRadius: 8),
                        ],
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            TextButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.circle,
                                color: Colors.black,
                              ),
                              label: Text(
                                'UPI',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.04),
                              offset: Offset(0, 0),
                              spreadRadius: 4,
                              blurRadius: 8),
                        ],
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            TextButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.circle,
                                color: Colors.black,
                              ),
                              label: Text(
                                'UPI',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.04),
                              offset: Offset(0, 0),
                              spreadRadius: 4,
                              blurRadius: 8),
                        ],
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            TextButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.circle,
                                color: Colors.black,
                              ),
                              label: Text(
                                'UPI',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                // TEXTFIELDS HERE #############################################,
              ),

              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              //   child: Column(
              //     //THIRD COLUMN ##########################
              //     children: [
              //       TextField(
              //         decoration: InputDecoration(
              //           enabledBorder: OutlineInputBorder(
              //             borderSide: BorderSide(color: purpleAccent, width: 1),
              //           ),
              //           focusedBorder: OutlineInputBorder(
              //             borderSide: BorderSide(color: purpleAccent, width: 1.0),
              //           ),
              //           hintText: "Name On Card",
              //           border: OutlineInputBorder(),
              //           fillColor: purpleAccent,
              //           // labelText: 'Password',
              //         ),
              //       ),
              //       TextField(
              //         decoration: InputDecoration(
              //           enabledBorder: OutlineInputBorder(
              //             borderSide: BorderSide(color: purpleAccent, width: 1),
              //           ),
              //           focusedBorder: OutlineInputBorder(
              //             borderSide: BorderSide(color: purpleAccent, width: 1.0),
              //           ),
              //           hintText: "Name On Card",
              //           border: OutlineInputBorder(),
              //           fillColor: purpleAccent,
              //           // labelText: 'Password',
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: MaterialButton(
                  minWidth: size.width,
                  height: 45,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PaymentResult()),
                    );
                  },
                  color: purpleAccent,
                  child: Text(
                    'Checkout',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
