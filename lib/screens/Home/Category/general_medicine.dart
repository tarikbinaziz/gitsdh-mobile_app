import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../../Const/const.dart';
import '../bottom_nav.dart';

class GeneralMedicineScreen extends StatefulWidget {
  const GeneralMedicineScreen({Key? key}) : super(key: key);

  @override
  State<GeneralMedicineScreen> createState() => _GeneralMedicineScreenState();
}

class _GeneralMedicineScreenState extends State<GeneralMedicineScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          centerTitle: true,
          leadingWidth: 80,
          elevation: 0,
          leading: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(
                EvaIcons.arrowIosBackOutline,
                color: kMainColor,
              ),
              Text(
                "Back",
                style: TextStyle(fontSize: 18, color: kMainColor),
              )
            ],
          ).onTap(() {
            const HomeBottomNavBarScreen().launch(context);
          }),
          title: const Text(
            "General Medicine",
            style: TextStyle(fontWeight: FontWeight.bold, color: kTitleColor),
          )
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(children: [
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (_,index){
                  return  Container(
                    margin: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kSubTitleColor,
                        boxShadow:[BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 3,
                        ),
                        ]
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            "assets/images/istiak_doc.png"),
                                        fit: BoxFit.fill)),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Dr. Ishtiuq Ahmed Chowdhury",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,color: kTitleColor),
                                  ),
                                  Text(
                                    "General Practitioner",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: kTitleColor),
                                  ),
                                  Text(
                                    "Somerian Clinic - Dubai",
                                    maxLines: 2,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,color: kTitleColor),
                                  ),
                                  Text(
                                    "10:00  AM-  8.45 PM",
                                    style: TextStyle(color: kTitleColor),
                                  ),

                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: kSubTitleColor,
                              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),),
                              boxShadow: [ BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 2,
                                offset: const Offset(0,0),
                              )]
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: kRatingContainerColor),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "4.5",
                                      style: TextStyle(color: kSubTitleColor),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Icon(
                                      AntIcons.starFilled,
                                      color: kSubTitleColor,
                                      size: 16,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: kMainColor,
                                    borderRadius: BorderRadius.circular(5)),
                                child: const Text(
                                  "Book Appointment",
                                  style: TextStyle(color: kSubTitleColor),
                                ),
                              )
                            ],
                          ),
                        ),


                      ],
                    ),
                  );

                })
          ],),
        ),
      ),
    );
  }
}
