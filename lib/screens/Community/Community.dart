import 'package:dezyit_prasad/models/CommunityModel.dart';
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
      appBar: GlobalAppBar('Community', true),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [CustomSearch(), BlogCategories(), CommunityBlogs()],
          ),
        ),
      ),
    );
  }
}

class CustomSearch extends StatefulWidget {
  const CustomSearch({Key? key}) : super(key: key);

  @override
  _CustomSearchState createState() => _CustomSearchState();
}

class _CustomSearchState extends State<CustomSearch> {
  final _searchText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
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
                  onChanged: (value) => _searchText.text,
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
                            debugPrint('222');
                            print(_searchText.text);
                          })),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BlogCategories extends StatefulWidget {
  @override
  State<BlogCategories> createState() => _BlogCategoriesState();
}

class _BlogCategoriesState extends State<BlogCategories> {
  // List<String> blogCategoriesList = ['#All', '#explore', '#goals', 'empathise'];

  bool categoryIsSelected = false;
  List<dynamic> blogCategoriesList = [
    {'categoryName': '#All', 'categoryIsSelected': true},
    {'categoryName': '#explore', 'categoryIsSelected': true},
    {'categoryName': '#goals', 'categoryIsSelected': true},
    {'categoryName': 'empathise', 'categoryIsSelected': true},
  ];

  int _selectedBlogCategoriesItem = 0;

  _onSelected(int index) {
    print(blogCategoriesList[index]['categoryName']);
    print(blogCategoriesList[index]['categoryIsSelected']);
    setState(() => _selectedBlogCategoriesItem = index);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        height: 28,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: blogCategoriesList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Material(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      elevation: 2,
                      child: InkWell(
                        onTap: () => _onSelected(index),
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: _selectedBlogCategoriesItem == index
                                    ? purpleAccent
                                    : Colors.white,
                                //                   <--- border color
                                width: 1,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4))),
                          child: Center(
                            child: Text(
                              blogCategoriesList[index]['categoryName'],
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}

class CommunityBlogs extends StatefulWidget {
  const CommunityBlogs({Key? key}) : super(key: key);

  @override
  _CommunityBlogsState createState() => _CommunityBlogsState();
}

class _CommunityBlogsState extends State<CommunityBlogs> {
  late CommunityModel selectedBlog;

  late List<CommunityModel> communityBlogs = [];

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
          blogCategory: 'explore',
          blogDescription:
              "Try correcting the name to the name of an existing setter, or defining a setter or field named ",
          blogImage: 'image.png',
          blogName: 'Ionic Development',
          blogViews: 200),
    );
    communityBlogs.add(
      CommunityModel(
          blogAuthor: 'Prasad Sawant',
          blogCategory: 'explore',
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

    selectedBlog = communityBlogs.first;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          height: 800,
          width: double.infinity,
          child:  ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: communityBlogs.length,
              itemBuilder: (BuildContext context, int index) {
                return Material(
                  borderRadius: BorderRadius.circular(10),
                  elevation: 5,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)),
                    width: double.infinity,
                    child: Column(
                      children: [
                        Image.network(
                            'https://static.wixstatic.com/media/ec9816_120f89a1570549e882031fbfb5ee5905~mv2.png/v1/fill/w_600,h_450,al_c,q_95/Design%20Sprint%20-%20Design%20Thinking%20-%20Graphi.webp',
                            height: 100,
                            fit: BoxFit.fill),
                        Text(communityBlogs[index].blogName),
                        Text(communityBlogs[index].blogDescription),
                        Text('by:${communityBlogs[index].blogAuthor}'),
                        Row(children: [
                          Icon(Icons.remove_red_eye_outlined),
                          Text(communityBlogs[index].blogViews.toString())
                        ]),
                      ],
                    ),
                  ),
                );
              }),

        ),
      ),
    );
  }
}

// return Padding(
// padding: const EdgeInsets.symmetric(horizontal: 10),
// child: Material(
// borderRadius: BorderRadius.all(Radius.circular(4)),
// elevation: 2,
// child: InkWell(
// onTap: () => print(index),
// child: Container(
// padding:
// EdgeInsets.symmetric(vertical: 5, horizontal: 12),
// decoration: BoxDecoration(
// borderRadius:
// BorderRadius.all(Radius.circular(4))),
// child: Center(
// child: Text(communityBlogs[index].blogName,
// textAlign: TextAlign.center,
// ),
// ),
// ),
// ),
// ),
// );

