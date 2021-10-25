import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../GlobalAppBar.dart';
import '../colors.dart';

class Community extends StatefulWidget {
  const Community({Key? key}) : super(key: key);

  @override
  _CommunityState createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppBar('Community',true),
      body: SafeArea(child: SingleChildScrollView(child: Column(children: [Container(decoration: BoxDecoration(color: purpleAccent),)],),),),
    );
  }
}

