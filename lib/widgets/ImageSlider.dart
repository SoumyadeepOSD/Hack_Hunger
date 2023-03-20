import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      width: 450,
      height: 150,
      children: [
        Container(
          margin: EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Image.asset(
            "assets/images/slide1.jpeg",
            fit: BoxFit.fill,
            height: 50,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Image.asset(
            "assets/images/slide2.jpeg",
            fit: BoxFit.fill,
            height: 50,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Image.asset(
            "assets/images/slide3.jpeg",
            fit: BoxFit.fill,
            height: 50,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Image.asset(
            "assets/images/slide4.jpeg",
            fit: BoxFit.fill,
            height: 50,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Image.asset(
            "assets/images/slide5.jpeg",
            fit: BoxFit.fill,
            height: 50,
          ),
        ),
      ],
      autoPlayInterval: 3000,
      isLoop: true,
    );
  }
}
