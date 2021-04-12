import 'package:flutter/material.dart';

class New extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 414,
      height: 896.45,
      color: Colors.white,
      child: Stack(
        children: [
          Positioned.fill(
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 414,
                height: 178,
                color: Color(0xfff4f5f7),
                padding: const EdgeInsets.only(
                  left: 5,
                  right: 17,
                  top: 60,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: FlutterLogo(size: 24),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "یﺮﮑﺷ ﺎﺴﻬﻣ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff2d3d5c),
                        fontSize: 18,
                        letterSpacing: 0.13,
                      ),
                    ),
                    Text(
                      ".دﻮﺷ ﯽﻣ جرد ﺶﺨﺑ ﻦﯾا رد ﯽﻓاﺮﮔﻮﯿﺑ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff2d3d5c),
                        fontSize: 15,
                        letterSpacing: 0.10,
                      ),
                    ),
                    Text(
                      "... هوﺮﮔ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff2e3e5c),
                        fontSize: 15,
                        letterSpacing: 0.10,
                      ),
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      padding: const EdgeInsets.all(2),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 15.70,
                            height: 15.73,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: FlutterLogo(size: 15.69728946685791),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 238,
            child: Container(
              width: 414,
              height: 8,
              color: Color(0xfff4f5f7),
            ),
          ),
          Positioned(
            left: 0,
            top: 262,
            child: Container(
              width: 276,
              height: 37,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 276,
                    height: 37,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              width: 276,
                              height: 1,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 276,
                                    height: 1,
                                    color: Color(0xffd0dae9),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: 137.63,
                              height: 37,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "ﺎﻫ یﺪﻨﻣ ﻪﻗﺎﻠﻋ",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xff3d5480),
                                      fontSize: 15,
                                      letterSpacing: 0.10,
                                    ),
                                  ),
                                  SizedBox(height: 16),
                                  Container(
                                    width: 137.63,
                                    height: 3,
                                    color: Color(0xff1fcc79),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 192.10,
                          top: 0,
                          child: Container(
                            width: 28.70,
                            height: 18,
                            padding: const EdgeInsets.only(
                              right: 23,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "ﺎﻫ هﺪﺷ ﯽﯾﺎﺳﺎﻨﺷ",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xff9fa5c0),
                                    fontSize: 15,
                                    letterSpacing: 0.10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 138,
            top: 298,
            child: Container(
              width: 276,
              height: 1,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 276,
                    height: 1,
                    color: Color(0xffd0dae9),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 323,
            top: 262,
            child: Text(
              "تادهاشم",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff9fa5c0),
                fontSize: 15,
                letterSpacing: 0.10,
              ),
            ),
          ),
          Positioned(
            left: 300,
            top: 115,
            child: Container(
              width: 105,
              height: 105,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: FlutterLogo(size: 105),
            ),
          ),
          Positioned(
            left: 195,
            top: 187,
            child: Text(
              "698",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff2d3d5c),
                fontSize: 22,
                fontFamily: "B Nazanin",
                fontWeight: FontWeight.w700,
                letterSpacing: 0.15,
              ),
            ),
          ),
          Positioned(
            left: 73,
            top: 185,
            child: Text(
              "254",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff2d3d5c),
                fontSize: 22,
                fontFamily: "B Nazanin",
                fontWeight: FontWeight.w700,
                letterSpacing: 0.15,
              ),
            ),
          ),
          Positioned(
            left: 170,
            top: 207,
            child: Text(
              "ﺎﻫ هﺪﻧﻮﺷ لﺎﺒﻧد",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xffb7bbd0),
                fontSize: 15,
                letterSpacing: 0.10,
              ),
            ),
          ),
          Positioned(
            left: 48,
            top: 206,
            child: Text(
              "ﺎﻫ هﺪﻨﻨﮐ لﺎﺒﻧد",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xffb7bbd0),
                fontSize: 15,
                letterSpacing: 0.10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
