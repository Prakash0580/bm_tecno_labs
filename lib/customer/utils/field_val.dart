import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// //  Selected Date and Time
Future selectDate(BuildContext context) async {
  final DateTime? pickedDate = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(1950),
    lastDate: DateTime.now(),
  );

  if (pickedDate != null) {
    final String formattedDate =
        "${pickedDate.day.toString().padLeft(2, '0')}-${pickedDate.month.toString().padLeft(2, '0')}-${pickedDate.year}";
    return formattedDate;
  }
}

Future selectTime(BuildContext context) async {
  final TimeOfDay? pickedTime = await showTimePicker(
    context: context,
    initialTime: TimeOfDay.now(),
  );

  if (pickedTime != null) {
    return pickedTime.format(context);
  }
}

class TxtField extends StatelessWidget {
  final String? headTxt, labelText, hintText, errorText;
  final TextEditingController? controller;
  final int? maxLines, minLines, maxLength;
  final dynamic onTap;
  final double? cursorHeight, width, height;

  final Function? validator;
  final BoxDecoration? decoration;
  final Function(String?)? onSaved, onChanged;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? suffixIcon, prefixIcon;
  final TextAlign? textAlign;
  final EdgeInsets? contentPadding;

  final bool? readOnly, filled, border;
  final Color? fillColor;
  final TextStyle? style;

  const TxtField(
      {Key? key,
      this.headTxt,
      this.cursorHeight,
      this.contentPadding,
      this.textAlign,
      this.decoration,
      this.controller,
      this.labelText,
      this.errorText,
      this.inputFormatters,
      this.keyboardType,
      this.maxLength,
      this.minLines,
      this.maxLines,
      this.onSaved,
      this.onChanged,
      this.readOnly,
      this.onTap,
      this.suffixIcon,
      this.prefixIcon,
      this.hintText,
      this.border = true,
      this.filled,
      this.fillColor,
      this.validator,
      this.height,
      this.width,
      this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      
      child: TextFormField(
          onTap: onTap,
          style: style ??
              const TextStyle(
                  color: Colors.black,
                  fontSize: 14.5,
                  fontWeight: FontWeight.w600),
          textAlign: textAlign ?? TextAlign.start,
          onChanged: onChanged,
          cursorHeight: cursorHeight ?? 20.0,
          inputFormatters: inputFormatters,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          maxLines: maxLines,
          cursorColor: Colors.black38,
          cursorWidth: 1,
          minLines: minLines,
          maxLength: maxLength,
          controller: controller,
          onSaved: onSaved,
          keyboardType: keyboardType,
          validator: validator != null ? (value) => validator!(value) : null,
          readOnly: readOnly ?? false,
          scrollPadding: EdgeInsets.zero,
          decoration: InputDecoration(
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF88d037), width: 0.5),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black45, width: 0.1),
              ),
              fillColor: const Color(0xFFfaf7f7),
              filled: filled ?? true,
              errorStyle: const TextStyle(color: Colors.red),
              errorText: errorText,
              counter: const Offstage(),
              labelStyle: const TextStyle(
                  fontSize: 15,
                  // fontWeight: FontWeight.bold,
                  color: Colors.black),
              labelText: labelText,
              border: border == true ? const OutlineInputBorder() : null,
              hintText: hintText,
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              contentPadding: contentPadding)),
    );
  }
}

// !Check Box List
// ignore: must_be_immutable
class CheckBoxListComp extends StatelessWidget {
  List? prodList, busList;
  final String? title;
  List prod = [];
  CheckBoxListComp(
      {super.key, this.title, required this.prodList, this.busList});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$title',
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        GridView.builder(
            physics: const ScrollPhysics(),
            padding: const EdgeInsets.all(1.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 6.5,
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 10.0,
            ),
            shrinkWrap: true,
            itemCount: prodList!.length,
            itemBuilder: ((context, i) {
              bool? selectedVal = false;
              return StatefulBuilder(builder: (context, setState) {
                return Row(
                  children: [
                    Checkbox(
                        activeColor: Colors.blue,
                        checkColor: Colors.white,
                        value: selectedVal == true ? true : false,
                        onChanged: (val) {
                          setState(() {
                            if (val == true) {
                              selectedVal = val;
                              busList!.add(prodList![i]['name']);
                            } else {
                              selectedVal = val;
                              busList!.remove(prodList![i]['name']);
                            }
                          });
                        }),
                    Text(
                      "${prodList![i]['name']}",
                      style: const TextStyle(fontSize: 14),
                    ),
                    const SizedBox(height: 0.0)
                  ],
                );
              });
            })),
      ],
    );
  }
}

// ! Two Field in Onw Row
class TwoField extends StatelessWidget {
  const TwoField(
    this.child,
    this.child2, {
    super.key,
  });
  final Widget child, child2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: child),
        const SizedBox(
          width: 2.5,
        ),
        Expanded(child: child2),
      ],
    );
  }
}

// ! Validation For  TextFormField

validateField(String value) {
  if (value.isEmpty) {
    return 'Field is Required.';
  } else {
    return null;
  }
}

validateMobile(String value) {
  if (value.isEmpty) {
    return 'Mobile Number is Required.';
  } else if (value.length < 10) {
    return 'Mobile Number required at least 10 numbers';
  } else if (value.length > 11) {
    return 'Mobile Number required 10 numbers';
  } else {
    return null;
  }
}

validateOTP(String value) {
  if (value.isEmpty) {
    return 'OTP is Required.';
  } else if (value.length < 4) {
    return 'OTP required at least 4 numbers';
  } else if (value.length > 4) {
    return 'OTP required at most 4 numbers';
  } else {
    return null;
  }
}

validateEmail(String value) {
  bool validEmail = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(value);
  if (value.isEmpty) {
    return 'Email is Required.';
  } else if (validEmail == false) {
    // return null;
    return 'Invalid email address';
  } else {
    return null;
    // return 'Invalid email address';
  }
}
