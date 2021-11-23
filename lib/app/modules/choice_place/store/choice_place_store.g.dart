// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choice_place_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ChoicePlaceStore on _ChoicePlaceStoreBase, Store {
  final _$loadingPlaceAtom = Atom(name: '_ChoicePlaceStoreBase.loadingPlace');

  @override
  bool get loadingPlace {
    _$loadingPlaceAtom.reportRead();
    return super.loadingPlace;
  }

  @override
  set loadingPlace(bool value) {
    _$loadingPlaceAtom.reportWrite(value, super.loadingPlace, () {
      super.loadingPlace = value;
    });
  }

  final _$listOfPlaceAtom = Atom(name: '_ChoicePlaceStoreBase.listOfPlace');

  @override
  List<List<SeatModel>>? get listOfPlace {
    _$listOfPlaceAtom.reportRead();
    return super.listOfPlace;
  }

  @override
  set listOfPlace(List<List<SeatModel>>? value) {
    _$listOfPlaceAtom.reportWrite(value, super.listOfPlace, () {
      super.listOfPlace = value;
    });
  }

  final _$loadingPlacesAsyncAction =
      AsyncAction('_ChoicePlaceStoreBase.loadingPlaces');

  @override
  Future<void> loadingPlaces() {
    return _$loadingPlacesAsyncAction.run(() => super.loadingPlaces());
  }

  final _$selectPlaceAsyncAction =
      AsyncAction('_ChoicePlaceStoreBase.selectPlace');

  @override
  Future<void> selectPlace(SeatModel place, int table) {
    return _$selectPlaceAsyncAction.run(() => super.selectPlace(place, table));
  }

  final _$_ChoicePlaceStoreBaseActionController =
      ActionController(name: '_ChoicePlaceStoreBase');

  @override
  dynamic setLoadingPlace(bool value) {
    final _$actionInfo = _$_ChoicePlaceStoreBaseActionController.startAction(
        name: '_ChoicePlaceStoreBase.setLoadingPlace');
    try {
      return super.setLoadingPlace(value);
    } finally {
      _$_ChoicePlaceStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loadingPlace: ${loadingPlace},
listOfPlace: ${listOfPlace}
    ''';
  }
}
