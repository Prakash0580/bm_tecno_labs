import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
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
              openPhoneDialer("9876543210");
            },
          )
        ],
      ),
    );
  }
}

void openPhoneDialer(String phoneNumber) async {
  // const phoneNumber = '9782209395'; // Replace with the actual phone number
  final Uri phoneDialerUri = Uri(scheme: 'tel', path: phoneNumber);

  if (await canLaunchUrl(phoneDialerUri)) {
    await launchUrl(phoneDialerUri);
  } else {
    throw 'Could not launch $phoneDialerUri';
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
              onTap: () {
                openPhoneDialer("9876543210");
              },
            )
          ],
        ),
      ),
    );
  }
}
