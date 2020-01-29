// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  Computed<bool> _$loadingComputed;

  @override
  bool get loading =>
      (_$loadingComputed ??= Computed<bool>(() => super.loading)).value;

  final _$responseAtom = Atom(name: '_HomeBase.response');

  @override
  ObservableFuture<List<dynamic>> get response {
    _$responseAtom.context.enforceReadPolicy(_$responseAtom);
    _$responseAtom.reportObserved();
    return super.response;
  }

  @override
  set response(ObservableFuture<List<dynamic>> value) {
    _$responseAtom.context.conditionallyRunInAction(() {
      super.response = value;
      _$responseAtom.reportChanged();
    }, _$responseAtom, name: '${_$responseAtom.name}_set');
  }

  final _$itensAtom = Atom(name: '_HomeBase.itens');

  @override
  ObservableList<dynamic> get itens {
    _$itensAtom.context.enforceReadPolicy(_$itensAtom);
    _$itensAtom.reportObserved();
    return super.itens;
  }

  @override
  set itens(ObservableList<dynamic> value) {
    _$itensAtom.context.conditionallyRunInAction(() {
      super.itens = value;
      _$itensAtom.reportChanged();
    }, _$itensAtom, name: '${_$itensAtom.name}_set');
  }

  final _$_HomeBaseActionController = ActionController(name: '_HomeBase');

  @override
  void getData() {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.getData();
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }
}
