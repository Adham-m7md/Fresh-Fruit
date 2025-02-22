import 'package:firebase_auth/firebase_auth.dart';
import 'package:fresh_fruit/core/errors/exceptions.dart';

class FirebaseAuthService {
  Future<User> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw CustomException(message: 'الرقم السري ضعيف ');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(message: 'البريد الالكتروني موجود بالفعل');
      } else {
        throw CustomException(message: 'حدث خطأ ما الرجاء المحاولة مرة أخرى');
      }
    } catch (e) {
      throw CustomException(message: 'حدث خطأ ما الرجاء المحاولة مرة أخرى');
    }
  }
}
