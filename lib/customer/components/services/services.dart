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
          const Center(
            child: Text(
              "Our company is an end-to-end, customer\noriented alternative energy company that\nis centered on the marketing, trading,\ntransportation, and distribution of solar panels in the India and around the world…",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
              ),
            ),
          ),
          heightSizedBox(15.0),
          const Text(
            "Firstly, we’re an environmentally friendly\nrenewable energy companyoffering a\nbroad portfolio of technologies o our clients\n globally!",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black87,
            ),
          ),
          heightSizedBox(15.0),
          const Text(
            "We’re the best solar energy & wind turbines\nprovider in the States!",
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
        const Center(
          child: Text(
            "Our company is an end-to-end, customer\noriented alternative energy company that\nis centered on the marketing, trading,\ntransportation, and distribution of solar panels in the India and around the world…",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black87,
            ),
          ),
        ),
        heightSizedBox(15.0),
        const Text(
          "Firstly, we’re an environmentally friendly\nrenewable energy companyoffering a\nbroad portfolio of technologies o our clients\n globally!",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black87,
          ),
        ),
        heightSizedBox(15.0),
        const Text(
          "We’re the best solar energy & wind turbines\nprovider in the States!",
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
