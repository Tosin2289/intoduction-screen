import 'package:flutter/material.dart';
import 'package:intro_screen/intro_screens/screen1.dart';
import 'package:intro_screen/intro_screens/screen2.dart';
import 'package:intro_screen/intro_screens/screen3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../pages/homepage.dart';

class IntroScreen extends StatefulWidget {
  IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [
              Screenone(),
              Screentwo(),
              Screenthree(),
            ],
          ),
          Container(
              alignment: Alignment(0, 0.75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(2);
                    },
                    child: Text("Skip"),
                  ),
                  SmoothPageIndicator(controller: _controller, count: 3),
                  onLastPage
                      ? GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: ((context) {
                              return HomePage();
                            })));
                          },
                          child: Text("Done"),
                        )
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: Duration(microseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: Text("Next"),
                        )
                ],
              ))
        ],
      ),
    );
  }
}
