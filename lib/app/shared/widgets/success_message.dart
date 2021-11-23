import 'package:choicemylunchplace/app/shared/widgets/sweet_button.dart';
import 'package:choicemylunchplace/app/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SuccessAlertDialog extends StatefulWidget {
  @override
  _SuccessAlertDialogState createState() => _SuccessAlertDialogState();
}

class _SuccessAlertDialogState extends State<SuccessAlertDialog>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
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
              // GifImage(
              //   controller: controller,
              //   image: AssetImage(
              //     'assets/success-gif.gif',
              //   ),
              //   width: 100,
              //   height: 100,
              // ),
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
                  Modular.to.navigate('/home/');
                },
              )
            ],
          )),
    );
  }
}
