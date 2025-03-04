import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_fruit/core/constants.dart';
import 'package:fresh_fruit/core/helper/widgets/custom_button.dart';
import 'package:fresh_fruit/core/helper/widgets/custom_terms_and_conditions.dart';
import 'package:fresh_fruit/core/helper/widgets/custom_text_form_feild.dart';
import 'package:fresh_fruit/core/helper/widgets/have_an_account.dart';
import 'package:fresh_fruit/core/utils/app_colors.dart';
import 'package:fresh_fruit/core/utils/app_directions.dart';
import 'package:fresh_fruit/features/Auth/presintation/cubits/signup_cubit/signup_cubit.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  late String password, email, name;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autoValidateMode,
          child: Column(
            children: [
              SizedBox(height: context.screenHeight * 0.03),
              CustomTextFormFeild(
                hintText: 'الاسم كامل',
                keyBoardType: TextInputType.name,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'يرجى ادخال الاسم';
                  }
                  return null;
                },
                onSaved: (value) {
                  name = value!;
                },
              ),
              SizedBox(height: context.screenHeight * 0.02),
              CustomTextFormFeild(
                hintText: 'البريد الإلكتروني',
                keyBoardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'يرجى ادخال البريد الإلكتروني';
                  }
                  return null;
                },
                onSaved: (value) {
                  email = value!;
                },
              ),
              SizedBox(height: context.screenHeight * 0.02),
              CustomTextFormFeild(
                hintText: 'كلمة المرور',
                keyBoardType: TextInputType.visiblePassword,
                suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.remove_red_eye,
                      color: AppColors.kGrayColor,
                    )),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'يرجى ادخال كلمة المرور';
                  }
                  return null;
                },
                onSaved: (value) {
                  password = value!;
                },
              ),
              SizedBox(height: context.screenHeight * 0.03),
              const CustomTermsAndConditions(),
              SizedBox(height: context.screenHeight * 0.03),
              CustomButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      context
                          .read<SignupCubit>()
                          .createUserWithEmailAndPassword(
                            email,
                            password,
                            name,
                          );
                    } else {
                      setState(() {
                        autoValidateMode = AutovalidateMode.always;
                      });
                    }
                  },
                  text: 'إنشاء حساب جديد'),
              SizedBox(height: context.screenHeight * 0.03),
              const HaveAnAccount(),
            ],
          ),
        ),
      ),
    );
  }
}
