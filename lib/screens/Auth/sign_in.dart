import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gitsdh_mobile_app_testing/screens/Auth/sign_up.dart';
import 'package:gitsdh_mobile_app_testing/screens/Home/bottom_nav.dart';
import 'package:gitsdh_mobile_app_testing/screens/Onboarding/onboarding.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../Const/const.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';

import 'forgot_password.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leadingWidth: 9,
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: const Icon(
          EvaIcons.arrowIosBackOutline,
          color: kMainColor,
        ),
        title: const Text(
          "Back",
          style: TextStyle(fontSize: 18, color: kMainColor),
        ).onTap(() => const OnBoardingScreen().launch(context)),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                SizedBox(
                  width: context.width() / 2.2,
                  child: Image.asset(
                    "assets/images/sign_in_photo.png",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Welcome Back!",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: kTitleColor),
                ),
                const Text(
                  "Sign In to continue",
                  style: TextStyle(
                      color: kTitleColor, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 20,
                ),
                AppTextField(
                  textStyle: const TextStyle(color: kMainColor),
                  cursorColor: kMainColor,
                  decoration: InputDecoration(
                      filled: true,
                      contentPadding: EdgeInsets.zero,
                      fillColor: kTextFieldBgColor,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20)),
                      hintText: "Enter your Email",
                      hintStyle: const TextStyle(color: kHintTextColor),
                      prefixIcon: const Icon(
                        AntIcons.mailFilled,
                        color: kMainColor,
                      )),
                  textFieldType: TextFieldType.EMAIL,
                ),
                const SizedBox(
                  height: 10,
                ),


                TextFormField(
                  obscureText: true,
                  style: const TextStyle(color: kMainColor),
                  cursorColor: kMainColor,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      hintText: "*********************",
                      hintStyle: const TextStyle(color: kHintTextColor),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20)),
                      filled: true,
                      contentPadding: EdgeInsets.zero,
                      fillColor: kTextFieldBgColor,
                      prefixIcon: const Icon(
                        Boxicons.bxs_lock_alt,
                        color: kMainColor,
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Transform.scale(
                      scale: 0.9,
                      child: Checkbox(
                        visualDensity: const VisualDensity(horizontal: -4.0),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        value: value,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                        onChanged: (value) {
                          setState(() {
                            this.value = value!;
                          });
                        },
                        side: const BorderSide(
                          color: kMainColor,
                        ),
                        //    checkColor: kMainColor,
                        activeColor: kMainColor,
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    const Text("Remember me", style: TextStyle(color: kTitleColor)),
                    const Spacer(),
                    TextButton(onPressed: (){
                      const ForgotPasswordScreen().launch(context);

                    }, child: const Text("Forget password?",
                        style: TextStyle(color: kTitleColor)),)

                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                AppButton(
                  width: double.infinity,
                  enableScaleAnimation: false,
                  color: kMainColor,
                  text: "Sign In",
                  textStyle: const TextStyle(
                      color: kSubTitleColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                  onTap: () {
                    const HomeBottomNavBarScreen().launch(context);
                  },
                  shapeBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide.none),
                ),
                const SizedBox(
                  height: 12,
                ),
                RichText(
                    text: TextSpan(children: [
                  const TextSpan(
                      text: "Don’t have an account?",
                      style: TextStyle(color: kTitleColor)),
                  const WidgetSpan(
                      child: SizedBox(
                    width: 8,
                  )),
                  TextSpan(
                      text: "Sign up!",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const SignUpScreen()));
                        },
                      style: const TextStyle(color: kMainColor)),
                ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
