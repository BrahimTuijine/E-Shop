import 'package:dartz/dartz.dart';
import 'package:e_shop/core/exceptions/exceptions.dart';
import 'package:e_shop/core/failureToMessage/map_failure_to_message.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:injectable/injectable.dart';

import '../../data/models/authentication_models_export.dart';

abstract class AuthenticationDataSource {
  Future<AuthUserModel> singIn(String email, String password);

  Future<AuthUserModel> signUp(String email, String password);

  Future<Unit> singOut();
}

@LazySingleton(as: AuthenticationDataSource)
class AuthenticationDataSourceImpl implements AuthenticationDataSource {
  final firebase_auth.FirebaseAuth firebaseAuth =
      firebase_auth.FirebaseAuth.instance;

  AuthenticationDataSourceImpl();

  @override
  Future<AuthUserModel> signUp(
    String email,
    String password,
  ) async {
    try {
      firebase_auth.UserCredential credential =
          await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (credential.user == null) {
        throw ServerException(
          msg: 'Sign up failed: The user is null after sign up.',
        );
      }

      return AuthUserModel.fromFirebaseAuthUser(credential.user!);
    } on firebase_auth.FirebaseAuthException catch (error) {
      throw ServerException(msg: handleFirebaseAuthError(error.code));
    } catch (e) {
      throw ServerException(msg: 'Sign up failed: $e');
    }
  }

  @override
  Future<AuthUserModel> singIn(
    String email,
    String password,
  ) async {
    try {
      firebase_auth.UserCredential credential =
          await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (credential.user == null) {
        throw ServerException(
          msg: 'Sign in failed: The user is null after sign in.',
        );
      }

      return AuthUserModel.fromFirebaseAuthUser(credential.user!);
    } on firebase_auth.FirebaseAuthException catch (error) {
      throw ServerException(msg: handleFirebaseAuthError(error.code));
    } catch (e) {
      throw ServerException(msg: 'Sign in failed: $e');
    }
  }

  @override
  Future<Unit> singOut() async {
    try {
      await firebaseAuth.signOut();
      return unit;
    } on firebase_auth.FirebaseAuthException catch (error) {
      throw ServerException(msg: handleFirebaseAuthError(error.code));
    } catch (e) {
      throw ServerException(msg: 'Sign out failed: $e');
    }
  }
}
