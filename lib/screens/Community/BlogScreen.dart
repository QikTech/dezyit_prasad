import 'package:dezyit_prasad/models/CommunityModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../GlobalAppBar.dart';
import '../colors.dart';
import '../typography.dart';

import 'package:flutter_svg/flutter_svg.dart';

class BlogScreen extends StatelessWidget {
  // late List<dynamic> filteredCommunityBlogs = [];
  final String blogName, blogDesc, blogAuthor;
  final double blogViews;
  final CommunityModel communityBlogs;

  BlogScreen({
    required this.blogName,
    required this.blogDesc,
    required this.blogAuthor,
    required this.blogViews,
    required this.communityBlogs,
  });

  // BlogScreen({required this.filteredCommunityBlogs});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: GlobalAppBar('Community', true),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              // BoxShadow(
              //   color: Colors.black.withOpacity(0.15),
              //   spreadRadius: 0,
              //   blurRadius: 10,
              //   offset: Offset(0, 3), // changes position of shadow
              // ),
            ],
          ),
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      communityBlogs.blogName,
                      style: blackBold24,
                    ),
                    InkWell(
                      borderRadius: BorderRadius.circular(25),
                      splashColor: purpleAccent,
                      onTap: () {
                        print('Share Button CLicked');
                        showAlertDialog(context);

                      },
                      child: SvgPicture.asset(
                        'assets/icons/BTN_COMMUNITY_SHARE.svg',
                      ),
                    ),
                  ],
                ),
                verticalSpace(height: 18),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: purpleAccent,
                    ),
                    horizontalSpace(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          communityBlogs.blogAuthor,
                          style: blackRegular14,
                        ),
                        verticalSpace(height: 4),
                        Text(
                          "Aug 22, 2021",
                          style: grayRegular12,
                        )
                      ],
                    ),
                    Spacer(),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: purpleAccent),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      elevation: 0,
                      minWidth: 100.0,
                      height: 30,
                      color: Colors.white,
                      splashColor: purpleAccent,
                      child: Text('Follow', style: accentRegular14),
                      onPressed: () {
                        print('Followed');
                      },
                    ),
                  ],
                ),
                verticalSpace(height: 18),
                Image(
                  image: AssetImage('assets/images/BlogCoverImage.png'),
                  width: double.infinity,
                ),
                verticalSpace(height: 8),
                Text(
                  communityBlogs.blogDescription,
                  style: grayRegular14,
                ),
                verticalSpace(height: 8),
                // Row(
                //   children: [
                //     Spacer(),
                //     Row(children: [
                //       Icon(
                //         Icons.remove_red_eye_outlined,
                //         color: Color(0xff888888),
                //         size: 18,
                //       ),
                //       horizontalSpace(width: 6),
                //       Text(
                //         "${communityBlogs.blogViews}",
                //         style: grayRegular12,
                //       )
                //     ]),
                //   ],
                // ),
                CommentSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CommentSection extends StatefulWidget {
  const CommentSection({Key? key}) : super(key: key);

  @override
  _CommentSectionState createState() => _CommentSectionState();
}

