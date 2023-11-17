import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../backend/data_store.dart';
import '../backend/debounce.dart';
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

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  TextEditingController nameCont = TextEditingController();

  TextEditingController emailCont = TextEditingController();

  TextEditingController mobileCont = TextEditingController();

  TextEditingController messegeCont = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final debounce = Debouncer(milliseconds: 500);

  @override
  void dispose() {
    nameCont.clear();
    emailCont.clear();
    messegeCont.clear();
    mobileCont.clear();
    debounce.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          TxtField(
            hintText: "Name",
            // validator: validateField,
            controller: nameCont,
            maxLength: 25,
            maxLines: 1,
            maxLengthEnforcement: MaxLengthEnforcement.enforced,
            inputFormatters: [
              LengthLimitingTextInputFormatter(25),
              FilteringTextInputFormatter.deny(
                  RegExp(r'\s\s+')), // Deny extra spaces
              FilteringTextInputFormatter.deny('\n'), // Deny extra lines
            ],
          ),
          heightSizedBox(30.0),
          TxtField(
            hintText: "Email",
            validator: validateEmail,
            controller: emailCont,
            maxLines: 1,
            maxLength: 40,
            maxLengthEnforcement: MaxLengthEnforcement.enforced,
            inputFormatters: [
              LengthLimitingTextInputFormatter(40),
              FilteringTextInputFormatter.deny(
                  RegExp(r'\s\s+')), // Deny extra spaces
              FilteringTextInputFormatter.deny('\n'), // Deny extra lines
            ],
          ),
          heightSizedBox(30.0),
          TxtField(
            hintText: "Mobile",
            validator: validateMobile,
            controller: mobileCont,
            maxLength: 10,
            maxLines: 1,
            maxLengthEnforcement: MaxLengthEnforcement.enforced,
            inputFormatters: [
              LengthLimitingTextInputFormatter(10),
                FilteringTextInputFormatter.deny(
                  RegExp(r'\s+')), 
              // FilteringTextInputFormatter.deny(
              //     RegExp(r'\s\s+')), // Deny extra spaces
              FilteringTextInputFormatter.deny('\n'), // Deny extra lines
            ],
          ),
          heightSizedBox(30.0),
          TxtField(
            hintText: "Messege",
            validator: validateField,
            controller: messegeCont,
            maxLines: 5,
            maxLengthEnforcement: MaxLengthEnforcement.enforced,
            inputFormatters: [
              LengthLimitingTextInputFormatter(500),
              FilteringTextInputFormatter.deny(
                  RegExp(r'\s\s+')), // Deny extra spaces
              FilteringTextInputFormatter.deny('\n'), // Deny extra lines
            ],
          ),
          heightSizedBox(30.0),
          SubmitBtn(
            name: "Submit",
            onTap: () {
              var isvalid = formKey.currentState!.validate();

              if (isvalid == true) {
                formKey.currentState!.save();
                debounce.run(() {
                  log("msg ${messegeCont.text.length}");
                  // ContactUsResp().addContactUs(
                  //     email: emailCont.text,
                  //     msg: messegeCont.text,
                  //     name: nameCont.text,
                  //     mobile: mobileCont.text);

                  snackBar(context, 'Message Sent Successfully 😃');
                });
              } else {
                snackBar(context, 'Field is Required');
              }
            },
          )
        ],
      ),
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
