import 'package:flutter/material.dart';

import 'colors.dart';

class GlobalAppBar extends StatelessWidget implements PreferredSizeWidget {
  @required
  late String title;
  @required
  final bool isBackButtonExist;

  // late Function onBackPressed;
  // final bool showCart;
  // CustomAppBar({@required this.title, this.isBackButtonExist = true, this.onBackPressed, this.showCart = false});
  GlobalAppBar(this.title, this.isBackButtonExist);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AppBar(
      foregroundColor: Colors.yellow,
      title: Text(title, style: AppBarTheme.of(context).titleTextStyle),
      centerTitle: true,
      automaticallyImplyLeading: isBackButtonExist,
      leading: (isBackButtonExist == true)
          ? InkWell(
              onTap: () => Navigator.of(context).pop(false),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
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
            )
          : null,
      actions: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
          child: Image(
            image: AssetImage('assets/icons/action.png'),
            height: 20,
            width: 20,
          ),
        )
      ],
      backgroundColor: Theme.of(context).cardColor,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => Size(0, 50);
}
