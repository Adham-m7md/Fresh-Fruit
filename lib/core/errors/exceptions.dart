// ignore_for_file: public_member_api_docs, sort_constructors_first

class CustomeExeption implements Exception {
  final String message;
  CustomeExeption({
    required this.message,
  });

  @override
  String toString() => message;
}
