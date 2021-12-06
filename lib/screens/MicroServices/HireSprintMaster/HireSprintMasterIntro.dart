import 'package:dezyit_prasad/screens/GlobalAppBar.dart';
import 'package:flutter/material.dart';

import '../../colors.dart';
import '../../typography.dart';
import 'HireSprintMaster.dart';
import 'HireSprintMasterResult.dart';

class HireSprintMasterIntro extends StatelessWidget {
  const HireSprintMasterIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: GlobalAppBar('Sprint Master - Information', true),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Who is a Sprint Master?',
                style: gray33Regular20,
              ),
              verticalSpace(height: 16),
              Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus tempor tempor risus in consequat. Pellentesque feugiat leo vel volutpat elementum. Fusce sed ante convallis, pulvinar orci quis, tincidunt dolor. Integer luctus dolor felis, at gravida risus finibus in. Donec enim nibh, efficitur non ultrices non, malesuada et neque',
                style: gray66Regular14,
              ),
              verticalSpace(height: 40),
              Text(
                'Benefits of hiring a Sprint Master',
                style: gray33Regular20,
              ),
              verticalSpace(height: 16),
              Text(' \u2022 Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n \u2022 Pellentesque feugiat leo vel volutpat elementum. \n \u2022 Fusce sed ante convallis, pulvinar orci quis, tincidunt dolor.\n \u2022 Donec enim nibh, efficitur non ultrices non, malesuada et neque \n',
                style: gray66Regular14,
              ),
              verticalSpace(height: 40),
              Text(
                'Fees to hire a Sprint Master',
                style: gray33Regular20,
              ),
              verticalSpace(height: 16),
              Text("A fee of \$50 would be charged.",
                style: gray66Regular14,
              ),
              verticalSpace(height: 40),
              Center(
                child: MaterialButton(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  height: 40,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HireSprintMaster(),
                      ),
                    );
                  },
                  color: purpleAccent,
                  child: Text(
                    'Proceed',
                    style: whiteRegular16,
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
