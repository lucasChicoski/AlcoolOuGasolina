// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculate_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CalculateController on CalculateControllerBase, Store {
  Computed<bool>? _$validationButtonComputed;

  @override
  bool get validationButton => (_$validationButtonComputed ??= Computed<bool>(
          () => super.validationButton,
          name: 'CalculateControllerBase.validationButton'))
      .value;

  final _$resultAtom = Atom(name: 'CalculateControllerBase.result');

  @override
  String get result {
    _$resultAtom.reportRead();
    return super.result;
  }

  @override
  set result(String value) {
    _$resultAtom.reportWrite(value, super.result, () {
      super.result = value;
    });
  }

  final _$alcoholAtom = Atom(name: 'CalculateControllerBase.alcohol');

  @override
  double? get alcohol {
    _$alcoholAtom.reportRead();
    return super.alcohol;
  }

  @override
  set alcohol(double? value) {
    _$alcoholAtom.reportWrite(value, super.alcohol, () {
      super.alcohol = value;
    });
  }

  final _$gasolineAtom = Atom(name: 'CalculateControllerBase.gasoline');

  @override
  double? get gasoline {
    _$gasolineAtom.reportRead();
    return super.gasoline;
  }

  @override
  set gasoline(double? value) {
    _$gasolineAtom.reportWrite(value, super.gasoline, () {
      super.gasoline = value;
    });
  }

  final _$CalculateControllerBaseActionController =
      ActionController(name: 'CalculateControllerBase');

  @override
  void setAlcohol(String value) {
    final _$actionInfo = _$CalculateControllerBaseActionController.startAction(
        name: 'CalculateControllerBase.setAlcohol');
    try {
      return super.setAlcohol(value);
    } finally {
      _$CalculateControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setGasoline(String value) {
    final _$actionInfo = _$CalculateControllerBaseActionController.startAction(
        name: 'CalculateControllerBase.setGasoline');
    try {
      return super.setGasoline(value);
    } finally {
      _$CalculateControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void submitButton() {
    final _$actionInfo = _$CalculateControllerBaseActionController.startAction(
        name: 'CalculateControllerBase.submitButton');
    try {
      return super.submitButton();
    } finally {
      _$CalculateControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void calculateFunction() {
    final _$actionInfo = _$CalculateControllerBaseActionController.startAction(
        name: 'CalculateControllerBase.calculateFunction');
    try {
      return super.calculateFunction();
    } finally {
      _$CalculateControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
result: ${result},
alcohol: ${alcohol},
gasoline: ${gasoline},
validationButton: ${validationButton}
    ''';
  }
}
