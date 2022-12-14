import 'package:akar_icons_flutter/akar_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import '../../Const/const.dart';
import '../Appt/appoinment.dart';
import '../Doctors/doctors.dart';
import '../Profile/profile.dart';
import '../Report/report.dart';
import 'home.dart';


class HomeBottomNavBarScreen extends StatefulWidget {
  const HomeBottomNavBarScreen({Key? key}) : super(key: key);

  @override
  State<HomeBottomNavBarScreen> createState() => _HomeBottomNavBarScreenState();
}

class _HomeBottomNavBarScreenState extends State<HomeBottomNavBarScreen> {
  var currentIndex = 0;

  List<Widget> pages = [
    const DoctorsScreen(),
    const AppointmentScreen(),
    const HomeScreen(),
    const ReportScreen(),
    const ProfileScreen()

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(2),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            selectedItemColor: kMainColor,
            type: BottomNavigationBarType.fixed,
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),

            currentIndex: 2,

            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            items: [
              const BottomNavigationBarItem(
                backgroundColor: kSubTitleColor,
                icon: HeroIcon(HeroIcons.userPlus,
                  style: HeroIconStyle.outline,
                  color: kHintTextColor,
                  size: 28,
                ),
                label: "Doctors",
              ),
              const BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/icons/appt_icon.png"), color: kHintTextColor, size: 25,),
                  label: "Appt."),
              BottomNavigationBarItem(
                  icon: Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: kMainColor,
                    ),
                    child: const Icon(AkarIcons.home_alt1,color: kSubTitleColor,)
                  ),
                  label: ''),
              const BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/icons/report-icon.png"), color: kHintTextColor,),
                  label: "Report"),
              const BottomNavigationBarItem(
                  icon: HeroIcon(
                    HeroIcons.user,
                    style: HeroIconStyle.outline,
                    color: kHintTextColor,
                  ),
                  label: "user"),
            ],
          ),
        ),
      ),


    );
  }
}
