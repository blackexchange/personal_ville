// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  final _$listAtom = Atom(name: '_HomeBase.list');

  @override
  ObservableList<NumerologiaModel> get list {
    _$listAtom.reportRead();
    return super.list;
  }

  @override
  set list(ObservableList<NumerologiaModel> value) {
    _$listAtom.reportWrite(value, super.list, () {
      super.list = value;
    });
  }

  final _$addAsyncAction = AsyncAction('_HomeBase.add');

  @override
  Future add(NumerologiaModel model) {
    return _$addAsyncAction.run(() => super.add(model));
  }

  final _$calcularDataAsyncAction = AsyncAction('_HomeBase.calcularData');

  @override
  Future<void> calcularData(NumerologiaModel model) {
    return _$calcularDataAsyncAction.run(() => super.calcularData(model));
  }

  @override
  String toString() {
    return '''
list: ${list}
    ''';
  }
}
