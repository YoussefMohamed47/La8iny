import 'package:la8iny/auth/data/models/user_model.dart';
import 'package:la8iny/auth/presentation/repo/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  @override
  Future<User> login(String email, String password) async {
    return User(email: email, fullname: 'Youssef Mohamed');
  }

  @override
  Future<User> signUp(
      {required String email,
      required String password,
      required String fullname}) async {
    return User(email: email, fullname: 'Youssef Mohamed');
  }
}
