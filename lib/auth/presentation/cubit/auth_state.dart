part of 'auth_cubit.dart';

enum AuthStatus {
  initial,
  loading,
  success,
  error,
}

extension AuthStatusX on AuthState {
  bool get isInitial => status == AuthStatus.initial;

  bool get isLoading => status == AuthStatus.loading;

  bool get isSuccess => status == AuthStatus.success;

  bool get isError => status == AuthStatus.error;
}

@immutable
class AuthState {
  final AuthStatus status;

  final User? user;

  final String? message;

  const AuthState({
    this.status = AuthStatus.initial,
    this.user,
    this.message,
  });

  AuthState copyWith({
    AuthStatus? state,
    ValueGetter<User>? user,
    String? message,
  }) {
    return AuthState(
      status: state ?? this.status,
      user: user == null ? this.user : user(),
      message: message ?? this.message,
    );
  }

  @override
  String toString() {
    return 'AuthState(status: $status, user: $user, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AuthState &&
        other.status == status &&
        other.user == user &&
        other.message == message;
  }

  @override
  int get hashCode => status.hashCode ^ user.hashCode ^ message.hashCode;
}
