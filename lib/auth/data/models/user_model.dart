class User {
  final String email;
  final String name;

  User({required this.email, required this.name});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(email: json['email'], name: json['name']);
  }

  User copyWith({
    String? email,
    String? name,
  }) {
    return User(
      email: email ?? this.email,
      name: name ?? this.name,
    );
  }
}
