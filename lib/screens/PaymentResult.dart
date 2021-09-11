import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dezyit_prasad/screens/checkout.dart';
import 'colors.dart';
import 'PlansAndPricing.dart';

class PaymentResult extends StatefulWidget {
  @override
  _PaymentResultState createState() => _PaymentResultState();
}

class _PaymentResultState extends State<PaymentResult> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Spacer(),
              Image(
                image: AssetImage('assets/images/payment_successful.png'),
              ),
              Text(
                'Payment Successful!',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),Text(
                ' Nunc tincidunt, enim ut tempus vulputate, leo turpis pellentesque arcu, ut pulvinar neque ipsum et risus. Donec placerat pretium tortor vel venenatis.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: MaterialButton(
                  height: 40,
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
                    'Next',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
