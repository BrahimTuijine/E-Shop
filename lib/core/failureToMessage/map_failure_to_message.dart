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
