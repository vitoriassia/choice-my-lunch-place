import 'package:choicemylunchplace/app/core/models/seat_model.dart';
import 'package:choicemylunchplace/app/modules/choice_place/data/choice_place_repository.dart';
import 'package:mobx/mobx.dart';
part 'choice_place_store.g.dart';

class ChoicePlaceStore = _ChoicePlaceStoreBase with _$ChoicePlaceStore;

abstract class _ChoicePlaceStoreBase with Store {
  ChoicePlaceRepository repository;
  _ChoicePlaceStoreBase(this.repository);

  int? selectedPlaceIndex;
  late int selectedTableIndex;

  @observable
  bool loadingPlace = true;

  @action
  setLoadingPlace(bool value) => loadingPlace = value;

  @observable
  List<List<SeatModel>>? listOfPlace;

  @action
  Future<void> loadingPlaces() async {
    loadingPlace = true;
    var list = await repository.loadingSeats();
    listOfPlace = list;
    loadingPlace = false;
  }

  @action
  Future<void> selectPlace(SeatModel place, int table) async {
    int indexNewSelectedPlace = listOfPlace![table].indexOf(place);
    if (selectedPlaceIndex == null) {
      handleFirstPlaceSelect(table, indexNewSelectedPlace);
    } else if (isSamePlace(selectedPlaceIndex, indexNewSelectedPlace)) {
      handleSamePlaceSelect(table);
    } else {
      handleNewSelectPlace(table, indexNewSelectedPlace);
    }
    selectedTableIndex = table;
    listOfPlace = listOfPlace;
  }

  void handleNewSelectPlace(int table, int indexNewSelectedPlace) {
    listOfPlace![selectedTableIndex][selectedPlaceIndex!].isSelect = false;
    listOfPlace![table][indexNewSelectedPlace].isSelect = true;
    selectedPlaceIndex = indexNewSelectedPlace;
  }

  void handleSamePlaceSelect(int table) {
    listOfPlace![table][selectedPlaceIndex!].isSelect =
        !listOfPlace![table][selectedPlaceIndex!].isSelect!;
    if (!listOfPlace![table][selectedPlaceIndex!].isSelect!)
      selectedPlaceIndex = null;
  }

  void handleFirstPlaceSelect(int table, int indexNewSelectedPlace) {
    listOfPlace![table][indexNewSelectedPlace].isSelect = true;
    selectedPlaceIndex = indexNewSelectedPlace;
  }

  bool isSelectSeat() {
    bool isSelectSeat = false;
    for (final element in listOfPlace!) {
      isSelectSeat = element.any((element) => element.isSelect!);
      if (isSelectSeat) break;
    }
    return isSelectSeat;
  }

  bool isSamePlace(int? indexSelect, int indexNewSelect) =>
      indexSelect == indexNewSelect;
}
