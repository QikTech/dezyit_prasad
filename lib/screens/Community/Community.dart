import 'package:dezyit_prasad/models/CommunityModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../GlobalAppBar.dart';
import '../colors.dart';
import '../typography.dart';
import 'BlogScreen.dart';

class Community extends StatefulWidget {
  const Community({Key? key}) : super(key: key);

  @override
  _CommunityState createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  bool categoryIsSelected = false;
  List<dynamic> blogCategoriesList = [
    {'categoryName': 'All', 'categoryIsSelected': true},
    {'categoryName': 'explore', 'categoryIsSelected': true},
    {'categoryName': 'goals', 'categoryIsSelected': true},
    {'categoryName': 'empathise', 'categoryIsSelected': true},
    {'categoryName': 'em', 'categoryIsSelected': true},
    {'categoryName': 'empathise', 'categoryIsSelected': true},
  ];

  dynamic _selectedBlogCategoriesItem;

  late CommunityModel selectedBlog;
  late List<CommunityModel> communityBlogs = [];
  late List<CommunityModel> filteredCommunityBlogs = [];
  final _searchText = TextEditingController();
  bool isLoading = false;

  searchBlogs(String keyword) {
    setState(() {
      isLoading = true;
    });
    filteredCommunityBlogs = [];
    communityBlogs.forEach((element) {
      // print('${element.blogName}');
      if (element.blogName.toLowerCase().contains(keyword.toLowerCase()) ||
          element.blogAuthor.toLowerCase().contains(keyword)) {
        // print('asdasdasd');
        filteredCommunityBlogs.add(element);
      }
    });
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        isLoading = false;
      });
    });
  } //<--SEARCH FUNCTION

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    communityBlogs.add(
      CommunityModel(
          blogAuthor: 'Prasad Sawant',
          blogCategory: 'explore',
          blogDescription:
              "Try correcting the name to the name of an existing setter, or defining a setter or field named ",
          blogImage: 'image.png',
          blogName: 'Flutter Development',
          blogViews: 100),
    );
    communityBlogs.add(
      CommunityModel(
          blogAuthor: 'Prasad Sawant',
          blogCategory: 'goals',
          blogDescription:
              "Try correcting the name to the name of an existing setter, or defining a setter or field named ",
          blogImage: 'image.png',
          blogName: 'Ionic Development',
          blogViews: 200),
    );
    communityBlogs.add(
      CommunityModel(
          blogAuthor: 'Prasad Sawant',
          blogCategory: 'empathise',
          blogDescription:
              "Try correcting the name to the name of an existing setter, or defining a setter or field named ",
          blogImage: 'image.png',
          blogName: 'Angular Development',
          blogViews: 20),
    );
    communityBlogs.add(
      CommunityModel(
          blogAuthor: 'Prasad Sawant',
          blogCategory: 'explore',
          blogDescription:
              "Try correcting the name to the name of an existing setter, or defining a setter or field named ",
          blogImage: 'image.png',
          blogName: 'Angular Development',
          blogViews: 200),
    );

    _selectedBlogCategoriesItem = blogCategoriesList.first;
    // selectedBlog = communityBlogs.first;
  }

  @override
  Widget build(BuildContext context) {
    // print(filteredCommunityBlogs.length);
    // print(communityBlogs.length);
    return Scaffold(
      appBar: GlobalAppBar('Community', true),
      body: SafeArea(
        child: Column(
          children: [
            Material(
              elevation: 1,
              borderRadius: BorderRadius.circular(4),
              child: Container(
                // height: 130,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: purpleAccent,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Text(
                        'Hey!! Looking for something?',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 44,
                        margin: EdgeInsets.symmetric(horizontal: 44),
                        child: TextFormField(
                          controller: _searchText,
                          onChanged: (value) {
                            searchBlogs(value);
                          },
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: purpleAccent),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: purpleAccent),
                              ),
                              isDense: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              fillColor: Colors.white,
                              hintText: 'Enter',
                              // hintStyle: TextStyle(color: Color(0xffe5e5e5)),
                              filled: true,
                              suffixIcon: IconButton(
                                  icon: Icon(
                                    Icons.search_sharp,
                                    size: 22,
                                    color: Color(0xff888888),
                                  ),
                                  onPressed: () {
                                    searchBlogs(_searchText.text);
                                  })),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ), //<-- Searching
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Wrap(
                direction: Axis.horizontal,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: blogCategoriesList.map((item) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: InkWell(
                      onTap: () =>
                          setState(() => _selectedBlogCategoriesItem = item),
                      child: IntrinsicWidth(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 14),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.15),
                                  spreadRadius: 0,
                                  blurRadius: 10,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              color: Colors.white,
                              border: Border.all(
                                color: _selectedBlogCategoriesItem == item
                                    ? purpleAccent
                                    : Colors.white,
                                //                   <--- border color
                                width: 1,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4))),
                          child: Center(
                            child: Text(
                              '#${item['categoryName']}',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xff707070),
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ), //<-- Sorting
            Expanded(
              child: isLoading
                  ? Container(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : (_searchText.text.isNotEmpty &&
                          filteredCommunityBlogs.isEmpty)
                      ? NotFound()
                      : ListView.builder(
                        itemCount: (_searchText.text.isEmpty)
                            ? communityBlogs.length
                            : filteredCommunityBlogs.length,
                        itemBuilder: (BuildContext context, int index) {
                          if (_searchText.text.isEmpty) {
                            // print('here');
                            // print(communityBlogs[index].blogCategory.toLowerCase());
                            // print(_selectedBlogCategoriesItem['categoryName'].toString().toLowerCase());
                            if (communityBlogs[index]
                                        .blogCategory
                                        .toLowerCase() ==
                                    _selectedBlogCategoriesItem[
                                            'categoryName']
                                        .toString()
                                        .toLowerCase() ||
                                _selectedBlogCategoriesItem['categoryName']
                                        .toString()
                                        .toLowerCase() ==
                                    'all') {
                              // print('here1');
                              return InkWell(
                                onTap: () {
                                  print(communityBlogs[index].blogName);
                                  Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => BlogScreen(blogName: communityBlogs[index].blogName,
                                        blogDesc: communityBlogs[index].blogDescription,
                                        blogAuthor: communityBlogs[index].blogAuthor,
                                        blogViews: communityBlogs[index].blogViews,),
                                  ),
                                );
                                },
                                child: CommunityBlogs(
                                  selectedBlog: communityBlogs[index],
                                ),
                              );
                            } else {
                              return SizedBox.shrink();
                            }
                          } else {
                            if (filteredCommunityBlogs.isEmpty) {
                              return Container(
                                  child:
                                      Center(child: Text('EmptyScreen')));
                            } else {
                              if (communityBlogs[index]
                                          .blogCategory
                                          .toLowerCase() ==
                                      _selectedBlogCategoriesItem[
                                              'categoryName']
                                          .toString()
                                          .toLowerCase() ||
                                  _selectedBlogCategoriesItem[
                                              'categoryName']
                                          .toString()
                                          .toLowerCase() ==
                                      'all') {
                                return CommunityBlogs(
                                  selectedBlog:
                                      filteredCommunityBlogs[index],
                                );
                              } else {
                                return SizedBox.shrink();
                              }
                            }
                          }
                        },
                      ),
            ), //<-- Display
          ],
        ),
      ),
    );
  }
}

