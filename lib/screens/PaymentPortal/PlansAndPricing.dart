import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dezyit_prasad/models/packageModel.dart';
import 'package:dezyit_prasad/screens/PaymentPortal/checkout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../GlobalAppBar.dart';
import '../colors.dart';

class PlansAndPricing extends StatefulWidget {
  @override
  _PlansAndPricingState createState() => _PlansAndPricingState();
}

class _PlansAndPricingState extends State<PlansAndPricing> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: GlobalAppBar('Plans And Pricing', true),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PlansAndPricing_1(),
            PlansAndPricing_2(),
            PlansAndPricing_3(),
          ],
        ),
      ),
    );
  }
}

class PlansAndPricing_1 extends StatefulWidget {
  @override
  State<PlansAndPricing_1> createState() => _PlansAndPricing_1State();
}

class _PlansAndPricing_1State extends State<PlansAndPricing_1> {
  List<dynamic> pricingCardImages = [
    {
      'pricingCardImage': 'assets/images/Customizable Timeline.png',
      'pricingCardTitle': 'Customizable Timeline',
      'pricingCardDescription':
          'You have complete access to change your deadline in case you can not complete the sprint on time',
    },
    {
      'pricingCardImage': 'assets/images/Customizable Timeline.png',
      'pricingCardTitle': 'Analytics',
      'pricingCardDescription':
          'You can analyse your teams performance and improve team efficiency',
    },
    {
      'pricingCardImage': 'assets/images/Customizable Timeline.png',
      'pricingCardTitle': 'Collaboration',
      'pricingCardDescription':
          'You can get access to collaborate and work together with your team in real-time',
    },
  ];

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 30, 0, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                  child: CarouselSlider.builder(
                    options: CarouselOptions(
                      onPageChanged: (index, _) {
                        setState(() {
                          _current = index;
                        });
                      },
                      enlargeCenterPage: true,
                      disableCenter: false,
                      viewportFraction: 0.7,
                      enableInfiniteScroll: false,
                      // autoPlay: true,
                    ),
                    itemCount: pricingCardImages.length,
                    itemBuilder:
                        (BuildContext context, int index, int pageViewIndex) =>
                            Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
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
                        width: 220,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                          child: Column(
                            children: [
                              Spacer(),
                              Image(
                                  image: AssetImage(pricingCardImages[index]
                                      ['pricingCardImage'])),
                              Spacer(),
                              Text(pricingCardImages[index]['pricingCardTitle'],
                                  style: TextStyle(
                                      color: Color(0xff787CD1), fontSize: 14),
                                  textAlign: TextAlign.center),
                              Spacer(),
                              Text(
                                pricingCardImages[index]
                                    ['pricingCardDescription'],
                                style: TextStyle(fontSize: 12),
                                textAlign: TextAlign.center,
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: pricingCardImages.map(
                  (image) {
                    //these two lines
                    int index = pricingCardImages.indexOf(image); //are changed
                    return Container(
                      width: 12,
                      height: 12,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _current == index ? purpleAccent : grayy),
                    );
                  },
                ).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PlansAndPricing_2 extends StatefulWidget {
  const PlansAndPricing_2({Key? key}) : super(key: key);

  @override
  _PlansAndPricing_2State createState() => _PlansAndPricing_2State();
}

class _PlansAndPricing_2State extends State<PlansAndPricing_2> {
  late PackageModel selectedPackage;
  late List<PackageModel> packages = [];

  int counter = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    packages.add(
      PackageModel(
        packageName: 'Monthly',
        amount: 199,
        description: '',
        discount: 0,
        discountInPercentage: '33% OFF',
        durationInDays: 30,
        durationInMonths: 1,
      ),
    );
    packages.add(PackageModel(
      packageName: 'Quarterly',
      amount: 1199,
      description: '',
      discount: 0,
      discountInPercentage: '33% OFF',
      durationInDays: 90,
      durationInMonths: 3,
    ));
    packages.add(PackageModel(
      packageName: 'Annually',
      amount: 1199,
      description: '',
      discount: 1999,
      discountInPercentage: '33% OFF',
      durationInDays: 365,
      durationInMonths: 12,
    ));

    selectedPackage = packages.first;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      decoration: BoxDecoration(border: Border.all(color: grayy)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
        child: Column(
          // MAIN COLUMN ####################################################
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Professional Plan',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (var p in packages)
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        InkWell(
                          onTap: () {
                            selectedPackage = p;
                            setState(() {});
                          },
                          child: Container(
                            // width: size.width * 0.23,
                            // height: size.height * 0.06,
                            width: 115,
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: selectedPackage == p
                                    ? purpleAccent
                                    : Color(0xffA59292),
                              ),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 4),
                                  child: selectedPackage == p
                                      ? Stack(
                                          children: [
                                            Icon(
                                              Icons.circle_outlined,
                                              color: purpleAccent,
                                              size: 18,
                                            ),
                                            Positioned(
                                              right: 1,
                                              left: 1,
                                              top: 1,
                                              bottom: 1,
                                              child: Icon(
                                                Icons.circle,
                                                color: Colors.white,
                                                size: 14,
                                              ),
                                            ),
                                            Positioned(
                                              right: 1,
                                              left: 1,
                                              top: 1,
                                              bottom: 1,
                                              child: Icon(Icons.circle,
                                                  color: purpleAccent,
                                                  size: 11),
                                            ),
                                          ],
                                        )
                                      : Icon(Icons.circle_outlined,
                                          color: purpleAccent, size: 18),
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${p.packageName}',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        if (p.discount != 0)
                                          Text(
                                            '₹${p.discount.round()}',
                                            style: TextStyle(
                                              color: Color(0xff929292),
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              fontSize: 10,
                                            ),
                                          ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          '₹${p.amount}',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        if (p.discount != 0)
                          Positioned(
                            right: -10,
                            top: -10,
                            child: Container(
                              height: 20,
                              width: 50,
                              color: grayy,
                            ),
                          ),
                      ],
                    )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              color: Color(0xff74838C),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 30,
                            width: 100,
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    if (counter > 1) {
                                      counter--;
                                      setState(() {});
                                    }
                                  },
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: purpleAccent,
                                      borderRadius: BorderRadius.horizontal(
                                        left: Radius.circular(3),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 40,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Color(0xffEEEEF1),
                                    borderRadius: BorderRadius.horizontal(),
                                  ),
                                  child: Center(
                                      child: Text(
                                    '$counter',
                                    style: TextStyle(fontSize: 12),
                                  )),
                                ),
                                InkWell(
                                  onTap: () {
                                    counter++;
                                    setState(() {});
                                  },
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: purpleAccent,
                                      borderRadius: BorderRadius.horizontal(
                                        right: Radius.circular(3),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 20),
                          Text(
                            'Members',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '₹19 x $counter Licence x ${selectedPackage.durationInMonths} month',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff505657)),
                    ),
                  ],
                ),
                Text(
                  '₹${counter * 19}',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: purpleAccent),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${selectedPackage.packageName} Charge',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                Text(
                  '₹${selectedPackage.amount}',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: purpleAccent),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              color: Color(0xff74838C),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                Text(
                  '₹${(counter * 19) + selectedPackage.amount}',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: purpleAccent),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: MaterialButton(
                minWidth: 400,
                height: 45,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Checkout(selectedPackage, counter),
                    ),
                  );
                },
                color: purpleAccent,
                child: Text(
                  'Checkout',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PlansAndPricing_3 extends StatelessWidget {
  List<String> faqList = [
    '1What types of parts can you make',
    '2What types of parts can you make',
    '3What types of ',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // width: double.maxFinite,
      // width: 500,
      // width: size.width,
      color: Color(0xffEEEEF1),
      child: Row(
        children: [
          Expanded(
            // flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "FAQ's",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  // padding: EdgeInsets.symmetric(horizontal: !Responsive.isMobile(context)? 50 :0),
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    children: <Widget>[
                      for (var city in faqList)
                        Container(
                          width: size.width,
                          // width: size.width/2,
                          // if (!Responsive.isMobile(context)) width: 300;
                          margin: const EdgeInsets.only(bottom: 10),
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image(
                                  image: AssetImage('assets/icons/FAQs.png'),
                                  height: 25,
                                  width: 25,
                                ),
                                Text(
                                  city,
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: purpleAccent),
                                ),
                                Icon(
                                  Icons.add,
                                  color: purpleAccent,
                                  size: 18,
                                ),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
