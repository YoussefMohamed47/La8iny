import 'package:la8iny/auth/data/models/user_model.dart';

abstract class AuthRepo {
  Future<User> login(String email, String password);
  Future<User> signUp({
    required String email,
    required String password,
    required String fullname,
  });
}
