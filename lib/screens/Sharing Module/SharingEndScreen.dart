import 'package:dezyit_prasad/screens/GlobalAppBar.dart';
import 'package:dezyit_prasad/screens/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import '../typography.dart';

class SharingEndScreen extends StatefulWidget {
  const SharingEndScreen({Key? key}) : super(key: key);

  @override
  State<SharingEndScreen> createState() => _SharingEndScreenState();
}

class _SharingEndScreenState extends State<SharingEndScreen> {
  final dropdownItems = ['Public', 'Private'];
  final shareDropdownItems = ['Viewer', 'Commentor'];
  String? value;
  String? item;
  List<dynamic> shareProfilesList = [
    {'profileName': 'Shuvam', 'email': 'shuvam@gmail.com', 'type': 'Viewer'},
    {
      'profileName': 'Divyansh',
      'email': 'divyansh@gmail.com',
      'type': 'Editor'
    },
    {'profileName': 'Jatin', 'email': 'jatin@gmail.com', 'type': 'Editor'},
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: GlobalAppBar('Share', true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  MaterialButton(
                    splashColor: purpleAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        side: BorderSide(color: purpleAccent)),
                    child: Row(
                      children: [
                        Text('Sharing Modules', style: accentRegular16),
                        Icon(Icons.close, color: purpleAccent),
                      ],
                    ),
                    onPressed: () {},
                  ),
                  HorizontalSpace(10),
                  MaterialButton(
                      splashColor: purpleAccent,
                      child: Text(
                        'Add More',
                        style: accentRegular14,
                      ),
                      onPressed: () {})
                ],
              ), //         #1 MODULES
              VerticalSpace(25),
              TextField(
                cursorColor: purpleAccent,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: purpleAccent),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: purpleAccent),
                  ),
                  hintText: 'Enter Email Address',
                  hintStyle: grayBDRegular14,
                ),
              ), //   #2 EMAIL FIELD
              VerticalSpace(45),
              Center(
                child: MaterialButton(
                  minWidth: 150,
                  height: 40,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  onPressed: () {},
                  color: purpleAccent,
                  child: Text(
                    'Send',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
              ), //      #3 SEND BUTTON
              VerticalSpace(40),
              Row(
                children: [
                  Container(
                    // color: Color(0Xffffffff),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 100,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  bottomLeft: Radius.circular(12),
                                  bottomRight: Radius.zero,
                                  topRight: Radius.zero,
                                ),
                                color: Color(0XffE8EAF7),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    isExpanded: true,
                                    hint: Text(
                                      'Link Visibility',
                                      style: TextStyle(
                                          fontSize: 14, color: purpleAccent),
                                    ),
                                    value: value,
                                    icon: Icon(
                                      Icons.arrow_drop_down,
                                      color: purpleAccent,
                                    ),
                                    items: dropdownItems.map((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(
                                          value,
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (value) =>
                                        setState(() => this.value = value),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                                color: Color(0XffE8EAF7),
                                height: 50,
                                width: 200,
                                padding: EdgeInsets.only(left: 8),
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text('http://dezyit/urban-tech'))),
                            //LINK TEXT
                          ],
                        ),
                        HorizontalSpace(4),
                        MaterialButton(
                            elevation: 0,
                            splashColor: purpleAccent,
                            height: 50,
                            minWidth: 40,
                            color: Color(0XffE8EAF7),
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.only(
                              topLeft: Radius.zero,
                              bottomLeft: Radius.zero,
                              bottomRight: Radius.circular(12),
                              topRight: Radius.circular(12),
                            )),
                            child: Image.asset('assets/icons/Copy_Icon.png'),
                            onPressed: () {})
                      ],
                    ),
                  ),
                ],
              ), // #4 LINK SHARING BUTTON
              VerticalSpace(30),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Shared with',
                  style: accentMedium16,
                ),
              ),
              VerticalSpace(16),
              Container(
                width: size.width,
                height: size.height,
                child: ListView.builder(
                    itemCount: shareProfilesList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 24,
                                backgroundColor: Colors.grey,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "${shareProfilesList[index]['profileName']} - ",
                                          style: blackRegular14,
                                        ),
                                        Text(shareProfilesList[index]['email'],
                                          style: grayRegular14,
                                        )
                                      ],
                                    ),
                                    Container(
                                      height: 30,
                                      width: 120,
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton<String>(
                                          isExpanded: true,
                                          hint: Text(
                                            'Select Access',
                                            style: TextStyle(
                                                fontSize: 14, color: purpleAccent),
                                          ),
                                          value: item,
                                          icon: Icon(
                                            Icons.arrow_drop_down,
                                            color: purpleAccent,
                                          ),
                                          items: shareDropdownItems.map((String item) {
                                            return DropdownMenuItem<String>(
                                              value: item,
                                              child: Text(
                                                item,
                                              ),
                                            );
                                          }).toList(),
                                          onChanged: (item) =>
                                              setState(() => this.item = item),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Image.asset('assets/icons/Delete_Share.png'),
                            ],
                          ),
                          Divider(),
                        ],
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
