import 'package:flutter/widgets.dart';

extension AsyncSnapshotStatus on AsyncSnapshot {
  bool get isInProgress => connectionState == ConnectionState.waiting;

  bool get isSuccessful => error == null && data != null;
}

extension StringExtensions on String? {
  String get ifPresent => this ?? "";

  String capitalize() {
    return ifPresent.isNotEmpty ? "${ifPresent[0].toUpperCase()}${ifPresent.substring(1).toLowerCase()}" : "";
  }
}

ReturnType run<ReturnType>(ReturnType Function() operation) {
  return operation();
}

extension ScopeFunctionsForObject<T extends Object> on T {
  ReturnType let<ReturnType>(ReturnType Function(T it) operation_for) {
    return operation_for(this);
  }

  T also(void Function(T it) operation_for) {
    operation_for(this);
    return this;
  }
}
