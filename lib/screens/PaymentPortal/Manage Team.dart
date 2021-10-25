import 'package:dezyit_prasad/models/packageModel.dart';
import 'package:dezyit_prasad/screens/PaymentPortal/PaymentResult.dart';
import 'package:dezyit_prasad/screens/PaymentPortal/PlansAndPricing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../colors.dart';

List<String> usersList = [
  'Prasad',
  'Shashwat',
];

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(),
  );
}

class ManageTeam extends StatefulWidget {
  @override
  _ManageTeamState createState() => _ManageTeamState();
}

class _ManageTeamState extends State<ManageTeam> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Plans And Pricing',
            style: AppBarTheme.of(context).titleTextStyle),
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: InkWell(
            onTap: () {},
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
              image: AssetImage('assets/icons/ICO_Hamburger.png'),
              height: 20,
              width: 20,
            ),
          )
        ],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Text(
                'Team Name Here',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: purpleAccent),
              ),
              Text(
                'Add or remove team members',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
              ),
              Text(
                'Note: you can only add 3 members in Free Version',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: purpleAccent),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: usersList.first,
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ),
              Column(
                children:
                    // for(String user in usersList)
                    usersList.map((e) {
                  return Container(
                    width: size.width,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      // color: purpleAccent,
                      border: Border.all(),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(e),
                        Spacer(),
                        PopupMenuButton<String>(
                          onSelected: (val){
                            print(val);
                            if(val == "Delete Member"){
                              setState(() {
                              });
                              showAlertDialogDeleteTeam(context);
                            }else{

                            }
                          },
                          icon: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(height: 3,width: 3,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.all(Radius.circular(50))
                                ),
                              ),
                              SizedBox(height: 3,),
                              Container(height: 3,width: 3,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.all(Radius.circular(50))
                                ),
                              ),
                              SizedBox(height: 3,),
                              Container(height: 3,width: 3,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.all(Radius.circular(50))
                                ),
                              ),
                            ],
                          ),
                          color: Colors.white,
                          itemBuilder: (BuildContext context) {
                            return {'Delete Member', 'Make Decision Maker'}.map((String choice) {
                              return PopupMenuItem<String>(
                                value: choice,
                                textStyle: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 16,
                                ),
                                child: Text(choice),
                              );
                            }).toList();
                          },
                        ),
                        SizedBox(
                          width: 15,
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
              Center(
                child: MaterialButton(
                  minWidth: 200,
                  height: 45,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PlansAndPricing()),
                    );
                  },
                  color: purpleAccent,
                  child: Text(
                    'Checkout',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
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

var selectedTeamMemberIdForDeleting;

showAlertDialogDeleteTeam(BuildContext context) {

  // set up the buttons
  Widget cancelButton = TextButton(
    child: Text("Cancel"),
    onPressed:  () {
      Navigator.of(context).pop();
    },
  );
  Widget continueButton = TextButton(
    child: Text("Delete"),
    onPressed:  () async {
      Navigator.of(context).pop();
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Delete Member"),
    content: Text("Are you sure you want to delete this member?"),
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
// Widget buildAddMemberWidget(BuildContext context){
//   return GestureDetector(
//     onTap: (){
//       showAlertDialogAddTeamMember(context);
//     },
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Container(
//           width: 30,
//           height: 30,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.all(Radius.circular(50)),
//             color: Color(0xff787CD1),
//           ),
//           child: Icon(Icons.add, color: Colors.white,),
//         ),
//         SizedBox(height: 10,),
//         Text("Add Member",
//           style: GoogleFonts.nunitoSans(
//               textStyle: TextStyle(
//                 color: Color(0xff787CD1),
//                 fontSize: 14,
//               )
//           ),
//         )
//       ],
//     ),
//   );
// }
// showAlertDialogAddTeamMember(BuildContext context) {
//
//   Widget textField = Theme(
//       data: ThemeData(
//         primaryColor: Color(0xff787CD1),
//       ),
//       child: TextFormField(
//         controller: team.memberNameController,
//         decoration: InputDecoration(
//             hintText: hint.memberName
//         ),
//         validator: (value){
//           if(value.isEmpty){
//             return team.teamMemberNameEmpty;
//           }
//           return null;
//         },
//       ));
//
//   Widget textFieldEmail = Theme(
//       data: ThemeData(
//         primaryColor: Color(0xff787CD1),
//       ),
//       child: TextFormField(
//         controller: team.memberEmailController,
//         decoration: InputDecoration(
//             hintText: hint.memberEmail
//         ),
//         validator: (val) => !EmailValidator.validate(val, true)
//             ? hint.validationEmail
//             : null,
//       ));
//
//   GestureDetector buildSaveButton = GestureDetector(
//     onTap: () async {
//       if(team.formKey2.currentState.validate()){
//         team.prTeam.show();
//         addTeamMember(context);
//       }
//     },
//     child: Card(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(12.0),
//       ),
//       elevation: 10,
//       child: Container(
//         height: 50,
//         width: MediaQuery
//             .of(context)
//             .size
//             .width / 2.4,
//         decoration: BoxDecoration(
//             color: Color(0xff7579cb),
//             borderRadius: BorderRadius.all(Radius.circular(12))
//         ),
//         child: Center(
//           child: Text(team.nextButtonText,
//               style: GoogleFonts.nunitoSans(textStyle: TextStyle(fontSize: 16, letterSpacing: 1,color: Colors.white),)
//           ),
//         ),
//       ),
//     ),
//   );
//
//   AlertDialog alert = AlertDialog(
//     shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.all(Radius.circular(15.0))
//     ),
//     title: Column(
//       children: [
//         Align(
//             alignment: Alignment.centerRight,
//             child: IconButton(icon: Icon(Icons.close,color: Colors.grey,),onPressed: (){Navigator.of(context).pop();},)),
//         Text(team.addMember, style: GoogleFonts.nunitoSans(textStyle: TextStyle(fontSize: 16, letterSpacing: 1),)),
//       ],
//     ),
//     content: Padding(
//       padding: const EdgeInsets.only(left: 10, right: 10),
//       child: Container(
//         height: 200,
//         width: MediaQuery.of(context).size.width,
//         child: Form(
//           key: team.formKey2,
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 textField,
//                 textFieldEmail,
//                 SizedBox(height: 20),
//                 buildSaveButton,
//               ],
//             ),
//           ),
//         ),
//       ),
//     ),
//   );
//
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return alert;
//     },
//   );
// }


