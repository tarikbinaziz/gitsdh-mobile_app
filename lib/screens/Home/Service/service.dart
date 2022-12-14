import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../Const/const.dart';
import '../Doctors/doctors.dart';
import '../bottom_nav.dart';

class ServiceScreen extends StatefulWidget {
  const ServiceScreen({Key? key}) : super(key: key);

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  bool isChangeBG = false;
  String selectedItem = '';

  var images=[
    "assets/images/doctor.png",
    "assets/images/bi_hospital-fill.png",
    "assets/images/ant-design_medicine-box-filled.png",
    "assets/images/doctor.png",
    "assets/images/bi_hospital-fill.png",
    "assets/images/ant-design_medicine-box-filled.png",
    "assets/images/doctor.png",
    "assets/images/bi_hospital-fill.png",
    "assets/images/ant-design_medicine-box-filled.png",
    "assets/images/doctor.png",
    "assets/images/bi_hospital-fill.png",
    "assets/images/ant-design_medicine-box-filled.png",
  ];
  var names=[
    "Doctor",
    "Hospital",
    "Medicine",
    "Doctor",
    "Hospital",
    "Medicine",
    "Doctor",
    "Hospital",
    "Medicine",
    "Doctor",
    "Hospital",
    "Medicine",
  ];

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
            "Service",
            style: TextStyle(fontSize: 18, color: kMainColor),
          )
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: images.length,

            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 12.0,

        ), itemBuilder: (_,index){
          return Container(

            decoration: BoxDecoration(
              color:  selectedItem == images[index]?kMainColor:kSubTitleColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 3,
                  offset: const Offset(3, 3),
                ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                 images[index],
                  width: 30,
                  color: selectedItem == images[index]?kSubTitleColor:kMainColor,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  names[index],
                  style: TextStyle(
                      color: selectedItem == images[index]?kSubTitleColor:kTitleColor,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ).onTap((){
            setState(() {
              selectedItem = images[index];
              const HomeDoctorsScreen().launch(context);
            });
          });
        }),
      ),


    );
  }
}
