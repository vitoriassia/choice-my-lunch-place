import 'package:choicemylunchplace/app/modules/choice_place/ui/choice_place_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ChoicePlaceModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => ChoicePlacePage()),
  ];
}
