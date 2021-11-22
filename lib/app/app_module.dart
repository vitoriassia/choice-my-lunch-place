import 'package:choicemylunchplace/app/modules/choice_place/choice_place_module.dart';
import 'package:choicemylunchplace/app/modules/home/home_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/home', module: HomeModule()),
    ModuleRoute('/choice_place', module: ChoicePlaceModule())
  ];
}
