import 'package:flutter/material.dart';

import '../utils/common_style.dart';

class AboutItems extends StatelessWidget {
  const AboutItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(context),
      height: 400,
      color: const Color(0xFF2b435b),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TotalItems(
            quantity: '1535',
            service: "Solar Installations",
          ),
          // Spacer(),
          TotalItems(
            quantity: '40',
            service: "Team Members",
          ),
          // widthSizedBox(100.0),
          TotalItems(
            quantity: '22',
            service: "Solar Models",
          ),
          // widthSizedBox(100.0),
          TotalItems(
            quantity: '10',
            service: "Years of Experience",
          ),
          // widthSizedBox(30.0)
        ],
      ),
    );
  }
}

class TotalItems extends StatelessWidget {
  final String quantity, service;
  const TotalItems({
    super.key,
    required this.quantity,
    required this.service,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // heightSizedBox(30.0),
        Text(
          quantity,
          style: const TextStyle(
              fontSize: 50,
              color: Color(0xFF88d037),
              fontWeight: FontWeight.bold),
        ),
        heightSizedBox(20.0),
        Text(
          service,
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        heightSizedBox(30.0),
        Container(
          width: 100,
          height: 1,
          color: const Color(0xFF88d037),
        )
      ],
    );
  }
}

class MobAboutItems extends StatelessWidget {
  const MobAboutItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(context),
      height: null,
      color: const Color(0xFF2b435b),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          heightSizedBox(50.0),
          const TotalItems(
            quantity: '1535',
            service: "Solar Installations",
          ),
          heightSizedBox(20.0),
          // Spacer(),
          const TotalItems(
            quantity: '40',
            service: "Team Members",
          ),
          heightSizedBox(20.0),
          const TotalItems(
            quantity: '22',
            service: "Solar Models",
          ),
          heightSizedBox(20.0),
          const TotalItems(
            quantity: '10',
            service: "Years of Experience",
          ),
          heightSizedBox(50.0),
        ],
      ),
    );
  }
}
