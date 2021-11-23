import 'package:choicemylunchplace/app/shared/widgets/sweet_button.dart';
import 'package:choicemylunchplace/app/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lottie/lottie.dart';

class SuccessAlertDialog extends StatefulWidget {
  @override
  _SuccessAlertDialogState createState() => _SuccessAlertDialogState();
}

class _SuccessAlertDialogState extends State<SuccessAlertDialog>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
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
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Lottie.asset(
                      'assets/success.json',
                      controller: _controller,
                      width: 120,
                      height: 120,
                      fit: BoxFit.fill,
                      onLoaded: (composition) {
                        // Configure the AnimationController with the duration of the
                        // Lottie file and start the animation.
                        _controller
                          ..duration = composition.duration
                          ..forward();
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Reserva feita com sucesso!!',
                      style: kAppTitleBlack.copyWith(color: kPrimaryColor),
                    ),
                  ],
                ),
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
