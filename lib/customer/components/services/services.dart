import 'package:bm_tecno_lab/customer/components/services/comp.dart';
import 'package:flutter/material.dart';

import '../../screens/home_screen.dart';
import '../../utils/common_style.dart';

class Offering extends StatelessWidget {
  const Offering({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 100),
      child: Column(
        children: [
          const Solar(),
          heightSizedBox(50.0),
          const AutoLPG(),
        ],
      ),
    );
  }
}

class MobOffering extends StatelessWidget {
  const MobOffering({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: null,
      width: width(context),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("What We Offer",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
            heightSizedBox(20.0),
            const Text(
              "BmTecnoLabs has been created to provide excellent testing and analytical services to the clients. We are fully committed to play our role of Quality Control and quality assessment and therefore our lab is equipped with the latest and most sophisticated testing equipments to meet the standards established by ILAC, ASTM, ISO, BIS & NABL.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: Colors.black87),
            ),
            heightSizedBox(20.0),
            const CusText(
              text: "Non-Destructive Testing ",
              src: "assets/images/sun.png",
              description:
                  "Material Testing that does not destroy the serviceability of the part or the system.​",
              // description:
              //     "BmTechnoLabs begins its scope of work with the design and engineering of the project, and provides END-TO-END Solutions tailored to individual requirements",
            ),
            heightSizedBox(30.0),
            const CusText(
              text: "Soil Testing​",
              src: "assets/images/truck.png",
              description:
                  "Soil testing to check various parameters like pH, Nitrogen, Potassium, etc. levels",
            ),
            heightSizedBox(30.0),
            const CusText(
              text: "Building Material Testing​",
              src: "assets/images/globe.png",
              description:
                  "Test for materials such as aggregates, concrete, masonry, steel, and asphalt.​",
            ),
            heightSizedBox(30.0),
            const CusText(
              text: "Chemical Testing​​",
              src: "assets/images/globe.png",
              description:
                  "Chemical testing to evaluate Quality, Purity, Traces, RoHS, Etc.",
            ),
            heightSizedBox(30.0),
            const CusText(
              text: "Water Testing​​",
              src: "assets/images/globe.png",
              description:
                  "Water testing is a process of evaluating and testing the quality of water.",
            ),
            heightSizedBox(30.0),
            const CusText(
              text: "Automotive Testing​",
              src: "assets/images/globe.png",
              description:
                  "Automotive parts testing for quality asurance and compliance",
            ),
            const Divider(),
            heightSizedBox(50.0),
          ],
        ),
      ),
    );
    // Padding(
    //   padding: const EdgeInsets.only(left: 20, right: 20),
    //   child: Column(
    //     // mainAxisAlignment: MainAxisAlignment.start,
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       const DividerHeading(
    //         heading: "What We Offer",
    //         leftWidth: 100,
    //         rightWidth: 100,
    //         centerWidth: 80,
    //       ),
    //       heightSizedBox(50.0),
    //       const Text(
    //         "We Offer Green Technologiest",
    //         style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    //       ),
    //       heightSizedBox(15.0),
    //       Text(
    //         "Our company is an end-to-end, customer oriented alternative energy company that is centered on the marketing, trading, transportation, and distribution of solar panels in the India and around the world…",
    //         style: TextStyle(
    //           fontSize: 18,
    //           color: Colors.black87,
    //         ),
    //       ),
    //       heightSizedBox(15.0),
    //       const Text(
    //         "Firstly, we’re an environmentally friendly renewable energy companyoffering a broad portfolio of technologies o our clients globally!",
    //         style: TextStyle(
    //           fontSize: 18,
    //           color: Colors.black87,
    //         ),
    //       ),
    //       heightSizedBox(15.0),
    //       const Text(
    //         "We’re the best solar energy & solar system provider in the States!",
    //         style: TextStyle(
    //           fontSize: 18,
    //           color: Colors.black87,
    //         ),
    //       ),
    //       heightSizedBox(40.0),
    //       Image.asset("assets/images/11.jpg"),
    //       heightSizedBox(20.0),
    //       const Divider(),
    //       heightSizedBox(30.0),
    //       const MyWidget()
    //     ],
    //   ),
    // );
    //
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const DividerHeading(
          heading: "Auto LPG",
          leftWidth: 100,
          rightWidth: 100,
          centerWidth: 80,
        ),
        heightSizedBox(50.0),
        const Text(
          "We Offer Green Technologiest",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        heightSizedBox(15.0),
        const Text(
          "Our company is an end-to-end, customer oriented alternative energy company that is centered on the marketing, trading, transportation, and distribution of solar panels in the India and around the world…",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black87,
          ),
        ),
        heightSizedBox(15.0),
        const Text(
          "Firstly, we’re an environmentally friendly renewable energy companyoffering a broad portfolio of technologies o our clients globally!",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black87,
          ),
        ),
        heightSizedBox(15.0),
        const Text(
          "We’re the best solar energy & solar system provider in the States!",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black87,
          ),
        ),
        heightSizedBox(40.0),
        Image.asset("assets/images/station.png")
      ],
    );
  }
}
