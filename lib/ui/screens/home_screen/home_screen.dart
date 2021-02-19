import 'package:choicemylunchplace/constants.dart';
import 'package:choicemylunchplace/ui/screens/choice_place/choice_place_screen.dart';
import 'package:choicemylunchplace/ui/sharedWidgets/app_scaffold.dart';
import 'package:choicemylunchplace/ui/sharedWidgets/sweet_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen';
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.7,
          child: Card(
            elevation: 5,
            color: kAppGrey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/restaurant-icon.png',
                    width: 250,
                  ),
                  Column(
                    children: [
                      Text(
                        'Bem-vindo ao nosso APP',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Clique no botão para escolher o lugar da sua reserva',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 11,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SweetButton(
                    text: 'Escolher lugar',
                    color: kPrimaryColor,
                    textcolor: kSecondColor,
                    onPressed: () {
                      Navigator.pushNamed(context, ChoiceSeatScreen.id);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
