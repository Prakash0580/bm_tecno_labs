import 'package:flutter/material.dart';

import '../backend/data_store.dart';
import '../utils/common_style.dart';
import '../utils/field_val.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: null,
      width: width(context),
      constraints: const BoxConstraints(minWidth: 900),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          heightSizedBox(50.0),
          const Text(
            "Contact Us",
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          heightSizedBox(50.0),
          Padding(
            padding: const EdgeInsets.only(left: 200, right: 200),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ContactDetails(),
                const Spacer(),
                Expanded(child: ContactForm()),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ContactDetails extends StatelessWidget {
  const ContactDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ContectItems(
          icon: Icons.phone,
          title: "Phone:",
          text: "+91 - 9876543210",
        ),
        heightSizedBox(30.0),
        const ContectItems(
          icon: Icons.location_on,
          title: "Address:",
          text:
              "4801 Software Training Institute\nShop, No 1, Pulia, near Dhavas Pulia,\nJaipur",
        ),
        heightSizedBox(30.0),
        const ContectItems(
          icon: Icons.email,
          title: "Email:",
          text: "bmtecnolabs@gmail.com",
        ),
        // TxtField(
        //   headTxt: "Name",
        // )
      ],
    );
  }
}

class ContactForm extends StatelessWidget {
  ContactForm({super.key});

  TextEditingController nameCont = TextEditingController();
  TextEditingController emailCont = TextEditingController();
  TextEditingController mobileCont = TextEditingController();
  TextEditingController messegeCont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TxtField(
          hintText: "Name",
          validator: validateField,
          controller: nameCont,
        ),
        heightSizedBox(30.0),
        TxtField(
          hintText: "Email",
          validator: validateField,
          controller: emailCont,
        ),
        heightSizedBox(30.0),
        TxtField(
          hintText: "Mobile",
          validator: validateField,
          controller: mobileCont,
        ),
        heightSizedBox(30.0),
        TxtField(
          hintText: "Messege",
          maxLines: 5,
          validator: validateField,
          controller: messegeCont,

          // height: 100,
        ),
        heightSizedBox(30.0),
        SubmitBtn(
          name: "Submit",
          onTap: () {
           ContactUsResp().addContactUs(email: emailCont.text, msg: messegeCont.text, name: nameCont.text, mobile: mobileCont.text) ;
           
          },
        )
      ],
    );
  }
}

class ContectItems extends StatelessWidget {
  final double? size;
  final IconData icon;
  final String title, text;
  const ContectItems(
      {super.key,
      required this.icon,
      required this.title,
      required this.text,
      this.size});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: size ?? 40,
          color: const Color(0xFF88d037),
        ),
        heightSizedBox(20.0),
        Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
        ),
        Text(
          text,
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black54),
        ),
      ],
    );
  }
}

//

class MobContactUs extends StatelessWidget {
  const MobContactUs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: null,
      width: width(context),
      constraints: const BoxConstraints(minWidth: 900),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            heightSizedBox(50.0),
            const Text(
              "Contact Us",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            heightSizedBox(50.0),
            const ContactDetails(),
            heightSizedBox(50.0),
            ContactForm()

            // )
          ],
        ),
      ),
    );
  }
}
