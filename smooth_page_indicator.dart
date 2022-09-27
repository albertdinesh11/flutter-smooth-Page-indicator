import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';

// first we have to import smooth_page_indicator dependency in pubspec.yaml

  class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PageView(
              controller: _controller,
              children: [
              for (int i = 1; i < 6; i++)
                Feed(feedImg: 'lib/images/products/$i.png')
              ],
            ),
            SizedBox(height: size.height * 0.01),
            Center(
              child: SmoothPageIndicator(
                controller: _controller,
                count: 5,
                effect: SwapEffect(
                    activeDotColor: lightIconsColor,
                    dotColor: Colors.black38.withOpacity(0.2),
                    dotHeight: 8,
                    dotWidth: 8,
                    spacing: 5),
              )),
            ),
          ],
        ),
      ),
    ),
  }
   
