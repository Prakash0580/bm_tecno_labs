import 'package:flutter/material.dart';

import '../utils/common_style.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(context),
      height: 300,
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.only(left: 100, top: 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "BM Tecno Labs",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Column(
                  children: [
                    const Text(
                      "Copyright",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    heightSizedBox(15.0),
                    const Text(
                      "@ Bm Tecno Labs All right riserved",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MobBottomMenu extends StatelessWidget {
  const MobBottomMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(context),
      height: null,
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 50),
        child: Column(
          children: [
            const Text(
              "BM Tecno Labs",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            heightSizedBox(30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Copyright",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const Text(
                  "@ Bm Tecno Labs 2023 All right reserved.",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                heightSizedBox(50.0),
              ],
            ),
            // heightSizedBox(15.0),
            // Text(
            //   "@ Bm Tecno Labs All right riserved",
            //   style: TextStyle(
            //       fontSize: 5,
            //       fontWeight: FontWeight.w500,
            //       color: Colors.white),
            // ),
          ],
        ),
      ),
    );
  }
}
