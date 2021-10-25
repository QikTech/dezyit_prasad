import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../GlobalAppBar.dart';
import '../colors.dart';
import 'MicroServices.dart';
import 'ResultMicroServices.dart';

class HiringScreen extends StatefulWidget {
  const HiringScreen({Key? key}) : super(key: key);

  @override
  _HiringScreenState createState() => _HiringScreenState();
}

class _HiringScreenState extends State<HiringScreen> {
  late String uiuxHireIntro =
      "To help us assign a Sprint Master as per your design sprint. Please answer the following questions.";
  late String sprintMasterIntro =
      "To help us assign a UI/UX Designer as per your design sprint. Please answer the following questions.";

  int? selectedRadio;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedRadio=0;
    selectedRadio2=0;
  }
  setSelectedRadio(val) {
    setState(() {
      selectedRadio=val;
    });
  }
  int? selectedRadio2;
  setSelectedRadio2(val2) {
    setState(() {
      selectedRadio2=val2;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: GlobalAppBar(hiringScreenName,true),

      body: SingleChildScrollView(
          child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  'To help us assign a Sprint Master as per your design sprint. Please answer the following questions.',
                  style: TextStyle(
                    fontSize: 16,
                  )),
              SizedBox(
                height: 40,
              ),
              Text('1. What is your Design Sprint about?',
                  style: TextStyle(
                    fontSize: 16,
                  )),
              SizedBox(
                height: 20,
              ),
              Material(
                  elevation: 4,
                  borderRadius: BorderRadius.circular(10),
                  child: TextField(
                    maxLines: 5,
                    decoration: InputDecoration(
                        filled: true,
                        border: InputBorder.none,
                        fillColor: Colors.white,
                        focusColor: Colors.white),
                  )),
              SizedBox(
                height: 40,
              ),
              Text('2. What are your  objectives?',
                  style: TextStyle(
                    fontSize: 16,
                  )),
              SizedBox(
                height: 20,
              ),
              Material(
                  elevation: 4,
                  borderRadius: BorderRadius.circular(10),
                  child: TextField(
                    maxLines: 5,
                    decoration: InputDecoration(
                        filled: true,
                        border: InputBorder.none,
                        fillColor: Colors.white,
                        focusColor: Colors.white),
                  )),
              SizedBox(
                height: 40,
              ),
              Text('3. What is your project category?',
                  style: TextStyle(
                    fontSize: 16,
                  )),
              Column(
                children: [
                  Row(
                    children: [
                      Radio(
                          value: 1,
                          groupValue: selectedRadio,
                          activeColor: purpleAccent,
                          onChanged: (val) {
                            print('Value $val');
                            setSelectedRadio(val);
                          }),
                      Text('Business'),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 2,
                          groupValue: selectedRadio,
                          activeColor: purpleAccent,
                          onChanged: (val) {
                            print('Value $val');
                            setSelectedRadio(val);
                          }),
                      Text('Academic'),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 3,
                          groupValue: selectedRadio,
                          activeColor: purpleAccent,
                          onChanged: (val) {
                            print('Value $val');
                            setSelectedRadio(val);
                          }),
                      Text('Personal'),
                    ],
                  ),

                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text('4. Please select the domain of your project.',
                  style: TextStyle(
                    fontSize: 16,
                  )),
              SizedBox(
                height: 20,
              ),
              DropdownMenu(),
              SizedBox(
                height: 40,
              ),
              Text('5. What is your project type?',
                  style: TextStyle(
                    fontSize: 16,
                  )),
              Column(
                children: [
                  Row(
                    children: [
                      Radio(
                          value: 2,
                          groupValue: selectedRadio2,
                          activeColor: purpleAccent,
                          onChanged: (val2) {
                            print('Value $val2');
                            setSelectedRadio2(val2);
                          }),
                      Text('Redesign an experience'),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 1,
                          groupValue: selectedRadio2,
                          activeColor: purpleAccent,
                          onChanged: (val2) {
                            print('Value $val2');
                            setSelectedRadio2(val2);
                          }),
                      Text('Create a new experience'),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: MaterialButton(
                  minWidth: 400,
                  height: 45,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultMicroServices(),
                      ),
                    );
                  },
                  color: purpleAccent,
                  child: Text(
                    'Checkout',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}

class DropdownMenu extends StatefulWidget {
  const DropdownMenu({Key? key}) : super(key: key);

  @override
  _DropdownMenuState createState() => _DropdownMenuState();
}

class _DropdownMenuState extends State<DropdownMenu> {
  final dropdownItems = ['Business', 'Academic', 'Personal'];
  String? value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
          border: Border.all(color: purpleAccent, width: 2.4),
          borderRadius: BorderRadius.circular(8)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          isExpanded: true,
          hint: Text('Select Design Sprint Domain'),
          value: value,
          icon: Icon(
            Icons.keyboard_arrow_down_rounded,
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
          onChanged: (value) => setState(() => this.value = value),
        ),
      ),
    );
  }
}

