import 'package:choicemylunchplace/app/modules/choice_place/data/choice_place_repository.dart';
import 'package:choicemylunchplace/app/modules/choice_place/store/choice_place_store.dart';
import 'package:choicemylunchplace/app/modules/choice_place/ui/choice_place_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ChoicePlaceModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.factory((i) => ChoicePlaceRepositoryImpl()),
    Bind.lazySingleton(
        (i) => ChoicePlaceStore(i.get<ChoicePlaceRepositoryImpl>()))
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => ChoicePlacePage()),
  ];
}
