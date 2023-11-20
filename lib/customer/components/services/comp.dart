import 'package:flutter/material.dart';

import '../../utils/common_style.dart';

class Solar extends StatelessWidget {
  const Solar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        heightSizedBox(50.0),
        const DividerHeading(
          heading: "Solar Power",
          leftWidth: 100,
          rightWidth: 100,
          centerWidth: 80,
        ),
        heightSizedBox(50.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "We Offer Green Technologies",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  heightSizedBox(15.0),
                  const Text(
                    "Our company is an end-to-end, customer oriented alternative energy\ncompany that is centered on the marketing, trading, transportation,\nand distribution of solar panels in the India and around the world…",
                    style: TextStyle(
                        fontSize: 20,
                        // fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  heightSizedBox(15.0),
                  const Text(
                    "Firstly, we’re an environmentally friendly renewable energy company\noffering a broad portfolio of technologies to our clients globally!",
                    style: TextStyle(
                        fontSize: 20,
                        // fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  heightSizedBox(15.0),
                  const Text(
                    "We’re the best solar energy & solar system provider in the States!",
                    style: TextStyle(
                        fontSize: 20,
                        // fontWeight: FontWeight.w600,
                        color: Colors.black87),
                  ),
                ],
              ),
            ),
            // widthSizedBox(30.0),
            Expanded(child: Image.asset("assets/images/11.jpg"))
          ],
        ),
      ],
    );
  }
}

class AutoLPG extends StatelessWidget {
  const AutoLPG({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // heightSizedBox(50.0),
        const DividerHeading(
          heading: "Auto LPG",
          leftWidth: 100,
          rightWidth: 100,
          centerWidth: 80,
        ),
        heightSizedBox(50.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
                flex: 2,
                child: Image.asset(
                  "assets/images/station.png",
                )),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "We Offer Green Technologies",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  heightSizedBox(15.0),
                  const Text(
                    "Our company is an end-to-end, customer oriented alternative energy\ncompany that is centered on the marketing, trading, transportation,\nand distribution of solar panels in the India and around the world…",
                    style: TextStyle(
                        fontSize: 20,
                        // fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  heightSizedBox(15.0),
                  const Text(
                    "Firstly, we’re an environmentally friendly renewable energy company\noffering a broad portfolio of technologies to our clients globally!",
                    style: TextStyle(
                        fontSize: 20,
                        // fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  heightSizedBox(15.0),
                  const Text(
                    "We’re the best solar energy & solar system provider in the States!",
                    style: TextStyle(
                        fontSize: 20,
                        // fontWeight: FontWeight.w600,
                        color: Colors.black87),
                  ),
                ],
              ),
            ),
            // widthSizedBox(30.0),
          ],
        ),
      ],
    );
  }
}

class DividerHeading extends StatelessWidget {
  final String heading;
  final double leftWidth, centerWidth, rightWidth;
  const DividerHeading({
    super.key,
    required this.heading,
    required this.leftWidth,
    required this.centerWidth,
    required this.rightWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            heading,
            style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 1,
              width: leftWidth,
              color: Colors.black,
            ),
            Container(
              height: 1,
              width: centerWidth,
              color: Color(0xFF88d037),
            ),
            Container(
              height: 1,
              width: rightWidth,
              color: Colors.black,
            ),
          ],
        ),
      ],
    );
  }
}
