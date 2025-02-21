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
        throw CustomeExeption(message: 'الرقم السري ضعيف ');
      } else if (e.code == 'email-already-in-use') {
        throw CustomeExeption(message: 'البريد الالكتروني موجود بالفعل');
      } else {
        throw CustomeExeption(message: 'حدث خطأ ما الرجاء المحاولة مرة أخرى');
      }
    } catch (e) {
      throw CustomeExeption(message: 'حدث خطأ ما الرجاء المحاولة مرة أخرى');
    }
  }
}
