import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gitsdh_mobile_app_testing/screens/Auth/sign_in.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../Const/const.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';





class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

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
    ).onTap(()=>SignInScreen().launch(context)),),
      body: SingleChildScrollView(
    child: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Create Account",
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
                  hintText: "Name",
                  hintStyle: const TextStyle(color: kHintTextColor),
                  prefixIcon: const Icon(
                    BootstrapIcons.person_fill,

                    color: kMainColor,
                  )),
              textFieldType: TextFieldType.NAME,
            ),
            const SizedBox(
              height: 10,
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
                  hintText: "Email",
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
          decoration:  InputDecoration(
            hintText: "password",
            hintStyle: const TextStyle(color: kHintTextColor),
            focusedBorder:OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(20)) ,
            enabledBorder: OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(20)),
            filled: true,
            contentPadding: EdgeInsets.zero,
            fillColor: kTextFieldBgColor,
              prefixIcon: const Icon(Boxicons.bxs_lock_alt,
                color: kMainColor,
              )

          ),
        ),    const SizedBox(
              height: 10,
            ),
        TextFormField(
          obscureText: true,
          style: const TextStyle(color: kMainColor),
          cursorColor: kMainColor,
          obscuringCharacter: "*",
          decoration:  InputDecoration(
            hintText: "Confirm password",
            hintStyle: const TextStyle(color: kHintTextColor),
            focusedBorder:OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(20)) ,
            enabledBorder: OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(20)),
            filled: true,
            contentPadding: EdgeInsets.zero,
            fillColor: kTextFieldBgColor,
              prefixIcon: const Icon(Boxicons.bxs_lock_alt,
                color: kMainColor,
              )

          ),
        ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Transform.scale(
                  scale: 0.9,
                  child: Checkbox(visualDensity: const VisualDensity(horizontal: -4.0),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: value,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    onChanged: ( value){
                      setState(() {
                        this.value=value!;
                      });
                    },
                    side: const BorderSide(color: kMainColor,),
              //    checkColor: kMainColor,
                    activeColor: kMainColor,
                  ),
                ),
                const SizedBox(width: 4,),
                const Text("Terms & Condition",
                    style: TextStyle(color: kTitleColor)),
              ],

            ),
            const SizedBox(
              height: 12,
            ),
            AppButton(
              width: double.infinity,
              enableScaleAnimation: false,
              color: kMainColor,
              text: "Sign Up",
              textStyle: const TextStyle(
                  color: kSubTitleColor, fontWeight: FontWeight.bold,fontSize: 15),
              onTap: () {
              },
              shapeBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide.none
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            RichText(text: TextSpan(
              children: [
                const TextSpan(
                  text: "Already have an account?",
                  style: TextStyle(color: kTitleColor)
                ),
                const WidgetSpan(child: SizedBox(width: 8,)),

                TextSpan(
                  text: "Sign In!",
                  style: const TextStyle(color: kMainColor),
    recognizer: TapGestureRecognizer()
    ..onTap = () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (_) => SignInScreen()));
    }),

              ]


            ))
          ],
        ),
      ),
    ),
      ),
    );
  }
}
