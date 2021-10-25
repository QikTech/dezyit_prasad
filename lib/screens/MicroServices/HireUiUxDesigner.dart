import 'package:flutter/material.dart';

class HireUiUxDesigner extends StatefulWidget {
  const HireUiUxDesigner({Key? key}) : super(key: key);

  @override
  _HireUiUxDesignerState createState() => _HireUiUxDesignerState();
}

class _HireUiUxDesignerState extends State<HireUiUxDesigner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Hire UiUx Designer',
            style: AppBarTheme.of(context).titleTextStyle),
        leading: InkWell(
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
        ),
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
      ),

    );
  }
}
