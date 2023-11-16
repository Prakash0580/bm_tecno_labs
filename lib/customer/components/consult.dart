import 'package:flutter/material.dart';
import '../utils/common_style.dart';

class Consult extends StatelessWidget {
  const Consult({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(context),
      height: 250,
      color: const Color(0xFF88d037),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              heightSizedBox(20.0),
              const Text(
                "Do You Need a Consultation?",
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const Text(
                "Solar can give you lots of advantages, from which you will surely benefit",
                style: TextStyle(
                    fontSize: 20,
                    // fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ],
          ),
          widthSizedBox(100.0),
          SubmitBtn(
            name: "Call2Action",
            backgrounColor: Colors.white,
            onTap: () {
              // showDialog(
              //     context: context,
              //     builder: (BuildContext context) {
              //       return AlertDialog(
              //         content: Container(
              //           width: 800,
              //           height: 500,
              //           color: Colors.green,
              //           child: Column(
              //             children: [],
              //           ),
              //         ),
              //       );
              //     });
            },
          )
        ],
      ),
    );
  }
}

class MobConsult extends StatelessWidget {
  const MobConsult({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(context),
      height: 300,
      color: const Color(0xFF88d037),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            heightSizedBox(10.0),
            const Text(
              "Do You Need a Consultation?",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            heightSizedBox(10.0),
            const Text(
              "Solar can give you lots of advantages, from which you will surely benefit",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            heightSizedBox(30.0),
            SubmitBtn(
              backgrounColor: Colors.white,
              name: "Call2Action",
              onTap: () {},
            )
          ],
        ),
      ),
      // // widthSizedBox(100.0),
    );
  }
}
