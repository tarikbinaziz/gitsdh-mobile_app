import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:gitsdh_mobile_app_testing/screens/Auth/sign_in.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../Const/const.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {

  bool value=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
    backgroundColor: Colors.transparent,
    leadingWidth: 9,
    automaticallyImplyLeading: false,
    elevation: 0,
    leading: const Icon(EvaIcons.arrowIosBackOutline,color: kMainColor,),
    title:  const Text(
      "Back",
      style: TextStyle(fontSize: 18, color: kMainColor),
    ).onTap(()=>const SignInScreen().launch(context)),),
      body: SingleChildScrollView(
    child: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const SizedBox(
              height: 141,
            ),
            const Text(
              "Forget Password",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: kTitleColor),
            ),
            const SizedBox(
              height: 30,
            ),
            AppTextField(
              textStyle: const TextStyle(color: kMainColor),
              cursorColor: kMainColor,
              decoration:  InputDecoration(
                  filled: true,
                  contentPadding: EdgeInsets.zero,
                  fillColor: kTextFieldBgColor,
                  focusedBorder:OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(20)) ,
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(20)),
                  hintText: "Enter Your Email",
                  hintStyle: const TextStyle(color: kHintTextColor),
                  prefixIcon: const Icon(
                    AntIcons.mailFilled,
                    color: kMainColor,
                  )),
              textFieldType: TextFieldType.EMAIL,
            ),
            const SizedBox(
              height: 12,
            ),
            AppButton(
              width: double.infinity,
              enableScaleAnimation: false,
              color: kMainColor,
              text: "Submit",
              textStyle: const TextStyle(
                  color: kSubTitleColor, fontWeight: FontWeight.bold,fontSize: 15),
              onTap: () {
              },
              shapeBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide.none
              ),
            ),

          ],
        ),
      ),
    ),
      ),
    );
  }
}
