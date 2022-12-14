import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:gitsdh_mobile_app_testing/screens/Home/bottom_nav.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../../Const/const.dart';
import 'general_medicine.dart';

class CategorySpecialistScreen extends StatefulWidget {
  const CategorySpecialistScreen({Key? key}) : super(key: key);

  @override
  State<CategorySpecialistScreen> createState() => _CategorySpecialistScreenState();
}

class _CategorySpecialistScreenState extends State<CategorySpecialistScreen> {
  bool isChangeBG = false;
  String selectedItem = '';

  var medicineImages = [
    "assets/images/general_medicine.png",
    "assets/images/internal_medicine.png",
    "assets/images/gyne.png",
    "assets/images/dermatology.png",
    "assets/images/opthal.png",
    "assets/images/ortho.png"
  ];

  var medicinName = [
    "General Medicine",
    "Internal Medicine",
    "Gynecology",
    "Dermatology",
    "Ophthalmology",
    "Orthopedics"
  ];

  var docCount = [
    "1200 Doctors",
    "800 Doctors",
    "1200 Doctors",
    "800 Doctors",
    "1200 Doctors",
    "800 Doctors",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kTextFieldBgColor,
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
          "Category (Specialties)",
          style: TextStyle(fontSize: 18, color: kMainColor),
        )
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: GridView.builder(
            itemCount: medicineImages.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 12.0,
                childAspectRatio: 0.9

          ), itemBuilder: (_,index){
            return Container(
              width: 125,
              decoration: BoxDecoration(
                color: selectedItem == medicineImages[index]
                    ? kMainColor
                    : kSubTitleColor,
                boxShadow:[ BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 3,
                  offset: const Offset(3, 3),
                ),],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Container(
                    height: 127,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),

                        image: DecorationImage(
                            image: AssetImage(medicineImages[index]),
                            fit: BoxFit.fill)),
                  ),
                 const Spacer(),
                  Text(
                    medicinName[index],
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                      color: selectedItem == medicineImages[index]
                          ? kSubTitleColor
                          : kMainColor,),
                  ),
                  Text(
                    docCount[index],
                    style: TextStyle(color: selectedItem == medicineImages[index]
                        ? kSubTitleColor
                        : kTitleColor,),
                  ),
                  const SizedBox(height: 8,)
                ],
              ),
            ).onTap(() {
              setState(() {
                selectedItem = medicineImages[index];
              });
              const GeneralMedicineScreen().launch(context);
            });
          }),
        ),
      ),
    );
  }
}
