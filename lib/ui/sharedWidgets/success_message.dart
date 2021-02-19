import 'package:choicemylunchplace/constants.dart';
import 'package:choicemylunchplace/ui/screens/home_screen/home_screen.dart';
import 'package:choicemylunchplace/ui/sharedWidgets/sweet_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gifimage/flutter_gifimage.dart';

class SuccessAlertDialog extends StatefulWidget {
  @override
  _SuccessAlertDialogState createState() => _SuccessAlertDialogState();
}

class _SuccessAlertDialogState extends State<SuccessAlertDialog>
    with TickerProviderStateMixin {
  GifController controller;

  @override
  void initState() {
    super.initState();
    controller = GifController(vsync: this);
    controller.animateTo(130, duration: Duration(milliseconds: 1200));
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 24.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      content: Container(
          width: 220,
          height: 380,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GifImage(
                controller: controller,
                image: AssetImage(
                  'assets/success-gif.gif',
                ),
                width: 100,
                height: 100,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Reserva feita com sucesso!!',
                style: kAppTitleBlack.copyWith(color: kPrimaryColor),
              ),
              SizedBox(
                height: 70,
              ),
              SweetButton(
                text: 'Voltar',
                textcolor: kSecondColor,
                color: kPrimaryColor,
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, HomeScreen.id, (route) => false);
                },
              )
            ],
          )),
    );
  }
}
