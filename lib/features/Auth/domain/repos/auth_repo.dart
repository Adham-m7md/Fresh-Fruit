import 'package:fresh_fruit/features/Auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<UserEntity> createUserWithEmailAndPassword(
      String email, String password, String name);
}
