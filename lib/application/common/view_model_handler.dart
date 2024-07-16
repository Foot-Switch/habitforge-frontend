import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin ViewModelHandler {
  T getNewViewModelInstance<T>(WidgetRef ref, Provider<T> viewModelProvider) {
    return ref.refresh(viewModelProvider);
  }

  void watchUseCase<T>(WidgetRef ref, StateProvider<T> useCase, Function(T) listener) {
    ref.read(useCase.notifier).addListener(
      (T type) {
        listener(type);
      },
      fireImmediately: false,
    );
  }
}
