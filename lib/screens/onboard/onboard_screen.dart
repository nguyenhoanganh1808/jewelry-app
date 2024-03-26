import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen>
    with TickerProviderStateMixin {
  final PageController _pageViewController = PageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _pageViewController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    // _pageViewController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    const Color brow = Color(0xFF947330);
    final width = MediaQuery.of(context).size.width;
    bool onLastPage = false;

    return Scaffold(
        body: Stack(
      alignment: const Alignment(0, 0.5),
      children: <Widget>[
        PageView(
          controller: _pageViewController,
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
          children: <Widget>[
            Center(
              child: Text('First Page', style: textTheme.titleLarge),
            ),
            Center(
              child: Text('Second Page', style: textTheme.titleLarge),
            ),
            Center(
              child: Text('Third Page', style: textTheme.titleLarge),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SmoothPageIndicator(
              effect: const ExpandingDotsEffect(
                  activeDotColor: brow, dotHeight: 10, dotWidth: 13),
              controller: _pageViewController,
              count: 3,
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: width * 0.25,
              width: width * 0.5,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    // padding: EdgeInsets.only(
                    //     top: 50, bottom: 50, left: 100, right: 100),
                    backgroundColor: brow,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        topRight: Radius.circular(100),
                      ),
                    )),
                onPressed: onLastPage
                    ? null
                    : () {
                        _pageViewController.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                child: Text(onLastPage ? 'D O N E' : 'N E X T',
                    style: const TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.blue;
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(size.height / 2, size.width / 2),
        height: size.height,
        width: size.width,
      ),
      math.pi,
      math.pi,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
