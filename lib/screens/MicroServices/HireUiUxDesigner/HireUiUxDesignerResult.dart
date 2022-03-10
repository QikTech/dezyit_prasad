import 'package:dezyit_prasad/screens/MicroServices/HireSprintMaster/HireSprintMasterResult.dart';
import 'package:flutter/material.dart';

import '../../colors.dart';
import '../../typography.dart';

class HireUiUxDesignerResult extends StatelessWidget {
  const HireUiUxDesignerResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Sprint Master - Confirmation.png'),
            verticalSpace(height: 60),
            Text('Your response has been saved \n We will contact you as soon as a \n UI/UX Designerr has been assigned.',
              textAlign: TextAlign.center, style: TextStyle(fontSize: 16, ),
            ),
            verticalSpace(height: 50),
            Center(
              child: MaterialButton(
                padding: EdgeInsets.symmetric(horizontal: 40),
                height: 40,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                onPressed: () {
                  Navigator.of(context).popUntil((route) => route.isFirst);

                },
                color: purpleAccent,
                child: Text(
                  'Continue',
                  style: whiteRegular16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
