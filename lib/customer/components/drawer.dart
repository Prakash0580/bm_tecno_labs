
import 'package:flutter/material.dart';
import '../utils/common_style.dart';

class MobDrawer extends StatelessWidget {
  var drawerstyle = const TextStyle(
      fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.black54);
  MobDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
              width: width(context),
              height: 150,
              color: const Color(0xFF88d037),
              child: const Center(
                child: Text(
                  "BM TecnoLabs",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              )),
          heightSizedBox(30.0),
          // DrawerHeader(child: child),
          ListTile(
            title: Text(
              "Home",
              style: drawerstyle,
            ),
            leading: const Icon(Icons.home),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              "Services",
              style: drawerstyle,
            ),
            leading: const Icon(Icons.design_services),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              "Project",
              style: drawerstyle,
            ),
            leading: const Icon(Icons.production_quantity_limits),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              "Gallery",
              style: drawerstyle,
            ),
            leading: const Icon(Icons.browse_gallery),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              "Contact",
              style: drawerstyle,
            ),
            leading: const Icon(Icons.contact_page),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
