import 'dart:async';
import 'package:deelly/utils/common_widgets/image_paths.dart';
import 'package:deelly/utils/common_widgets/image_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  void increment() {
    selectedPageIndex++;
    update();
  }

  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;
  var pageController = PageController(initialPage: 0);

  forwardAction() {
    pageController.nextPage(
      duration: 300.milliseconds,
      curve: Curves.ease,
    );
  }

  backwardAction() {
    pageController.animateToPage(0,
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }

  List onboardingPages = [
    {},
    {},
    {},
    {},
    {},
  ];
}

class SliderMenu extends StatefulWidget {
  SliderMenu({Key? key}) : super(key: key);

  @override
  State<SliderMenu> createState() => _SliderMenuState();
}

class _SliderMenuState extends State<SliderMenu> {
  final _controller = OnboardingController();
  int _currentPage = 0;
  Timer? _timer;
  @override
  void initState() {
    _timer = Timer.periodic(
      Duration(seconds: 5),
      (Timer timer) {
        if (_currentPage < _controller.onboardingPages.length) {
          _currentPage++;
        } else {
          _currentPage = 0;
        }

        _controller.pageController.animateToPage(
          _currentPage,
          duration: Duration(milliseconds: 350),
          curve: Curves.easeIn,
        );
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150,
          child: PageView.builder(
            controller: _controller.pageController,
            onPageChanged: _controller.selectedPageIndex,
            itemCount: _controller.onboardingPages.length,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 150,
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: ImageWidget(
                      height: 150,
                      width: double.infinity,
                      imagePath: ImagePath.slider_image,
                    ),
                  ),
                  Container(
                    height: 150,
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 11),
                    decoration: ShapeDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.98, -0.21),
                        end: Alignment(-0.98, 0.21),
                        colors: [
                          Colors.black.withOpacity(0),
                          Color(0xFFDF7E7E),
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            'Only AED 75',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(top: 13, bottom: 7),
                          width: 74,
                          height: 21,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                          child: Text(
                            '30% Off',
                            style: TextStyle(
                              color: Color(0xFF303632),
                              fontSize: 14,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                        Text(
                          'Dinner',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        Text(
                          'Zheng He’s',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w700,
                            height: 0,
                            letterSpacing: -0.60,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            _controller.onboardingPages.length,
            (index) => Obx(
              () {
                if (_controller.selectedPageIndex.value == index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 7),
                    width: 18,
                    height: 7,
                    decoration: ShapeDecoration(
                      color: Color(0xFF5ACD84),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  );
                } else {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 7),
                    width: 7,
                    height: 7,
                    decoration: ShapeDecoration(
                      color: Color(0xFFDEDEDE),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  );
                }
              },
            ),
          ),
        ),
      ],
    );
  }
}
