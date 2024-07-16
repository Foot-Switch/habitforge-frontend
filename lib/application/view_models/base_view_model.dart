import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class BaseViewModel {
  BaseViewModel(this._ref);

  final anyUseCaseInProgress = StateProvider<bool>((_) => false);
  final anyUseCaseFailed = StateProvider<Object?>((_) => null);

  final ProviderRef _ref;

  executeUseCase({Future<dynamic> Function()? useCase, Function(bool)? inProgress, Function(Object?)? onError}) async {
    if (inProgress != null) {
      inProgress(true);
    } else {
      _ref.read(anyUseCaseInProgress.state).state = true;
    }
    try {
      await useCase?.call();
    } catch (error) {
      debugPrint("USE_CASE_ERROR: $error");
      if (onError != null) {
        onError(error);
      } else {
        _ref.read(anyUseCaseFailed.state).state = error;
      }
    } finally {
      if (inProgress != null) {
        inProgress(false);
      } else {
        _ref.read(anyUseCaseInProgress.state).state = false;
      }
    }
  }

  void updateUseCase<T>(StateProvider<T> useCase, T value) {
    _ref.read(useCase.notifier).state = value;
  }

  void updateRepeatingUseCase(StateProvider<bool> useCase) {
    _ref.read(useCase.notifier).update((state) => !state);
  }
}
