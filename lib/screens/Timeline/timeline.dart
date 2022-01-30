import 'package:dezyit_prasad/screens/GlobalAppBar.dart';
import 'package:flutter/material.dart';

import 'package:timelines/timelines.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../colors.dart';

class Timeline extends StatefulWidget {

  @override
  _TimelineState createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppBar('Timeline', true),
      body: Material(),
    );
  }
}
