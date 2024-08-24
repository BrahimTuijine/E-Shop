import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

class AuthUserModel {
  final String id;
  final String email;

  const AuthUserModel({
    required this.id,
    required this.email,
  });

  factory AuthUserModel.fromFirebaseAuthUser(
    firebase_auth.User firebaseUser,
  ) {
    return AuthUserModel(
      id: firebaseUser.uid,
      email: firebaseUser.email ?? '',
    );
  }
}
