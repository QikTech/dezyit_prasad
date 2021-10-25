import 'package:dezyit_prasad/screens/MicroServices/HiringScreen.dart';
import 'package:dezyit_prasad/screens/MicroServices/HiringScreen.dart';
import 'package:flutter/material.dart';

import 'HiringScreen.dart';
import 'HiringScreen.dart';

class HireSprintMaster extends StatefulWidget {
  const HireSprintMaster({Key? key}) : super(key: key);

  @override
  _HireSprintMasterState createState() => _HireSprintMasterState();
}

class _HireSprintMasterState extends State<HireSprintMaster> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Hire Sprint Master',
            style: AppBarTheme.of(context).titleTextStyle),
        leading: InkWell(
          onTap: () => Navigator.of(context).pop(false),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 12,
                ),
                Text('Back',
                    style: TextStyle(color: Colors.black, fontSize: 12))
              ],
            ),
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
      body: SafeArea(
        child: Text('TeHire Sprint Master Screen'),
      ),
    );
  }
}

