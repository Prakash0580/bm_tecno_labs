import 'package:flutter/material.dart';

import '../utils/common_style.dart';

class Gallery extends StatelessWidget {
  const Gallery({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 900,
      width: width(context),
      color: const Color(0xFFfaf7f7),
      child: Column(
        children: [
          heightSizedBox(100.0),
          const Text(
            "Our Gallery",
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          heightSizedBox(50.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const GalleryCont(
                src: "assets/images/gallery1.jpg",
              ),
              widthSizedBox(30.0),
              const GalleryCont(
                src: "assets/images/gallery2.jpg",
                width: 430,
                height: 250,
              ),
            ],
          ),
          heightSizedBox(30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const GalleryCont(
                src: "assets/images/gallery3.jpg",
                width: 430,
                height: 250,
              ),
              widthSizedBox(30.0),
              const GalleryCont(
                src: "assets/images/gallery4.jpg",
              ),
            ],
          )
        ],
      ),
    );
  }
}

class GalleryCont extends StatelessWidget {
  final double? height, width;
  final String src;
  const GalleryCont({
    super.key,
    this.height,
    this.width,
    required this.src,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 630,
      height: height ?? 250,
      constraints: const BoxConstraints(minWidth: 260),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(src), // Replace with your image path
          fit: BoxFit.cover, // You can change this to fit your needs
        ),
      ),
    );
  }
}

class MobGallery extends StatelessWidget {
  const MobGallery({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: null,
      width: width(context),
      color: const Color(0xFFfaf7f7),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            heightSizedBox(50.0),
            const Text(
              "Our Gallery",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            heightSizedBox(50.0),
            const GalleryCont(
              src: "assets/images/gallery1.jpg",
              height: 150,
            ),
            heightSizedBox(30.0),
            const GalleryCont(
              src: "assets/images/gallery2.jpg",
              height: 150,
            ),
            heightSizedBox(30.0),
            const GalleryCont(
              src: "assets/images/gallery3.jpg",
              height: 150,
            ),
            heightSizedBox(30.0),
            const GalleryCont(
              src: "assets/images/gallery4.jpg",
              height: 150,
            ),
            heightSizedBox(30.0),
          ],
        ),
      ),
    );
  }
}
