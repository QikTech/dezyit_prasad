import 'package:dezyit_prasad/screens/MicroServices/MicroServices.dart';
import 'package:dezyit_prasad/screens/PaymentPortal/PaymentResult.dart';
import 'package:dezyit_prasad/screens/PaymentPortal/PlansAndPricing.dart';
import 'package:flutter/material.dart';
import 'package:dezyit_prasad/models/packageModel.dart';
import 'package:dezyit_prasad/screens/PaymentPortal/checkout.dart';
import 'package:flutter/cupertino.dart';

import 'Community/Community.dart';
import 'colors.dart';

List<String> modulesList = [
  'Payment_Portal',
  'SHARING ',
  'MICRO SERVICES',
  'TIMELINE',
  'Community'
];

class ModulesList extends StatefulWidget {
  @override
  _ModulesListState createState() => _ModulesListState();
}

class _ModulesListState extends State<ModulesList> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final items = List<String>.generate(10000, (i) => "Item $i");

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Modules List'),
        backgroundColor: purpleAccent,
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
            shrinkWrap: true,
            physics: AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: modulesList.length,
            itemBuilder: (BuildContext context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  height: 50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  onPressed: () {
                    if (index == 0) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PlansAndPricing(),
                        ),
                      );
                    }
                    if (index == 1) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PaymentResult(),
                        ),
                      );
                    }
                    if (index == 2) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MicroServices(),
                        ),
                      );
                    }
                    if (index == 4) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Community(),
                        ),
                      );
                    }
                  },
                  color: purpleAccent,
                  child: Row(
                    children: [
                      Text(
                        modulesList[index],
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white54,
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}

class ComingSoon extends StatefulWidget {
  @override
  _ComingSoonState createState() => _ComingSoonState();
}

class _ComingSoonState extends State<ComingSoon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 600,
    );
  }
}