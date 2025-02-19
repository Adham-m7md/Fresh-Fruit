import 'package:flutter/material.dart';
import 'package:fresh_fruit/core/helper/widgets/custom_text_form_feild.dart';
import 'package:fresh_fruit/core/utils/app_directions.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: context.screenHeight * 0.03,
          ),
          const CustomTextFormFeild(),
          SizedBox(
            height: context.screenHeight * 0.03,
          ),
        ],
      ),
    );
  }
}
