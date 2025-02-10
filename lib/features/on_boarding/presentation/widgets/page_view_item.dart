import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fresh_fruit/core/utils/svg_images.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.image,
      required this.backGroundImage,
      required this.description,
      required this.titel});
  final String image, backGroundImage;
  final String description;
  final Widget titel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.5,
            child: Stack(
              children: [
                Positioned.fill(
                  child: SvgPicture.asset(
                    backGroundImage,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  bottom: -80,
                  right: 0,
                  left: 0,
                  child: Image.asset(image),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 36, top: 16),
                  child: Text(
                    'تخط',
                    style: TextStyle(color: Color(0xff949D9E)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