class _CommentSectionState extends State<CommentSection> {
  final _commentText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffF2F2F2),
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        // height: MediaQuery.of(context).size.height,
        child: Material(
          color: Colors.transparent,
          child: Column(
            children: [
              Row(
                children: [
                  Flexible(
                    child: TextFormField(
                      controller: _commentText,
                      onChanged: (value) => _commentText.text,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 14),
                        isDense: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        fillColor: Colors.white,
                        hintText: 'Reply',
                        // hintStyle: TextStyle(color: Color(0xffe5e5e5)),
                        filled: true,
                      ),
                    ),
                  ),
                  InkWell(
                      borderRadius: BorderRadius.circular(25),
                      splashColor: purpleAccent,
                      child: SvgPicture.asset(
                        'assets/icons/BTN_COMMUNITY_SEND.svg',
                      ),
                      onTap: () {
                        debugPrint('222');
                        print('_commentText.text');
                      }),
                ],
              ),
              verticalSpace(height: 30),
              Material(
                color: Colors.transparent,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundColor: purpleAccent,
                        ),
                        horizontalSpace(width: 14),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 280,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Shuvam',
                                      style: grayMedium14,
                                    ),
                                    Text(
                                      '20 days ago',
                                      style: gray2Regular12,
                                    ),
                                  ],
                                ),
                              ),
                              verticalSpace(height: 5),
                              SizedBox(
                                width: 280,
                                child: Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam, interdum sociis sed enim, porta morbi. Eget et, non rhoncus diam habitasse at. ',
                                  maxLines: 5,
                                  style: grayRegular12,
                                ),
                              ),
                              verticalSpace(height: 12),
                              Row(
                                children: [
                                  InkWell(
                                    borderRadius: BorderRadius.circular(8),
                                    splashColor: purpleAccent,
                                    onTap: () {
                                      print('Reply Pressed');
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Reply',
                                        style: accentRegular12,
                                      ),
                                    ),
                                  ),
                                  horizontalSpace(width: 20),
                                  InkWell(
                                      borderRadius: BorderRadius.circular(25),
                                      splashColor: purpleAccent,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SvgPicture.asset(
                                          'assets/icons/LIKE_OUTLINED.svg',
                                        ),
                                      ),
                                      onTap: () {
                                        debugPrint('222');
                                        print('_commentText.text');
                                      }),
                                  InkWell(
                                      borderRadius: BorderRadius.circular(25),
                                      splashColor: purpleAccent,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SvgPicture.asset(
                                          'assets/icons/DISLIKE_OUTLINED.svg',
                                        ),
                                      ),
                                      onTap: () {
                                        debugPrint('222');
                                        print('_commentText.text');
                                      }),
                                ],
                              ),
                              verticalSpace(height: 14),
                              Positioned(
                                left: -20,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: 5,
                                  itemBuilder: (BuildContext context, int index) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 8),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CircleAvatar(radius: 18,
                                            backgroundColor: purpleAccent,
                                          ),
                                          horizontalSpace(width: 14),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: 226,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Shuvam',
                                                      style: grayMedium14,
                                                    ),
                                                    Text(
                                                      '20 days ago',
                                                      style: gray2Regular12,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              verticalSpace(height: 5),
                                              SizedBox(
                                                width: 226,
                                                child: Text(
                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam, interdum sociis sed enim, porta morbi. Eget et, non rhoncus diam habitasse at. ',
                                                  maxLines: 5,
                                                  style: grayRegular12,
                                                ),
                                              ),
                                              verticalSpace(height: 4),
                                              Row(
                                                children: [
                                                  InkWell(
                                                    borderRadius:
                                                        BorderRadius.circular(8),
                                                    splashColor: purpleAccent,
                                                    onTap: () {
                                                      print('Reply Pressed');
                                                    },
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(bottom: 8,left: 0,right: 8,top: 8),
                                                      child: Text(
                                                        'Reply',
                                                        style: accentRegular12,
                                                      ),
                                                    ),
                                                  ),
                                                  horizontalSpace(width: 20),
                                                  InkWell(
                                                      borderRadius:
                                                          BorderRadius.circular(25),
                                                      splashColor: purpleAccent,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets.all(
                                                                8.0),
                                                        child: SvgPicture.asset(
                                                          'assets/icons/LIKE_OUTLINED.svg',
                                                        ),
                                                      ),
                                                      onTap: () {
                                                        debugPrint('222');
                                                        print('LIKE');
                                                      }),
                                                  InkWell(
                                                      borderRadius:
                                                          BorderRadius.circular(25),
                                                      splashColor: purpleAccent,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets.all(
                                                                8.0),
                                                        child: SvgPicture.asset(
                                                          'assets/icons/DISLIKE_OUTLINED.svg',
                                                        ),
                                                      ),
                                                      onTap: () {
                                                        debugPrint('222');
                                                        print('DISLIKE');
                                                      }),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Divider(
                  color: Colors.white,
                  height: 20,
                ),
              ),
              InkWell(
                splashColor: purpleAccent,
                onTap: () {
                  print('Show All COmments Pressed');
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                  child: Text(
                    'Show All Comments',
                    style: accentRegular12,
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
    onPressed: () {},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0))),
      contentPadding: EdgeInsets.only(top: 10.0),
      content: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Share Article",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff787cd1),
                      fontSize: 14,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: purpleAccent,
                      ),
                      CircleAvatar(
                        backgroundColor: purpleAccent,
                      ),
                      CircleAvatar(
                        backgroundColor: purpleAccent,
                      ),
                      CircleAvatar(
                        backgroundColor: purpleAccent,
                      ),
                    ],),
                ),
                Text(
                  "OR",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff787cd1),
                    fontSize: 14,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Container(
                          height: 22,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3.21),
                            border: Border.all(color: Color(0xffe8eaf7), width: 0.64, ),
                            color: Colors.white,
                          ),
                        ),
                      ),
                        horizontalSpace(width: 10),
                      Expanded(
                        child: Container(
                          height: 22,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3.21),
                            border: Border.all(color: Color(0xffe8eaf7), width: 0.64, ),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0.0,
            right: 0.0,
            child: InkWell(
              borderRadius: BorderRadius.circular(25),
              splashColor: purpleAccent,
              onTap: () {
                print('Share Button CLicked');
                Navigator.pop(context);
              },
              child: Icon(Icons.close, color: purpleAccent,),
            ),
          ),
        ],
      )
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
