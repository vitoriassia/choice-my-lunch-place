import 'package:choicemylunchplace/app/shared/widgets/sweet_button.dart';
import 'package:choicemylunchplace/app/shared/widgets/app_scaffold.dart';
import 'package:choicemylunchplace/app/core/constants.dart';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatelessWidget {
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
                      Modular.to.pushNamed('/choice_place/');
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
