import 'dart:developer';

import 'package:dezyit_prasad/screens/GlobalAppBar.dart';
import 'package:flutter/material.dart';

import 'package:timeline_tile/timeline_tile.dart';

import '../colors.dart';
import '../typography.dart';

class TimelineModule extends StatefulWidget {
  @override
  _TimelineModuleState createState() => _TimelineModuleState();
}

class _TimelineModuleState extends State<TimelineModule> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: GlobalAppBar('Timeline', true),
      /*body: Container(
        child: TimelineTile(
          alignment: TimelineAlign.center,
          endChild: Container(
            constraints: const BoxConstraints(
              minHeight: 120,
            ),
            color: Colors.lightGreenAccent,
          ),
          startChild: Container(
            color: Colors.amberAccent,
          ),
        ),
      ),*/
      body: Center(
        child: MaterialButton(
          onPressed: () {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) => TimeLineDialog(),
            );
          },
          color: Colors.blue,
          child: Text(
            'Change Timeline',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class TimeLineDialog extends StatefulWidget {
  const TimeLineDialog({Key? key}) : super(key: key);

  @override
  State<TimeLineDialog> createState() => _TimeLineDialogState();
}

class _TimeLineDialogState extends State<TimeLineDialog> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: Container(
        padding: EdgeInsets.all(14),
        height: 280,
        width: size.width,
        child: Column(
          children: [
            Text(
              'Customize your design sprint Timeline :',
              style: blackRegular16,
            ),
            VerticalSpace(10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                  minWidth: 70,
                  height: 30,
                  splashColor: purpleAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                      side: BorderSide(color: purpleAccent)),
                  child: Row(
                    children: [
                      Text('5 Days', style: accentRegular12),
                    ],
                  ),
                  onPressed: () {},
                ),
                MaterialButton(
                  minWidth: 70,
                  height: 30,
                  splashColor: purpleAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                      side: BorderSide(color: purpleAccent)),
                  child: Row(
                    children: [
                      Text('14 Days', style: accentRegular12),
                    ],
                  ),
                  onPressed: () {},
                ),
                MaterialButton(
                    minWidth: 70,
                    height: 30,
                    splashColor: purpleAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        side: BorderSide(color: purpleAccent)),
                    child: Row(
                      children: [
                        Text('Custom', style: accentRegular12),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: purpleAccent,
                          size: 14,
                        ),
                      ],
                    ),
                    onPressed: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    }),
              ],
            ),
            // # BUTTONS
            SizedBox(
              height: 20,
            ),

            // Container(
            //   // color: Colors.amber.shade300,
            //   height: 200,
            //   child: Padding(
            //     padding: const EdgeInsets.symmetric(vertical: 20),
            //     child: Stack(
            //       clipBehavior: Clip.none,
            //       children: [
            //
            //         Positioned(
            //           left: 9*value,
            //           top: -10,
            //           child: Text(
            //             '${value.toInt()}',
            //             style: TextStyle(),
            //           ),
            //         ),
            //
            //         Column(
            //           children: [
            //             Row(
            //               children: [
            //                 SizedBox(width: 10,),
            //                 Text(
            //                   '5',
            //                   style: TextStyle(),
            //                 ),
            //                 Expanded(
            //                   child: GestureDetector(
            //                     onPanUpdate: (value){
            //                       log('${value.delta.dx}');
            //                     },
            //                     child: SliderTheme(
            //                       data: SliderTheme.of(context).copyWith(
            //                         inactiveTrackColor: Colors.grey,
            //                         activeTrackColor: purpleAccent,
            //                         trackHeight: 2.0,
            //                         // trackShape: ,
            //                         thumbShape: CustomSliderThumbCircle(
            //                           thumbRadius: 48 * .4,
            //                           min: 5,
            //                           max: 30,
            //                         ),
            //                         activeTickMarkColor: Colors.white,
            //                         inactiveTickMarkColor: Colors.red.withOpacity(.7),
            //                       ),
            //                       child: Slider(
            //                         value: value,
            //                         min: 5,
            //                         max: 30,
            //                         // divisions: 6,
            //                         label: '${value.toInt()}',
            //                         onChanged: (newValue){
            //                           setState(() {
            //                             value = newValue;
            //                           });
            //                         },
            //                       ),
            //                     ),
            //                   ),
            //                 ),
            //                 Text(
            //                   '30',
            //                   style: TextStyle(),
            //                 ),
            //                 SizedBox(width: 10,),
            //               ],
            //             ),
            //           ],
            //         ),
            //         Positioned(
            //           height: 48,
            //           width: size.width*0.8,
            //           child: Center(
            //             child: Container(
            //               // height: 3,
            //               width: size.width*0.7,
            //               // color: Colors.black,
            //               child: Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //                 children: [
            //                   Container(
            //                     height: 10,
            //                     width: 2,
            //                     color: purpleAccent,
            //                   ),
            //                   Container(
            //                     height: 10,
            //                     width: 2,
            //                     color: purpleAccent,
            //                   ),
            //                   Container(
            //                     height: 10,
            //                     width: 2,
            //                     color: purpleAccent,
            //                   ),
            //                   Container(
            //                     height: 10,
            //                     width: 2,
            //                     color: purpleAccent,
            //                   ),
            //                   Container(
            //                     height: 10,
            //                     width: 2,
            //                     color: purpleAccent,
            //                   ),
            //                   Container(
            //                     height: 10,
            //                     width: 2,
            //                     color: purpleAccent,
            //                   ),
            //                   Container(
            //                     height: 10,
            //                     width: 2,
            //                     color: purpleAccent,
            //                   ),
            //                 ],
            //               ),
            //             ),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            Visibility(
              visible: isVisible,
              child: Stack(children: [
                Image.asset(
                  'assets/icons/Timeline_Background.png',
                  width: size.width,
                ),
                TimelineBar(),
              ]),
            ),
            MaterialButton(
              minWidth: 100,
              height: 35,
              splashColor: purpleAccent,
              color: purpleAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Text('Continue', style: whiteLight16),
              onPressed: () {
                print('Clicked');
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) => EndDialog(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CustomSliderThumbCircle extends SliderComponentShape {
  final double thumbRadius;
  final int min;
  final int max;

  const CustomSliderThumbCircle({
    required this.thumbRadius,
    this.min = 0,
    this.max = 10,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    Animation<double>? activationAnimation,
    Animation<double>? enableAnimation,
    bool? isDiscrete,
    TextPainter? labelPainter,
    RenderBox? parentBox,
    SliderThemeData? sliderTheme,
    TextDirection? textDirection,
    required double value,
    double? textScaleFactor,
    Size? sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;

    final paint = Paint()
      ..color = purpleAccent //Thumb Background Color
      ..style = PaintingStyle.fill;

    final paint2 = Paint()
      ..color = purpleAccent //Thumb Background Color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;

/*    TextSpan span = new TextSpan(
      style: new TextStyle(
        fontSize: thumbRadius * .8,
        fontWeight: FontWeight.w700,
        color: sliderTheme!.thumbColor, //Text Color of Value on Thumb
      ),
      text: getValue(value),
    );

    TextPainter tp = new TextPainter(
        text: span,
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr);
    tp.layout();
    Offset textCenter =
    Offset(center.dx - (tp.width / 2), center.dy - (tp.height / 2));*/

    canvas.drawCircle(center, thumbRadius * .3, paint);
    canvas.drawCircle(center, thumbRadius * .8, paint2);
    // tp.paint(canvas, textCenter);
  }

  String getValue(double value) {
    return (min + (max - min) * value).round().toString();
  }
}

class TimelineBar extends StatefulWidget {
  const TimelineBar({Key? key}) : super(key: key);

  @override
  State<TimelineBar> createState() => _TimelineBarState();
}

class _TimelineBarState extends State<TimelineBar> {
  double value = 10;
  double ledt = 3;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // color: Colors.yellowAccent,
      // color: Colors.amber.shade300,
      height: 100,
      child: Padding(
        padding: const EdgeInsets.only(top: 14),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: 9 * value,
              top: -10,
              child: Text(
                '${value.toInt()}',
                style: TextStyle(),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '5',
                      style: TextStyle(),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onPanUpdate: (value) {
                          log('${value.delta.dx}');
                        },
                        child: SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            inactiveTrackColor: Colors.grey,
                            activeTrackColor: purpleAccent,
                            trackHeight: 2.0,
                            // trackShape: ,
                            thumbShape: CustomSliderThumbCircle(
                              thumbRadius: 48 * .4,
                              min: 5,
                              max: 30,
                            ),
                            activeTickMarkColor: Colors.white,
                            inactiveTickMarkColor: Colors.red.withOpacity(.7),
                          ),
                          child: Slider(
                            value: value,
                            min: 5,
                            max: 30,
                            // divisions: 6,
                            label: '${value.toInt()}',
                            onChanged: (newValue) {
                              setState(() {
                                value = newValue;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    Text(
                      '30',
                      style: TextStyle(),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              height: 48,
              width: size.width * 0.8,
              child: Center(
                child: Container(
                  // height: 3,
                  width: size.width * 0.7,
                  // color: Colors.black,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 10,
                        width: 2,
                        color: purpleAccent,
                      ),
                      Container(
                        height: 10,
                        width: 2,
                        color: purpleAccent,
                      ),
                      Container(
                        height: 10,
                        width: 2,
                        color: purpleAccent,
                      ),
                      Container(
                        height: 10,
                        width: 2,
                        color: purpleAccent,
                      ),
                      Container(
                        height: 10,
                        width: 2,
                        color: purpleAccent,
                      ),
                      Container(
                        height: 10,
                        width: 2,
                        color: purpleAccent,
                      ),
                      Container(
                        height: 10,
                        width: 2,
                        color: purpleAccent,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EndDialog extends StatefulWidget {
  const EndDialog({Key? key}) : super(key: key);

  @override
  State<EndDialog> createState() => _EndDialogState();
}

class _EndDialogState extends State<EndDialog> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 60),
        height: 280,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '( DEZY IT )',
              style: accentRegular12,
            ),
            Row(
              children: [
                Image.asset('assets/icons/Timeline_Done.png'),
                Text(
                  'Timeline changes Successfully',
                  style: blackRegular16,
                ),
              ],
            ),
            Container(
              width: size.width,
              height: 30,
              decoration: BoxDecoration(
                color: Color(0xffF1A042),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Spacer(),
                  Text(
                    'New Deadline :',
                    style: whiteMedium12,
                  ),
                  Text(
                    '20 Aug 2021',
                    style: whiteRegular12,
                  ),
                  Spacer(),
                ],
              ),
            ),
            MaterialButton(
              minWidth: 100,
              height: 35,
              splashColor: purpleAccent,
              color: purpleAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Text('Continue', style: whiteLight16),
              onPressed: () {
                print('Clicked');
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) =>  EndDialog(),
                //   ),
                // );
              },
            ),
          ],
        ),
      ),
    );
  }
}
