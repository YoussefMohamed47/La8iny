import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:la8iny/auth/presentation/repo/auth_repo.dart';

import '../../data/models/user_model.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepo _authRepo;

  AuthCubit(this._authRepo) : super(AuthState());

  Future<void> login(String email, String password) async {
    emit(state.copyWith(state: AuthStatus.loading));
    await Future.delayed(const Duration(seconds: 2));
    try {
      final user = await _authRepo.login(email, password);
      emit(state.copyWith(state: AuthStatus.success, user: () => user));
    } catch (e) {
      emit(state.copyWith(state: AuthStatus.error));
    }
  }
}
