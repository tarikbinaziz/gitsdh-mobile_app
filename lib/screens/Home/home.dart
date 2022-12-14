import 'package:akar_icons_flutter/akar_icons_flutter.dart';
import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:gitsdh_mobile_app_testing/Const/const.dart';
import 'package:gitsdh_mobile_app_testing/screens/Home/Category/general_medicine.dart';
import 'package:gitsdh_mobile_app_testing/screens/Home/Doctors/doctors.dart';
import 'package:gitsdh_mobile_app_testing/screens/Home/Doctors/doctors_profile.dart';
import 'package:gitsdh_mobile_app_testing/screens/Home/Service/service.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

import 'Category/category.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isChangeBG = false;
  String selectedItem = '';

  var medicineImages = [
    "assets/images/general_medicine.png",
    "assets/images/internal_medicine.png",
    "assets/images/dermatology.png"
  ];
  var medicinName = [
    "General Medicine",
    "Internal Medicine",
    "Dermatology",
  ];
  var docCount = [
    "1200 Doctors",
    "800 Doctors",
    "650 Doctors",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kTextFieldBgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: kMainColor),
        centerTitle: true,
        title: const Text(
          'Hello, Ishtiuq',
          style: TextStyle(color: kTitleColor),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: ListTile(
                leading: Text('HOME',
                    style: GoogleFonts.manrope(
                        textStyle: const TextStyle(
                            color: kHintTextColor,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 1.5))),
              ),
            ),
            ListTile(
              shape: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              tileColor: kTextFieldBgColor.withOpacity(0.5),
              leading: const ImageIcon(
                AssetImage("assets/icons/terrain.png"),
                color: kMainColor,
              ),
              title: const Text(
                'Home',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: kMainColor),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const RotatedBox(
                quarterTurns: 2,
                child: Icon(
                  Icons.share,
                ),
              ),
              title: const Text(
                'Dashboard',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: kDrawerTextColor),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const ImageIcon(AssetImage("assets/icons/coffee.png")),
              title: const Text('Report',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: kDrawerTextColor)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Text('Book Appointment',
                  style: GoogleFonts.manrope(
                      textStyle: const TextStyle(
                          color: kHintTextColor,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1.5))),
              trailing: const Icon(Icons.more_vert),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const ImageIcon(AssetImage("assets/icons/album.png")),
              title: const Text('Doctors',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: kDrawerTextColor)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const ImageIcon(AssetImage("assets/icons/menu-grid-o.png")),
              title: const Text('Specialties',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: kDrawerTextColor)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.bolt),
              title: const Text('Appointment',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: kDrawerTextColor)),
              trailing: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: kApmntContainerColor, shape: BoxShape.circle),
                child: const Text(
                  "2",
                  style: TextStyle(color: kSubTitleColor),
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Text('SETTINGS',
                  style: GoogleFonts.manrope(
                      textStyle: const TextStyle(
                          color: kHintTextColor,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1.5))),
            ),
            ListTile(
              leading: const ImageIcon(AssetImage("assets/icons/home.png")),
              title: const Text('Manage Appt.',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: kDrawerTextColor)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const ImageIcon(AssetImage("assets/icons/template.png")),
              title: const Text('Home Care',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: kDrawerTextColor)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const ImageIcon(AssetImage("assets/icons/Union.png")),
              title: const Text('Find Us',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: kDrawerTextColor)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.folder_open_outlined),
              title: const Text('Contact Us',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: kDrawerTextColor)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const ImageIcon(AssetImage("assets/icons/profile.png")),
              title: const Text('Health Tip',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: kDrawerTextColor)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              shape: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              tileColor: kMyProfileTileColor.withOpacity(0.25),
              leading: const ImageIcon(
                AssetImage("assets/icons/mouse.png"),
                color: kMainColor,
              ),
              title: const Text('My Profile',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: kMainColor)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const ImageIcon(AssetImage("assets/icons/options.png")),
              title: const Text('Settings',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: kDrawerTextColor)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Find your medical\nSolution!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: kTitleColor),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 2.0),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 20,
                    offset: const Offset(3, 3),
                  ),
                ]),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide.none),
                      prefixIcon: const Icon(
                        AkarIcons.search,
                        color: kMainColor,
                      ),
                      hintText: "Search",
                      hintStyle: const TextStyle(color: kTitleColor),
                      filled: true,
                      fillColor: kSubTitleColor),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                height: context.height() / 4.8,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: kHomeContainerColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 17.0, left: 10),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Doctor Appointment",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kSubTitleColor,
                            fontSize: 18.0),
                      ),
                      const Text(
                        "Search your doctor and book an appointment here",
                        style: TextStyle(color: kSubTitleColor),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              color: kSubTitleColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: const Text(
                            "Book Appointment",
                            style: TextStyle(color: kMainColor),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Center(
                child: DotsIndicator(
                  dotsCount: 4,
                  position: 3,
                  decorator: DotsDecorator(
                    size: const Size.square(12),
                    color: kDotColor,
                    activeColor: kMainColor,
                    activeSize: const Size(30.0, 12.0),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  const Text(
                    "Category (Specialties)",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: kTitleColor),
                  ),
                  const Spacer(),
                  const Text(
                    "View All",
                    style: TextStyle(color: kTitleColor),
                  ).onTap(() {
                    const CategorySpecialistScreen().launch(context);
                  }),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: kMainColor, shape: BoxShape.circle),
                    child: const Icon(
                      Icons.add,
                      color: kSubTitleColor,
                      size: 18,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              HorizontalList(
                itemCount: medicineImages.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: selectedItem == medicineImages[index]
                          ? kMainColor
                          : kSubTitleColor,
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
                      children: [
                        Container(
                          height: 100,
                          width: 130,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(medicineImages[index]),
                                  fit: BoxFit.fill)),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            medicinName[index],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: selectedItem == medicineImages[index]
                                  ? kSubTitleColor
                                  : kTitleColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Text(
                            docCount[index],
                            style: TextStyle(
                              color: selectedItem == medicineImages[index]
                                ? kSubTitleColor
                                : kTitleColor,),
                          ),
                        ),
                      ],
                    ),
                  ).onTap(() {
                    setState(() {
                      selectedItem = medicineImages[index];
                    });
                    const GeneralMedicineScreen().launch(context);
                  });
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text(
                    "Service",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: kTitleColor),
                  ),
                  const Spacer(),
                  const Text(
                    "View All",
                    style: TextStyle(color: kTitleColor),
                  ).onTap(() {
                    const ServiceScreen().launch(context);
                  }),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: kMainColor, shape: BoxShape.circle),
                    child: const Icon(
                      Icons.add,
                      color: kSubTitleColor,
                      size: 18,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      height: 103,
                      decoration: BoxDecoration(
                        color: isChangeBG==true?kMainColor:kSubTitleColor,
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
                            "assets/images/doctor.png",
                            width: 30,
                            color: isChangeBG==true?kSubTitleColor:kMainColor,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Doctor",
                            style: TextStyle(
                                color: isChangeBG==true?kSubTitleColor:kTitleColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ).onTap((){
                      setState(() {
                        isChangeBG=true;
                        const HomeDoctorsScreen().launch(context);
                      });
                    }),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 103,
                      decoration: BoxDecoration(
                        color: kSubTitleColor,
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
                            "assets/images/bi_hospital-fill.png",
                            width: 30,
                            color: kMainColor,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Hospital",
                            style: TextStyle(
                                color: kTitleColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 103,
                      decoration: BoxDecoration(
                        color: kSubTitleColor,
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
                            "assets/images/ant-design_medicine-box-filled.png",
                            width: 30,
                            color: kMainColor,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Medicine",
                            style: TextStyle(
                                color: kTitleColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text(
                    "Top Doctors",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: kTitleColor),
                  ),
                  const Spacer(),
                  const Text(
                    "View All",
                    style: TextStyle(color: kTitleColor),
                  ).onTap(() {
                    const HomeDoctorsScreen().launch(context);
                  }),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: kMainColor, shape: BoxShape.circle),
                    child: const Icon(
                      Icons.add,
                      color: kSubTitleColor,
                      size: 18,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (_, index) {
                    return Container(
                      margin: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kSubTitleColor,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 3,
                            ),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Row(
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
                                  children: [
                                    const Text(
                                      "Dr. Ishtiuq Ahmed Chowdhury",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: kTitleColor),
                                    ),
                                    const Text(
                                      "General Practitioner",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: kTitleColor),
                                    ),
                                    const Text(
                                      "Somerian Clinic - Dubai",
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          color: kTitleColor),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),

                                    Row(
                                      //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(4),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: kRatingContainerColor),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: const [
                                              Text(
                                                "4.5",
                                                style: TextStyle(
                                                    color: kSubTitleColor),
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
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        const Icon(
                                          Boxicons.bx_time_five,
                                          color: kTitleColor,
                                          size: 16,
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        const Text(
                                          "10:00  AM-  8.45 PM",
                                          style: TextStyle(color: kTitleColor),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ).onTap(() => const DoctorsProfile().launch(context));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
