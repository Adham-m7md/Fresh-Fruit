import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fresh_fruit/core/utils/app_colors.dart';
import 'package:fresh_fruit/core/utils/app_directions.dart';
import 'package:fresh_fruit/core/utils/app_text_styles.dart';

class CustomSocialLoginButton extends StatelessWidget {
  const CustomSocialLoginButton(
      {super.key,
      required this.titel,
      required this.assetName,
      required this.onTap});
  final String titel, assetName;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight * 0.08,
      child: TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: const BorderSide(
                color: AppColors.klightGrayColor,
                width: 1,
              ),
            ),
          ),
          onPressed: onTap,
          child: ListTile(
            title: Text(
              titel,
              style: TextStyles.semiBold16.copyWith(
                color: AppColors.kBlackColor,
              ),
              textAlign: TextAlign.center,
            ),
            leading: SvgPicture.asset(assetName),
          )),
    );
  }
}
