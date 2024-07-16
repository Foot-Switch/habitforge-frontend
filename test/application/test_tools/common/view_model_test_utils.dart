import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

T getNewViewModelInstance<T>(WidgetRef ref, Provider<T> viewModelProvider) {
  return ref.refresh(viewModelProvider);
}

class _ViewModelTestingWidget extends ConsumerWidget {
  late final WidgetRef? widgetRef;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    widgetRef = ref;
    return const SizedBox(
      height: 0,
      width: 0,
    );
  }

  WidgetRef get getWidgetRef => widgetRef!;
}

Future<WidgetRef> loadWidgetRef(WidgetTester tester, {List<Override>? providerOverrides}) async {
  await tester.pumpWidget(ProviderScope(
    overrides: providerOverrides ?? [],
    child: _ViewModelTestingWidget(),
  ));
  const viewModelTestingWidgetTreePosition = 8;
  final widget = tester.allWidgets.elementAt(viewModelTestingWidgetTreePosition) as _ViewModelTestingWidget;
  return widget.getWidgetRef;
}
