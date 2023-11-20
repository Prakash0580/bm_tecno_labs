import 'package:flutter/material.dart';
import '../components/about_items.dart';
import '../components/app_bar.dart';
import '../components/banner.dart';
import '../components/bottom.menu.dart';
import '../components/consult.dart';
import '../components/contact_us.dart';
import '../components/drawer.dart';
import '../components/gallery.dart';
import '../components/services/services.dart';
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
               // const TopBanner(),
              if (Responsive.isMobile(context)) const MobTopBanner(),
              if (Responsive.isTablet(context)) const TabTopBanner(),
                // ServiceRow(),   
              if (Responsive.isMobile(context)) const MobServiceRow(),
              if (Responsive.isTablet(context)) const ServiceRow(),
              if (Responsive.isDesktop(context)) const ServiceRow(),
 
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

class ServiceRow extends StatelessWidget {
  const ServiceRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: null,
      width: width(context),
      color: const Color(0xFFfaf7f7),
      child: Column(
        children: [
          heightSizedBox(50.0),
          const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: CusText(
                    text: "Solar Power",
                    src: "assets/images/sun.png",
                    description:
                        "BmTechnoLabs begins its scope of work with the design and\nengineering of the project, and provides END-TO-END\n          Solutions tailored to individual requirements",
                  ),
                ),
                Expanded(
                  child: CusText(
                    text: "LPG",
                    src: "assets/images/truck.png",
                    description:
                        "BmTechnoLabs are the authorized by Government\nof India (CCOE) for installing advanced Auto LPG\n                                  dispensing stations.",
                  ),
                ),
                Expanded(
                  child: CusText(
                    text: "CNG",
                    src: "assets/images/globe.png",
                    description:
                        "BmTechnoLabs can provide complete services for\nsetting up a CNG Auto Station in any part of India\n                 other South Asian countries.",
                  ),
                ),
              ]),
        ],
      ),
    );
  }
}

class MobServiceRow extends StatelessWidget {
  const MobServiceRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CusText(
          text: "Solar Power",
          src: "assets/images/sun.png",
          description:
              "BmTechnoLabs begins its scope of work with the design and\nengineering of the project, and provides END-TO-END\n          Solutions tailored to individual requirements",
        ),
        heightSizedBox(30.0),
        const CusText(
          text: "LPG",
          src: "assets/images/truck.png",
          description:
              "BmTechnoLabs are the authorized by Government\nof India (CCOE) for installing advanced Auto LPG\n                                  dispensing stations.",
        ),
        heightSizedBox(30.0),
        const CusText(
          text: "CNG",
          src: "assets/images/globe.png",
          description:
              "BmTechnoLabs can provide complete services for\nsetting up a CNG Auto Station in any part of India\n                 other South Asian countries.",
        ),
        heightSizedBox(30.0),
      ],
    );
  }
}

class CusText extends StatelessWidget {
  final String text, description, src;
  const CusText(
      {super.key,
      required this.text,
      required this.description,
      required this.src});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // heightSizedBox(50.0),
        Image.asset(
          src,
          height: 60,
          width: 60,
        ),
        heightSizedBox(20.0),
        Text(
          text,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        heightSizedBox(20.0),
        Text(
          description,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}
