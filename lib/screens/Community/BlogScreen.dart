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
                ), // <-- Share & Blog Title
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
                ), //<-- Follow Button and Author
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
  List<String> comments = [];
  final _commentText = TextEditingController();

  DateTime now = new DateTime.now();

  // DateTime date = new DateTime(now.year, now.month, now.day);

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
                      autovalidateMode: AutovalidateMode.always,
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
                        // debugPrint('222');
                        setState(() {
                          comments.add(_commentText.text);
                          _commentText.clear();
                        });
                        print(comments.length);
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
                          child: InkWell(
                            onTap: () {
                              print('Expand Pressed');
                            },
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
                                        DateTime.now().toString(),
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
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 500),
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: comments.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CircleAvatar(
                                              radius: 18,
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
                                                        DateTime.now()
                                                            .toString(),
                                                        style: gray2Regular12,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                verticalSpace(height: 5),
                                                SizedBox(
                                                  width: 226,
                                                  child: Text(
                                                    comments[index],
                                                    maxLines: 5,
                                                    style: grayRegular12,
                                                  ),
                                                ),
                                                verticalSpace(height: 4),
                                                Row(
                                                  children: [
                                                    InkWell(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      splashColor: purpleAccent,
                                                      onTap: () {
                                                        print('Reply Pressed');
                                                      },
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                bottom: 8,
                                                                left: 0,
                                                                right: 8,
                                                                top: 8),
                                                        child: Text(
                                                          'Reply',
                                                          style:
                                                              accentRegular12,
                                                        ),
                                                      ),
                                                    ),
                                                    horizontalSpace(width: 20),
                                                    InkWell(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25),
                                                        splashColor:
                                                            purpleAccent,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                          child:
                                                              SvgPicture.asset(
                                                            'assets/icons/LIKE_OUTLINED.svg',
                                                          ),
                                                        ),
                                                        onTap: () {
                                                          debugPrint('222');
                                                          print('LIKE');
                                                        }),
                                                    InkWell(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25),
                                                        splashColor:
                                                            purpleAccent,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                          child:
                                                              SvgPicture.asset(
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
  Size size = MediaQuery.of(context).size;
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

  final _shareLink = TextEditingController();

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
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
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
                    ],
                  ),
                ), //<-- SOCIAL ICONS
                Text(
                  "OR",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff787cd1),
                    fontSize: 14,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Row(
                    children: [
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 6,
                        child: TextFormField(
                          controller: _shareLink,
                          autovalidateMode: AutovalidateMode.always,
                          onChanged: (value) => _shareLink.text,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 4,
                                color: Color(0xffE8EAF7),),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(
                                width: 4,
                                color: Color(0xffE8EAF7),
                              ),
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 14),
                            isDense: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(
                                width: 4,
                                color: Color(0xffE8EAF7),
                              ),
                            ),
                            fillColor: Colors.white,
                            hintText: 'Reply',
                            // hintStyle: TextStyle(color: Color(0xffe5e5e5)),
                            filled: true,
                          ),
                        ),
                      ),
                      horizontalSpace(width: 10),
                      Flexible(
                        fit: FlexFit.loose,
                        flex: 1,
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: (){},
                            splashColor: purpleAccent,
                            child: SvgPicture.asset(
                              'assets/icons/CopyLink.svg',
                              height: 40,
                              width: 40,
                            ),
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
            top: 0,
            right: 10,
            child: InkWell(
              borderRadius: BorderRadius.circular(25),
              splashColor: purpleAccent,
              onTap: () {
                print('Share Button CLicked');
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.close,
                  color: purpleAccent,
                ),
              ),
            ),
          ),
        ],
      ));

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

class ExpandedSection extends StatefulWidget {
  final Widget child;
  final bool expand;

  ExpandedSection({this.expand = false, required this.child});

  @override
  _ExpandedSectionState createState() => _ExpandedSectionState();
}

class _ExpandedSectionState extends State<ExpandedSection>
    with SingleTickerProviderStateMixin {
  late AnimationController expandController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    prepareAnimations();
    _runExpandCheck();
  }

  ///Setting up the animation
  void prepareAnimations() {
    expandController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    animation = CurvedAnimation(
      parent: expandController,
      curve: Curves.fastOutSlowIn,
    );
  }

  void _runExpandCheck() {
    if (widget.expand) {
      expandController.forward();
    } else {
      expandController.reverse();
    }
  }

  @override
  void didUpdateWidget(ExpandedSection oldWidget) {
    super.didUpdateWidget(oldWidget);
    _runExpandCheck();
  }

  @override
  void dispose() {
    expandController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
        axisAlignment: 1.0, sizeFactor: animation, child: widget.child);
  }
}
