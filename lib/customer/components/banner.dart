
import 'package:flutter/material.dart';

import '../utils/common_style.dart';

class TopBanner extends StatelessWidget {
  const TopBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: width(context),
          height: 700,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/images/4.jpg'), // Replace with your image path
              fit: BoxFit.cover, // You can change this to fit your needs
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 100, left: 130),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "We stand for ecology and",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                heightSizedBox(20.0),
                const Text(
                  "Soloar Energy",
                  style: TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                heightSizedBox(50.0),
                const Text(
                  "Select Solar Panels and make your contribution to ecology\nand life on the Earth! This solution will positively affect your life!",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )
              ],
            ),
          ),
        ),
        // Container(
        //   child: Image.asset(
        //     "assets/images/2.jpg",
        //     width: width(context),
        //     height: 700,
        //     fit: BoxFit.cover,
        //   ),
        // ),
        heightSizedBox(100.0),
      ],
    );
  }
}

class TabTopBanner extends StatelessWidget {
  const TabTopBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 1100,
          height: 700,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/images/4.jpg'), // Replace with your image path
              fit: BoxFit.cover, // You can change this to fit your needs
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 100, left: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "We stand for ecology and",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                heightSizedBox(20.0),
                const Text(
                  "Soloar Energy",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                heightSizedBox(50.0),
                const Text(
                  "Select Solar Panels and make your contribution\nto ecologynd life on the Earth!This solution will\npositively affect your life!",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )
              ],
            ),
          ),
        ),
        // Container(
        //   child: Image.asset(
        //     "assets/images/2.jpg",
        //     width: width(context),
        //     height: 700,
        //     fit: BoxFit.cover,
        //   ),
        // ),
        heightSizedBox(100.0),
      ],
    );
  }
}

class MobTopBanner extends StatelessWidget {
  const MobTopBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            width: width(context),
            height: 400,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/4.jpg'), // Replace with your image path
                fit: BoxFit.cover, // You can change this to fit your needs
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Padding(padding: EdgeInsets.only(left: 20)),
                  heightSizedBox(50.0),
                  const Text(
                    "We stand for ecology and",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  heightSizedBox(20.0),
                  const Text(
                    "Soloar Energy",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  heightSizedBox(30.0),
                  const Text(
                    "Select Solar Panels and make your\ncontributionto ecologynd life on the\nEarth! This solution will positively\naffect your life!",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          // Container(
          //   child: Image.asset(
          //     "assets/images/2.jpg",
          //     width: width(context),
          //     height: 700,
          //     fit: BoxFit.cover,
          //   ),
          // ),
          heightSizedBox(50.0),
        ],
      ),
    );
  }
}
