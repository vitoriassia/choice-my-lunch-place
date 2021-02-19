import 'package:flutter/material.dart';

import '../../constants.dart';

class AppScaffold extends StatelessWidget {
  final Widget body;
  final List<Widget> children;
  final String screen;
  final bool buttonFloat;
  final functionFloat;
  const AppScaffold(
      {Key key,
      this.body,
      this.screen,
      this.children,
      this.buttonFloat,
      this.functionFloat})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        DefaultTabController(
          length: 7,
          child: Scaffold(
            floatingActionButton: buttonFloat != null
                ? Container(
                    height: 55,
                    width: 55.0,
                    child: FloatingActionButton(
                      onPressed: functionFloat,
                      child: Icon(Icons.add),
                      backgroundColor: kPrimaryColor,
                    ),
                  )
                : null,
            appBar: AppBar(
              centerTitle: true,
              elevation: 0.0,
              iconTheme: IconThemeData(
                color: Colors.white,
              ),
              backgroundColor: kPrimaryColor,
              title: Text(
                'Choice Lunch Place',
                style: TextStyle(
                    color: kSecondColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              actions: <Widget>[],
            ),
            body: Container(
              color: Colors.grey[100],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: body,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
