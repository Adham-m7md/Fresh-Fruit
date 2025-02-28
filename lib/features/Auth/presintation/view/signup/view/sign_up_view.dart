import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_fruit/core/helper/widgets/custom_app_bar.dart';
import 'package:fresh_fruit/core/services/get_it_service.dart';
import 'package:fresh_fruit/core/utils/app_colors.dart';
import 'package:fresh_fruit/features/Auth/domain/repos/auth_repo.dart';
import 'package:fresh_fruit/features/Auth/presintation/cubits/signup_cubit/signup_cubit.dart';

import 'package:fresh_fruit/features/Auth/presintation/view/signup/widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const String id = 'signup';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(
        getIt<AuthRepo>(),
      ),
      child: Scaffold(
        backgroundColor: AppColors.kWiteColor,
        appBar: buildAppBar(context, titel: 'حساب جديد'),
        body: const SignUpViewBody(),
      ),
    );
  }
}
