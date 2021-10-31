import 'package:dezyit_prasad/models/CommunityModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../GlobalAppBar.dart';
import '../colors.dart';
import '../typography.dart';

class Blog extends StatefulWidget {
  const Blog({Key? key}) : super(key: key);

  @override
  _BlogState createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: GlobalAppBar('Community', true),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'How to define and measure goals',
                  style: blackBoldText18,
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.share_outlined),
                  color: purpleAccent,
                  iconSize: 20,
                  onPressed: () => print('Share Pressed'),
                ),
              ],
            ),
            Row(
              children: [
                CircleAvatar(backgroundColor: purpleAccent),
                HorizontalSpace(12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Prasad Sawant',
                      style: blackRegular14,
                    ),
                    Text(
                      'Aug 22, 2021',
                      style: grayRegular12,
                    ),
                  ],
                ),
                Spacer(),
                MaterialButton(
                  height: 30,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: purpleAccent)),
                  onPressed: () {},
                  color: Colors.white,
                  child: Text(
                    'Follow',
                    style: accentRegular14,
                  ),
                ),
              ],
            ),
            Image.network(
                'https://static.wixstatic.com/media/ec9816_120f89a1570549e882031fbfb5ee5905~mv2.png/v1/fill/w_600,h_450,al_c,q_95/Design%20Sprint%20-%20Design%20Thinking%20-%20Graphi.webp',
                height: 100,
                fit: BoxFit.fill),
            VerticalSpace(10),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam, interdum sociis sed enim, porta morbi. Eget et, non rhoncus diam habitasse at. Eu etiam adipiscing massa gravida mi at semper. Integer elit egestas cras enim vitae. Vitae consectetur ac ac duis ultrices cursus in est vitae. Turpis velit lobortis magnis tortor, ornare id faucibus fermentum eu ',
              style: grayRegular14,
            ),
            VerticalSpace(10),
            Row(
              children: [
                Text(
                  'David Thomas',
                  style: grayRegular12,
                ),
                Spacer(),
                Icon(
                  Icons.remove_red_eye_outlined,
                  color: Color(0xff707070),
                  size: 18,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
