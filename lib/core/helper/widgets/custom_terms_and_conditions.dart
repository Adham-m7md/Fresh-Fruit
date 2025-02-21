import 'package:flutter/material.dart';
import 'package:fresh_fruit/core/helper/widgets/custom_check_icon.dart';
import 'package:fresh_fruit/core/utils/app_colors.dart';
import 'package:fresh_fruit/core/utils/app_text_styles.dart';

class CustomTermsAndConditions extends StatefulWidget {
  const CustomTermsAndConditions({super.key});

  @override
  State<CustomTermsAndConditions> createState() =>
      _CustomTermsAndConditionsState();
}

class _CustomTermsAndConditionsState extends State<CustomTermsAndConditions> {
  bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckIcon(
          onChecked: (bool value) {
            isTermsAccepted = value;
            setState(() {});
          },
          isChecked: isTermsAccepted,
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'من خلال إنشاء حساب ، فإنك توافق على',
                  style: TextStyles.semiBold13
                      .copyWith(color: AppColors.kGrayColor),
                ),
                const TextSpan(
                  text: ' ',
                  style: TextStyles.semiBold13,
                ),
                TextSpan(
                  text: 'الشروط و الأحكام الخاصة بنا',
                  style: TextStyles.semiBold13
                      .copyWith(color: AppColors.lightPrimaryColor),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
