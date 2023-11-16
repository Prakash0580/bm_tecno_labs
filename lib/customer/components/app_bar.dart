import 'package:flutter/material.dart';
import '../utils/common_style.dart';
import 'res_layout.dart';

class CusAppBar extends StatelessWidget implements PreferredSizeWidget {
  CusAppBar({
    super.key,
  });
  final AppBar appBar = AppBar();
  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      title: Row(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (Responsive.isMobile(context) || Responsive.isTablet(context))
            Builder(
              builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
            ),
          widthSizedBox(50.0),
          const Text(
            "BM TecnoLabs",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF88d037),
                fontSize: 25),
          ),
          // if (Responsive.isTablet(context)) TabAppBar(),
          if (Responsive.isDesktop(context)) const WebAppBar()
        ],
      ),
    );
  }
}

class WebAppBar extends StatelessWidget {
  const WebAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        widthSizedBox(60.0),
        CusBtn(
          text: 'Home',
          onTap: () {},
        ),
        widthSizedBox(40.0),
        CusBtn(
          text: 'Services',
          onTap: () {},
        ),
        widthSizedBox(40.0),
        CusBtn(
          text: 'Project',
          onTap: () {},
        ),
        widthSizedBox(40.0),
        CusBtn(
          text: 'Gallery',
          onTap: () {},
        ),
        widthSizedBox(40.0),
        CusBtn(
          text: 'Contect',
          onTap: () {},
        ),
      ],
    );
  }
}

class CusBtn extends StatelessWidget {
  final String text;
  final Function()? onTap;
  const CusBtn({
    super.key,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class TabAppBar extends StatelessWidget {
  const TabAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        widthSizedBox(60.0),
        CusBtn(
          text: 'Home',
          onTap: () {},
        ),
        widthSizedBox(40.0),
        CusBtn(
          text: 'Services',
          onTap: () {},
        ),
        widthSizedBox(40.0),
        CusBtn(
          text: 'Project',
          onTap: () {},
        ),
        widthSizedBox(40.0),
        CusBtn(
          text: 'Gallery',
          onTap: () {},
        ),
        widthSizedBox(40.0),
        CusBtn(
          text: 'Contect',
          onTap: () {},
        ),
      ],
    );
  }
}


