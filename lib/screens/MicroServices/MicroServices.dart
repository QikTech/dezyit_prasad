import 'package:dezyit_prasad/screens/MicroServices/HireSprintMaster.dart';
import 'package:dezyit_prasad/screens/MicroServices/HireUiUxDesigner.dart';
import 'package:flutter/material.dart';

import '../GlobalAppBar.dart';
import '../colors.dart';
import 'HiringScreen.dart';

List<String> modulesList = [
  'Hire Sprint Master',
  'Hire UiUx Designer',
];

late String hiringScreenName = '';
late String hiringPopupMessage = 'Would you like to hire a Sprint Master?';

class MicroServices extends StatelessWidget {
  const MicroServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final items = List<String>.generate(10000, (i) => "Item $i");

    return Scaffold(
      appBar: GlobalAppBar('Micro Services',true),
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
                      hiringScreenName = 'Hire Sprint Master';
                      showAlertDialog(context);
                    }
                    if (index == 1) {
                      hiringScreenName = 'Hire UiUx Designer';
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
  Widget cancelButton = TextButton(
    child: Text("Cancel"),
    onPressed: () {
      Navigator.pop(context);
    },
  );
  Widget continueButton = TextButton(
    child: Text("Continue"),
    onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HiringScreen(),
          ),
        );
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(

    title: Text(hiringScreenName),
    content:
        Text("Would you like to continue learning how to use Flutter alerts?"),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
