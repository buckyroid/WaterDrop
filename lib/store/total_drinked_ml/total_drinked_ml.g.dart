// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'total_drinked_ml.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TotalDrinkedMl on _TotalDrinkedMl, Store {
  late final _$totalDrinkedMlAtom =
      Atom(name: '_TotalDrinkedMl.totalDrinkedMl', context: context);

  @override
  int get totalDrinkedMl {
    _$totalDrinkedMlAtom.reportRead();
    return super.totalDrinkedMl;
  }

  @override
  set totalDrinkedMl(int value) {
    _$totalDrinkedMlAtom.reportWrite(value, super.totalDrinkedMl, () {
      super.totalDrinkedMl = value;
    });
  }

  late final _$_TotalDrinkedMlActionController =
      ActionController(name: '_TotalDrinkedMl', context: context);

  @override
  void increase(int drinkedMl) {
    final _$actionInfo = _$_TotalDrinkedMlActionController.startAction(
        name: '_TotalDrinkedMl.increase');
    try {
      return super.increase(drinkedMl);
    } finally {
      _$_TotalDrinkedMlActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
totalDrinkedMl: ${totalDrinkedMl}
    ''';
  }
}
