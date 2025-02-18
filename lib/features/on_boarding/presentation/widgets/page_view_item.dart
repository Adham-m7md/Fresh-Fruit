import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fresh_fruit/core/constants.dart';
import 'package:fresh_fruit/core/services/shared_preferences_singeltone.dart';
import 'package:fresh_fruit/core/utils/app_directions.dart';
import 'package:fresh_fruit/core/utils/app_text_styles.dart';
import 'package:fresh_fruit/features/Auth/presintation/view/login/login_view.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.image,
      required this.backGroundImage,
      required this.description,
      required this.titel,
      required this.isVisible});
  final String image, backGroundImage;
  final String description;
  final Widget titel;
  final bool isVisible;

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
                  bottom: -65,
                  right: 0,
                  left: 0,
                  child: Image.asset(image),
                ),
                Visibility(
                  visible: isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 36, top: 16),
                    child: GestureDetector(
                      onTap: () {
                        Prefs.setBool(kIsOnBooardingViewSeen, true);
                        Navigator.of(context)
                            .pushReplacementNamed(LogInView.id);
                      },
                      child: Text('تخط',
                          style: TextStyles.regular16
                              .copyWith(color: const Color(0xff949D9E))),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: context.screenHeight * 0.08,
          ),
          titel,
          SizedBox(
            height: context.screenHeight * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(description,
                textAlign: TextAlign.center, style: TextStyles.semiBold16),
          ),
        ],
      ),
    );
  }
}
