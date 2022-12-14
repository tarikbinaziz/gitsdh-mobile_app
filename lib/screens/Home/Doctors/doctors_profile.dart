import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../Const/const.dart';
import '../../../Const/strings.dart';
import '../bottom_nav.dart';

class DoctorsProfile extends StatefulWidget {
  const DoctorsProfile({Key? key}) : super(key: key);

  @override
  State<DoctorsProfile> createState() => _DoctorsProfileState();
}

class _DoctorsProfileState extends State<DoctorsProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: kMainColor,
        automaticallyImplyLeading: false,
        centerTitle: true,
        leadingWidth: 80,
        elevation: 0,
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(
              EvaIcons.arrowIosBackOutline,
              color: kSubTitleColor,
            ),
            Text(
              "Back",
              style: TextStyle(fontSize: 18, color: kSubTitleColor),
            )
          ],
        ).onTap(() {
          const HomeBottomNavBarScreen().launch(context);
        }),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: context.width(),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  color: kMainColor,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        spreadRadius: 10),
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                              image: AssetImage("assets/images/istiak_doc.png"),
                              fit: BoxFit.fill)),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text(
                      "Dr. Ishtiuq Ahmed Chowdhury",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: kSubTitleColor,
                          fontSize: 16),
                    ),
                    const Text(
                      "General Practitioner",
                      style: TextStyle(
                          fontWeight: FontWeight.w700, color: kSubTitleColor),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Boxicons.bxs_star_half,
                          color: kMainColor,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "4.9 (4255 Reviews)",
                          style: TextStyle(color: kSubTitleColor),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: kSubTitleColor,
                          borderRadius: BorderRadius.circular(5)),
                      child: const Text(
                        "Book Appointment",
                        style: TextStyle(color: kMainColor),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16,),
            Container(
              width: context.width(),
                margin: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kSubTitleColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        spreadRadius: 10

                      ),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Dr. Ishtiuq Ahmed Chowdhury",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: kTitleColor),
                      ),
                      const Text(
                        "General Practitioner",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, color: kTitleColor),
                      ),
                      RatingBarWidget(
                          onRatingChanged: (val) {},
                        activeColor: kMainColor,
                        rating: 5,
                      ),

                    ],
                  ),
                )),
            const SizedBox(height: 16,),
            Container(
                width: context.width(),
                margin: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kSubTitleColor,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          spreadRadius: 10

                      ),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Biography",
                        style: TextStyle(
                            color: kTitleColor,fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8,),
                      Text(
                        kbio,
                        style: TextStyle(
                             color: kTitleColor),
                      ),


                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
