import 'package:flutter/material.dart';

class AppColor {
  static const backgroundColr = Colors.amber;
 
}



double height(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double width(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

SizedBox heightSizedBox(height) {
  return SizedBox(
    height: height,
  );
}

SizedBox widthSizedBox(width) {
  return SizedBox(
    width: width,
  );
}



// const textStyle1 = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
// const textStyle2 = TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500);

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> snackBar(
    BuildContext context, String message,
    {Color? color}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: color ?? Colors.green,
      content: Text(message),
    ),
  );
}


class SubmitBtn extends StatelessWidget {
  final String name;
  final Function()? onTap;
  final Color? backgrounColor;
  const SubmitBtn({
    super.key,
    required this.name,this.onTap,this.backgrounColor
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 5,
            shadowColor: Colors.black,
            backgroundColor:backgrounColor?? const Color(0xFF88d037),
            fixedSize: const Size(200, 60)),
        onPressed: onTap,
        child:  Text(
          name,
          style: const TextStyle(fontSize: 20, color: Colors.black),
        ));
  }
}