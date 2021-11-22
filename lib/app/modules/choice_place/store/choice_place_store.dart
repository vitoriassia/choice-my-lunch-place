import 'package:choicemylunchplace/app/core/models/seat_model.dart';
import 'package:choicemylunchplace/app/modules/choice_place/data/choice_place_repository.dart';
import 'package:mobx/mobx.dart';
part 'choice_place_store.g.dart';

class ChoicePlaceStore = _ChoicePlaceStoreBase with _$ChoicePlaceStore;

abstract class _ChoicePlaceStoreBase with Store {
  ChoicePlaceRepository repository;
  _ChoicePlaceStoreBase(this.repository);

  @observable
  bool loadingPlace = true;

  @action
  setLoadingPlace(bool value) => loadingPlace = value;

  @observable
  List<List<SeatModel>> listOfPlace;

  @action
  Future<void> loadingPlaces() async {
    loadingPlace = true;
    var list = await repository.loadingSeats();
    listOfPlace = list;
    loadingPlace = false;
  }

  bool isSelectSeat() {
    bool isSelectSeat = false;
    listOfPlace.forEach((element) {
      isSelectSeat = element.any((element) => element.isSelect);
    });
    return isSelectSeat;
  }
}
