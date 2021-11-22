import 'package:choicemylunchplace/app/core/constants.dart';
import 'package:choicemylunchplace/app/core/models/seat_model.dart';

abstract class ChoicePlaceRepository {
  Future<List<List<SeatModel>>> loadingSeats();
}

class ChoicePlaceRepositoryImpl implements ChoicePlaceRepository {
  @override
  Future<List<List<SeatModel>>> loadingSeats() async {
    await Future.delayed(Duration(seconds: 2));
    return listTable;
  }
}
