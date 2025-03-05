import 'package:flutter/material.dart';
import 'package:fresh_fruit/core/helper/widgets/custom_text_form_feild.dart';
import 'package:fresh_fruit/core/utils/app_colors.dart';

class CustomPasswordFeild extends StatefulWidget {
  const CustomPasswordFeild({
    super.key,
    required this.onSaved,
  });
  final void Function(String?)? onSaved;
  @override
  State<CustomPasswordFeild> createState() => _CustomPasswordFeildState();
}

class _CustomPasswordFeildState extends State<CustomPasswordFeild> {
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormFeild(
      obscureText: obscure,
      hintText: 'كلمة المرور',
      keyBoardType: TextInputType.visiblePassword,
      suffixIcon: IconButton(
        onPressed: () {
          obscure = !obscure;
          setState(() {});
        },
        icon: obscure
            ? const Icon(
                Icons.remove_red_eye,
                color: AppColors.kGrayColor,
              )
            : const Icon(
                Icons.visibility_off,
                color: AppColors.kGrayColor,
              ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'يرجى ادخال كلمة المرور';
        }
        return null;
      },
      onSaved: widget.onSaved,
    );
  }
}
