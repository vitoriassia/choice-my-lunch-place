import 'package:choicemylunchplace/app/modules/choice_place/store/choice_place_store.dart';
import 'package:choicemylunchplace/app/modules/choice_place/ui/widgets/eight_seat_table.dart';
import 'package:choicemylunchplace/app/shared/widgets/app_scaffold.dart';
import 'package:choicemylunchplace/app/shared/widgets/success_message.dart';
import 'package:choicemylunchplace/app/shared/widgets/sweet_button.dart';
import 'package:choicemylunchplace/app/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ChoicePlacePage extends StatefulWidget {
  @override
  State<ChoicePlacePage> createState() => _ChoicePlacePageState();
}

class _ChoicePlacePageState extends State<ChoicePlacePage> {
  final choicePlaceStore = Modular.get<ChoicePlaceStore>();
  @override
  void initState() {
    choicePlaceStore.loadingPlaces();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // ChoiceSeatStore bookinStore = Provider.of<ChoiceSeatStore>(context);
    return Observer(
      builder: (_) {
        return AppScaffold(
          body: choicePlaceStore.loadingPlace
              ? CircularProgressIndicator()
              : Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(right: 12, left: 12),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('Selecione seu lugar:',
                                  style: kAppTitleBlack.copyWith(fontSize: 18)),
                            ],
                          ),
                        )),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Card(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30, top: 10, bottom: 10),
                                  child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: EightSeatTableContainer(0)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 30, top: 5, bottom: 10),
                                  child: Align(
                                      alignment: Alignment.centerRight,
                                      child: EightSeatTableContainer(1)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30, top: 5, bottom: 10),
                                  child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: EightSeatTableContainer(2)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(
                            right: 12, left: 24, top: 4, bottom: 10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('Legendas',
                                    style: TextStyle(fontSize: 14)),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.account_circle,
                                        color: kPrimaryColor,
                                        size: 20,
                                      ),
                                      Text(
                                        ' Ocupado',
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.remove_circle,
                                        color: Colors.red[900],
                                        size: 20,
                                      ),
                                      Text(
                                        ' Indisponível',
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: kPrimaryColor,
                                                width: 1.5),
                                            shape: BoxShape.circle),
                                        width: 18,
                                        height: 18,
                                      ),
                                      Text(
                                        ' Disponível',
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SweetButton(
                          onPressed: () async {
                            showDialog(
                              barrierDismissible: true,
                              context: context,
                              builder: (BuildContext context) {
                                return SuccessAlertDialog();
                              },
                            );
                          },
                          text: 'Reservar'),
                    ),
                    choicePlaceStore.isSelectSeat()
                        ? Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SweetButton(
                                onPressed: () async {
                                  showDialog(
                                    barrierDismissible: true,
                                    context: context,
                                    builder: (BuildContext context) {
                                      return SuccessAlertDialog();
                                    },
                                  );
                                },
                                text: 'Reservar'),
                          )
                        : Container()
                  ],
                ),
        );
      },
    );
  }
}
