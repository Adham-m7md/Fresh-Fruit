import 'package:dartz/dartz.dart';
import 'package:fresh_fruit/core/errors/failures.dart';
import 'package:fresh_fruit/features/Auth/domain/entities/user_entity.dart';
import 'package:fresh_fruit/features/Auth/domain/repos/auth_repo.dart';

class AuthRepoImplementation extends AuthRepo {
  @override
  Future<Either<Failures, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name) {
    // TODO: implement createUserWithEmailAndPassword
    throw UnimplementedError();
  }
}
