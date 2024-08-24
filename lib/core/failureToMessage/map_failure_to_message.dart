import 'package:flutter/foundation.dart';
import '../constants/app_const.dart';
import '../failures/failures.dart';

String mapFailureToMessage(failure) {
  return switch (failure.runtimeType) {
    const (OfflineFailure) => AppConst.offLineFailureMessage,
    const (ServerFailure) => kDebugMode || kProfileMode
        ? 'ServerFailure => ${failure.msg}'
        : AppConst.serverFailureMessage,
    _ => kDebugMode || kProfileMode
        ? 'UnexpectedFailure => ${failure.msg}'
        : AppConst.unexpectedErrorMessage,
  };
}

String handleFirebaseAuthError(String errorCode) {
  return switch (errorCode) {
    'wrong-password' =>
      'The password is invalid or the account doesn\'t have a password set.',
    'invalid-email' => 'The email address is not valid.',
    'user-disabled' =>
      'The user corresponding to the given email has been disabled.',
    'user-not-found' => 'No user found with the given email.',
    'email-already-in-use' =>
      'An account with the given email address already exists.',
    'operation-not-allowed' =>
      'This operation is not allowed. Please contact support.',
    'weak-password' => 'The password is not strong enough.',
    'account-exists-with-different-credential' =>
      'An account with this email already exists with a different sign-in method.',
    'invalid-credential' => 'The credential is malformed or has expired.',
    'invalid-verification-code' => 'The verification code is invalid.',
    'invalid-verification-id' => 'The verification ID is invalid.',
    'user-mismatch' => 'The credential does not correspond to the user.',
    'expired-action-code' => 'The action code (OTP) has expired.',
    _ => 'An undefined error occurred.',
  };
}