class CommunityBlogs extends StatefulWidget {
  const CommunityBlogs({Key? key, required this.selectedBlog})
      : super(key: key);
  final CommunityModel selectedBlog;

  @override
  _CommunityBlogsState createState() =>
      _CommunityBlogsState(selectedBlog: this.selectedBlog);
}

class _CommunityBlogsState extends State<CommunityBlogs> {
  late CommunityModel selectedBlog;

  _CommunityBlogsState({required this.selectedBlog});

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
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
              Image.network(
                  'https://static.wixstatic.com/media/ec9816_120f89a1570549e882031fbfb5ee5905~mv2.png/v1/fill/w_600,h_450,al_c,q_95/Design%20Sprint%20-%20Design%20Thinking%20-%20Graphi.webp',
                  height: 100,
                  fit: BoxFit.fill),
              Text(
                selectedBlog.blogName,
                style: blackBoldText18,
              ),
              verticalSpace(height: 8),
              Text(
                selectedBlog.blogDescription,
                style: grayRegular14,
              ),
              verticalSpace(height: 8),
              Row(
                children: [
                  Text(
                    'By: ${selectedBlog.blogAuthor}',
                    style: grayRegular12,
                  ),
                  Spacer(),
                  Row(children: [
                    Icon(
                      Icons.remove_red_eye_outlined,
                      color: Color(0xff888888),
                      size: 18,
                    ),
                    horizontalSpace(width: 6),
                    Text(
                      selectedBlog.blogViews.toString(),
                      style: grayRegular12,
                    )
                  ]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NotFound extends StatelessWidget {
  const NotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Sorry! We didn’t find what you are looking for',
              style: accentRegular22,
              textAlign: TextAlign.center,
            ),
            Image.asset("assets/images/undraw_Tree_swing_646s 2.png"),
          ],
        ),
      ),
    );
  }
}
