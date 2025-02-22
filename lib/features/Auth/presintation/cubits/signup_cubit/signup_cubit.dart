// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import 'package:fresh_fruit/features/Auth/domain/entities/user_entity.dart';
import 'package:fresh_fruit/features/Auth/domain/repos/auth_repo.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.authRepo) : super(SignupInitial());

  final AuthRepo authRepo;

  Future<void> createUserWithEmailAndPassword(
      String email, String password, String name) async {
    emit(SignupLoading());
    final resut =
        await authRepo.createUserWithEmailAndPassword(email, password, name);
    resut.fold(
      (l) => emit(SignupFailure(message: l.message)),
      (r) => emit(SignupSuccess(userEntity: r)),
    );
  }
}
