import 'package:dezyit_prasad/screens/GlobalAppBar.dart';
import 'package:flutter/material.dart';

import 'package:timeline_tile/timeline_tile.dart';

import '../colors.dart';

class TimelineModule extends StatefulWidget {

  @override
  _TimelineModuleState createState() => _TimelineModuleState();
}

class _TimelineModuleState extends State<TimelineModule> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: GlobalAppBar('Timeline', true),
      body: Container(
        child: TimelineTile(
          alignment: TimelineAlign.center,
          endChild: Container(
            constraints: const BoxConstraints(
              minHeight: 120,
            ),
            color: Colors.lightGreenAccent,
          ),
          startChild: Container(
            color: Colors.amberAccent,
          ),
        ),
      ),
    );
  }
}
