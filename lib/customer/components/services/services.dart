import 'package:bm_tecno_lab/customer/components/services/comp.dart';
import 'package:flutter/material.dart';

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
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DividerHeading(
            heading: "Solar Power",
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
          Text(
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
          Image.asset("assets/images/11.jpg"),
          heightSizedBox(20.0),
          const Divider(),
          heightSizedBox(30.0),
          const MyWidget()
        ],
      ),
    );
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
