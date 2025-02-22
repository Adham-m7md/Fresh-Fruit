import 'package:dartz/dartz.dart';
import 'package:fresh_fruit/core/errors/exceptions.dart';
import 'package:fresh_fruit/core/errors/failures.dart';

import 'package:fresh_fruit/core/services/firebase_auth_service.dart';
import 'package:fresh_fruit/features/Auth/data/models/user_model.dart';
import 'package:fresh_fruit/features/Auth/domain/entities/user_entity.dart';
import 'package:fresh_fruit/features/Auth/domain/repos/auth_repo.dart';

class AuthRepoImplementation extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImplementation({required this.firebaseAuthService});
  @override
  Future<Either<Failures, UserEntity>> createUserWithEmailAndPassword(
    String email,
    String password,
    String name,
  ) async {
    try {
      var user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Right(UserModel.fromFirebase(user));
    } on CustomException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return Left(ServerFailure('حدث خطأ ما الرجاء المحاولة مرة أخرى'));
    }
  }
}
