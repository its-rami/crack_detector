import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walls_condition_checker/constants.dart';
import 'package:walls_condition_checker/upload_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PagesView();
  }
}

class PagesView extends StatefulWidget {
  @override
  State<PagesView> createState() => _PagesViewState();
}

class _PagesViewState extends State<PagesView> {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    int _currentPageIndex = 0;

    @override
    void dispose() {
      controller.dispose();
      super.dispose();
    }

    return PageView(
      controller: controller,
      onPageChanged: (int index) {
        setState(() {
          _currentPageIndex = index;
        });
      },
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: BoxDecoration(
                  border:
                      Border.all(width: 10, color: kdarkbrown.withOpacity(0.7)),
                  borderRadius: BorderRadius.circular(20)),
              child: Image.asset(
                "images/crack.png",
                width: 300,
                height: 300,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: 20),
            const Text("Write something here"),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: kdarkbrown),
              onPressed: () {
                controller.nextPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeIn,
                );
              },
              child: const Text("Next"),
            ),
            SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: const WormEffect(
                  dotHeight: 16,
                  dotWidth: 16,
                  type: WormType.thin,
                  activeDotColor: Colors.blueGrey),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 10, color: kblue.withOpacity(0.7)),
                  borderRadius: BorderRadius.circular(20)),
              child: Image.asset(
                "images/crack.png",
                width: 300,
                height: 300,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: 20),
            const Text("Write something here"),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: kdarkbrown),
              onPressed: () {
                controller.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn,
                );
              },
              child: const Text("Next"),
            ),
            SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: const WormEffect(
                  dotHeight: 16,
                  dotWidth: 16,
                  type: WormType.thin,
                  activeDotColor: Colors.blueGrey),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white70,
                  border: Border.all(width: 10, color: kblue.withOpacity(0.7)),
                  borderRadius: BorderRadius.circular(20)),
              child: Image.asset(
                "images/crack.png",
                width: 300,
                height: 300,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: 20),
            const Text("Write Something here"),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: kdarkbrown),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => UploadScreen(),
                  ),
                );
                dispose();
              },
              child: const Text("Get Started"),
            ),
            SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: const WormEffect(
                  dotHeight: 16,
                  dotWidth: 16,
                  type: WormType.thin,
                  activeDotColor: Colors.blueGrey),
            ),
          ],
        ),
      ],
    );
  }
}
