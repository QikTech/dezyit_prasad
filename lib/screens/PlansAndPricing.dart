import 'dart:ui';

import 'package:dezyit_prasad/models/packageModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class PlansAndPricing extends StatefulWidget {
  @override
  _PlansAndPricingState createState() => _PlansAndPricingState();
}

class _PlansAndPricingState extends State<PlansAndPricing> {
  List<String> pricingCardImages = [
    'assets/images/Customizable Timeline.png',
    'assets/images/Analytics.png',
    'assets/images/Customizable Timeline.png',
    'assets/images/Analytics.png',
  ];
  late PackageModel selectedPackage;
  late List<PackageModel> packages = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    packages.add(PackageModel(
        packageName: 'Monthly',
        amount: 199,
        description: '',
        discount: 0,
        durationInDays: 30));
    packages.add(PackageModel(
        packageName: 'Quarterly',
        amount: 1199,
        description: '',
        discount: 0,
        durationInDays: 90));
    packages.add(PackageModel(
        packageName: 'Annually',
        amount: 1199,
        description: '',
        discount: 0,
        durationInDays: 365));

    selectedPackage = packages.first;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Plans And Pricing',
            style: AppBarTheme.of(context).titleTextStyle),
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: Row(
            children: [
              Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 12,
              ),
              Text('Back', style: TextStyle(color: Colors.black, fontSize: 12))
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Image(
              image: AssetImage('assets/icons/action.png'),
              height: 20,
              width: 20,
            ),
          )
        ],
      ),
      body: Container(
        constraints: BoxConstraints.tightFor(
            height: double.infinity, width: double.infinity),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 0, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'What will you get',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: SizedBox(
                          height: 218,
                          width: size.width,
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: AlwaysScrollableScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: 2,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 25, 0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.04),
                                          offset: Offset(0, 0),
                                          spreadRadius: 4,
                                          blurRadius: 8),
                                    ],
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  width: 181,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        10, 20, 10, 20),
                                    child: Column(
                                      children: [
                                        Spacer(),
                                        Image(
                                            image: AssetImage(
                                                pricingCardImages[index])),
                                        Spacer(),
                                        Text('Customizable Timeline',
                                            style: TextStyle(
                                                color: Color(0xff787CD1),
                                                fontSize: 14),
                                            textAlign: TextAlign.center),
                                        Spacer(),
                                        Text(
                                          'You have complete access to change your deadline in case you can not complete the sprint on time',
                                          style: TextStyle(fontSize: 12),
                                          textAlign: TextAlign.center,
                                        ),
                                        Spacer(),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.circle,
                            color: purpleAccent,
                            size: 15,
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.circle,
                            color: grayy,
                            size: 15,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: size.width,
                decoration: BoxDecoration(border: Border.all(color: grayy)),
                child: Column(
                  children: [
                    Text(
                      'Back',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: SizedBox(
                        height: 55,
                        width: size.width,
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: AlwaysScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              width: 100,
                              decoration: BoxDecoration(
                                color: purpleAccent,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.circle,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        '${packages[index].packageName}',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 12),
                                    child: Text(
                                      '₹${packages[index].amount}',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
