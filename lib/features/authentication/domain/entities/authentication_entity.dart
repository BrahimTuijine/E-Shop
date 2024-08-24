class AuthenticationEntity {
  String email;
  String password;

  AuthenticationEntity({
    required this.email,
    required this.password,
  });

  factory AuthenticationEntity.fromJson(Map<String, dynamic> json) =>
      AuthenticationEntity(
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
      };
}
