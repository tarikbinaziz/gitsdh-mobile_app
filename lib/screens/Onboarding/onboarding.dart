import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:gitsdh_mobile_app_testing/Const/const.dart';
import 'package:gitsdh_mobile_app_testing/Const/strings.dart';
import 'package:gitsdh_mobile_app_testing/screens/Auth/sign_in.dart';
import 'package:nb_utils/nb_utils.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var currentIndex = 0;
  PageController pageViewController = PageController();

  List imageList = [
    "assets/images/onb1.png",
    "assets/images/onb2.png",
    "assets/images/onb3.png"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
          body: Column(children: [
        Expanded(
          child: PageView.builder(
              controller: pageViewController,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemCount: imageList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Image.asset(
                      imageList[index],
                      height: context.height() / 2.2,
                      width: context.width() / 1.5,
                    ),
                    Expanded(
                        child: Container(
                      decoration: const BoxDecoration(
                          color: kMainColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          verticalDirection: VerticalDirection.down,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Text(
                                kOnBoardingTittle,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: kSubTitleColor,
                                  fontSize: 24.0,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),

                            const Padding(
                              padding: EdgeInsets.only(top: 16),
                              child: Text(
                                kOnBoardingDesc,
                                style: TextStyle(
                                  color: kSubTitleColor,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const Spacer(),
                            DotsIndicator(
                              dotsCount: imageList.length,
                              position: index.toDouble(),
                              decorator: DotsDecorator(
                                size:  const Size.square(12),
                                color: kSubTitleColor,
                                activeColor: kSubTitleColor,
                                activeSize: const Size(36.0, 12.0),
                                activeShape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                              ),
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 25.0),
                              child: AppButton(
                                width: double.infinity,
                                enableScaleAnimation: false,
                                color: kSubTitleColor,
                                text: "Get Started",
                                textStyle: const TextStyle(
                                    color: kMainColor, fontWeight: FontWeight.bold),
                                onTap: () {
                                  currentIndex < 2
                                      ? pageViewController.nextPage(
                                          duration:
                                              const Duration(milliseconds: 500),
                                          curve: Curves.easeIn)
                                      :  SignInScreen().launch(context);
                                },
                                shapeBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  borderSide: BorderSide.none
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ))
                  ],
                );
              }),
        ),
      ])),
    );
  }
}
