import 'package:la8iny/auth/data/models/user_model.dart';
import 'package:la8iny/auth/presentation/repo/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  @override
  Future<User> login(String email, String password) async {
    return User(email: email, name: 'Youssef Mohamed');
  }
}
