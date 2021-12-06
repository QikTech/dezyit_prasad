import 'dart:ui';

import 'package:dezyit_prasad/screens/MicroServices/HireSprintMaster/HireSprintMaster.dart';
import 'package:dezyit_prasad/screens/MicroServices/HireUiUxDesigner/HireUiUxDesigner.dart';
import 'package:dezyit_prasad/screens/ModulesList.dart';
import 'package:flutter/material.dart';

import '../GlobalAppBar.dart';
import '../colors.dart';
import '../typography.dart';
import 'HireSprintMaster/HireSprintMasterIntro.dart';
import 'HireUiUxDesigner/HireUiUxDesignerIntro.dart';
import 'HiringScreen.dart';

List<String> modulesList = [
  'Hire Sprint Master',
  'Hire UiUx Designer',
];

late int selectedIndex;

late String hiringScreenName = '';
late String hiringScreenPopupDescription = '';
late String hiringPopupMessage = 'Would you like to hire a Sprint Master?';

class MicroServices extends StatelessWidget {
  const MicroServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final items = List<String>.generate(10000, (i) => "Item $i");

    return Scaffold(
      appBar: GlobalAppBar('Micro Services', true),
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
                      hiringScreenName =
                          'Would you like to hire a Sprint Master?';
                      hiringScreenPopupDescription =
                          'A Sprint Master will work with you throughout the design sprint process.';
                      selectedIndex = 0;
                      showAlertDialog(context);
                    }
                    if (index == 1) {
                      hiringScreenName =
                          'Would you like to hire a UI Designer?';
                      hiringScreenPopupDescription =
                          'The UI/UX Designer will design your prototypes.';
                      selectedIndex = 1;
                      showAlertDialog(context);
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

showAlertDialog(BuildContext context) {
  // set up the buttons
  Widget cancelButton = MaterialButton(
    splashColor: purpleAccent,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
        side: BorderSide(color: purpleAccent)),
    child: Text("No", style: accentRegular16,),
    onPressed: () {
      Navigator.pop(context);
    },
  );
  Widget continueButton = MaterialButton(
    splashColor: purpleAccent,
    color: purpleAccent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
    ),
    child: Text("Yes", style: whiteRegular16,),
    onPressed: () {
      if (selectedIndex == 0) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HireSprintMasterIntro(),
          ),
        );
      }
      if (selectedIndex == 1) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HireUiUxDesignerIntro(),
          ),
        );
      }
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    actionsAlignment: MainAxisAlignment.center,
    title: Text(hiringScreenName),
    content: Text(hiringScreenPopupDescription),
    actions: [
      cancelButton,
      Container(child: continueButton),
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 0.10, sigmaY: 0.10),
          child: alert);
    },
  );
}
