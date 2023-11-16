
import 'package:flutter/material.dart';
import '../components/about_items.dart';
import '../components/app_bar.dart';
import '../components/banner.dart';
import '../components/bottom.menu.dart';
import '../components/consult.dart';
import '../components/contact_us.dart';
import '../components/drawer.dart';
import '../components/gallery.dart';
import '../components/offering.dart';
import '../components/our_team.dart';
import '../components/res_layout.dart';
import '../utils/common_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CusAppBar(),
      drawer: MobDrawer(),
      body: SizedBox(
        width: width(context),
        height: null,
        child: SingleChildScrollView(
          child: Column(
            children: [
              if (Responsive.isMobile(context)) const MobTopBanner(),
              if (Responsive.isTablet(context)) const TabTopBanner(),
              if (Responsive.isDesktop(context)) const TopBanner(),

              // const TopBanner(),
              if (Responsive.isMobile(context)) const MobOffering(),
              if (Responsive.isTablet(context)) const Offering(),
              if (Responsive.isDesktop(context)) const Offering(),
              // const Offering(),
              heightSizedBox(80.0),
              if (Responsive.isMobile(context)) const MobConsult(),
              if (Responsive.isTablet(context)) const Consult(),
              if (Responsive.isDesktop(context)) const Consult(),
              // const Consult(),
              heightSizedBox(80.0),
              if (Responsive.isMobile(context)) const MobOurTeam(),
              if (Responsive.isTablet(context)) const OurTeam(),
              if (Responsive.isDesktop(context)) const OurTeam(),
              // const OurTeam(),
              if (Responsive.isMobile(context)) const MobAboutItems(),
              if (Responsive.isTablet(context)) const AboutItems(),
              if (Responsive.isDesktop(context)) const AboutItems(),
              // const MobAboutItems(),
              if (Responsive.isMobile(context)) const MobGallery(),
              if (Responsive.isTablet(context)) const Gallery(),
              if (Responsive.isDesktop(context)) const Gallery(),
              // const MobGallery(),
              if (Responsive.isMobile(context)) const MobContactUs(),
              if (Responsive.isTablet(context)) const ContactUs(),
              if (Responsive.isDesktop(context)) const ContactUs(),
              // MobContactUs(),
              heightSizedBox(50.0),
              if (Responsive.isMobile(context)) const MobBottomMenu(),
              if (Responsive.isTablet(context)) const BottomMenu(),
              if (Responsive.isDesktop(context)) const BottomMenu(),
              // BottomMenu()
            ],
          ),
        ),
      ),
    );
  }
}
