import 'package:dezyit_prasad/models/CommunityModel.dart';
import 'package:flutter/material.dart';

import '../GlobalAppBar.dart';
import '../colors.dart';
import '../typography.dart';

class BlogScreen extends StatelessWidget {
  // late List<dynamic> filteredCommunityBlogs = [];
  final String blogName, blogDesc, blogAuthor;
  final double blogViews;

  BlogScreen(
      {required this.blogName,
      required this.blogDesc,
      required this.blogAuthor,
      required this.blogViews});

  // BlogScreen({required this.filteredCommunityBlogs});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppBar('Community', true),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.15),
                spreadRadius: 0,
                blurRadius: 10,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          width: double.infinity,
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
                      blogName,
                      style: blackBold24,
                    ),
                    Image(
                      image: AssetImage('assets/icons/ShareBlog.png'),
                      height: 20,
                      width: 20,
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
                          blogAuthor,
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
                  blogDesc,
                  style: grayRegular14,
                ),
                verticalSpace(height: 8),
                Row(
                  children: [
                    Spacer(),
                    Row(children: [
                      Icon(
                        Icons.remove_red_eye_outlined,
                        color: Color(0xff888888),
                        size: 18,
                      ),
                      horizontalSpace(width: 6),
                      Text(
                        "$blogViews",
                        style: grayRegular12,
                      )
                    ]),
                  ],
                ),
                Expanded(
                    child: Row(
                      children: [
                        CommentBox(),
                        IconButton(
                            icon: ImageIcon(AssetImage('assets/icons/SendComment.png'),),
                            onPressed: () {
                              debugPrint('222');
                              print('_commentText.text');
                            }),
              ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CommentBox extends StatelessWidget {
  final _commentText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 26,
      child: TextFormField(
        controller: _commentText,
        onChanged: (value) => _commentText.text,
        decoration: InputDecoration(
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
    );
  }
}
