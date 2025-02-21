import 'package:dartz/dartz.dart';
import 'package:fresh_fruit/core/errors/failures.dart';
import 'package:fresh_fruit/features/Auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failures, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name);
}
