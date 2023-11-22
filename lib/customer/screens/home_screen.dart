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
              if (Responsive.isDesktop(context)) const TopBanner(),
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
          const Welcome(),
          const Text(
            "What We Offer",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          heightSizedBox(20.0),
          const Text(
            "Stellar Test House has been created to provide excellent testing and analytical services to the clients. We are fully committed to play our role of Quality Control and\nquality assessment and therefore our lab is equipped with the latest and most sophisticated testing equipments to meet the standards established by ILAC, ASTM, ISO,\nBIS & NABL.",
            style: TextStyle(fontSize: 20, color: Colors.black87),
          ),
          heightSizedBox(20.0),
          const Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Expanded(
              child: CusText(
                  text: "Non-Destructive Testing (NDT)",
                  description:
                      "Material Testing that does not destroy the\nserviceability of the part or the system.​"),
            ),
            Expanded(
              child: CusText(
                  text: "Building Material Testing​",
                  description:
                      "Test for materials such as aggregates, concrete,\nmasonry, steel, and asphalt.​"),
            ),
            Expanded(
              child: CusText(
                text: "Water Testing​",
                description:
                    "Water testing is a process of evaluating and\ntesting the quality of water.",
              ),
            ),
          ]),
          heightSizedBox(30.0),
          const Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Expanded(
              child: CusText(
                  text: "Soil Testing​​",
                  description:
                      "Soil testing to check various parameters like pH,\nNitrogen, Potassium, etc. levels.​"),
            ),
            Expanded(
              child: CusText(
                  text: "Chemical Testing​",
                  description:
                      "Chemical testing to evaluate Quality, Purity, Traces,\nRoHS, Etc.​​"),
            ),
            Expanded(
              child: CusText(
                text: "Automotive Testing​",
                description:
                    "Automotive parts testing for quality assurance and\ncompliance.",
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
    return Container(
      width: width(context),
      height: null,
      color: Colors.grey.shade100,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Welcome To BmTecnoLabs",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            heightSizedBox(10.0),
            const Text(
              "cutting edge material testing solutions",
              style: TextStyle(
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            ),
            heightSizedBox(20.0),
            const Text(
              "Bm Tecno Labs is committed to provide Testing Solutions with cutting edge technology and marvellous analysis and observations to the clients with an objective to help them take informed decisions so as to re-inforce trust, increase productivity and minimize cost. ",
              style: TextStyle(fontSize: 20, color: Colors.black87),
              textAlign: TextAlign.center,
            ),
            heightSizedBox(10.0),
            const Text(
              "We view ourselves as partners with our clients, our employees, our community and our environment.",
              style: TextStyle(fontSize: 20, color: Colors.black87),
              textAlign: TextAlign.center,
            ),
            heightSizedBox(20.0),
            Container(
              height: 1,
              width: 200,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

class Welcome extends StatelessWidget {
  const Welcome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Welcome to BmTecnoLab",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  heightSizedBox(5.0),
                  const Text(
                    "Cutting edge material testing solutions",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  heightSizedBox(15.0),
                  const Text(
                    "BmTecnoLabs Test House is committed to provide Testing Solutions with\ncutting edge technology and marvellous analysis and observations to\nthe clients with an objective to help them take informed decisions\nso as to re-inforce trust, increase productivity and minimize cost. ",
                    style: TextStyle(
                        fontSize: 20,
                        // fontWeight: FontWeight.bold,
                        color: Colors.black87),
                    textAlign: TextAlign.start,
                  ),
                  heightSizedBox(15.0),
                  const Text(
                    "We view ourselves as partners with our clients, our employees, our\ncommunity and our environment.",
                    style: TextStyle(
                        fontSize: 20,
                        // fontWeight: FontWeight.bold,
                        color: Colors.black87),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            // widthSizedBox(30.0),
            Expanded(child: Image.asset("assets/images/banner1.jpg"))
          ],
        ),
      ],
    );
  }
}

class CusText extends StatelessWidget {
  final String text, description;
  const CusText({
    super.key,
    required this.text,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          radius: 28,
          backgroundColor: Color(0xFF88d037),
          child: CircleAvatar(
            radius: 17,
            backgroundColor: Colors.white,
            child: Center(
              child: Icon(
                Icons.done_outlined,
                color: Color(0xFF88d037),
                // fill: 2.0,

                // size: ,
              ),
            ),
          ),
        ),
        heightSizedBox(20.0),
        Text(
          text,
          textAlign: TextAlign.center,
          // overflow: TextOverflow.clip,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        heightSizedBox(20.0),
        Text(
          description,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}
