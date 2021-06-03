import 'dart:html';

import 'package:flutter/material.dart';
import 'package:mestizo/messages/messages.i18n.dart';
import 'package:url_launcher/url_launcher.dart';

class Landing extends StatelessWidget {
  Landing();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Image(
                image: AssetImage('images/mestizo_logo.png'),
                width: 800,
                height: 600,
              ),
            ),
          ),
          Container(
            height: 60,
          ),
          Flexible(
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromRGBO(0, 116, 130, 1)),
                  padding:
                      MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(25)),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                      TextStyle(fontSize: 30))),
              onPressed: () => goToDeliDeli(),
              child: Text(Messages().landing.delivery),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(Messages().landing.delivery),
            ),
          )
        ],
      ),
    );
  }

  Future<bool> goToDeliDeli() async =>
      await launch('https://delideli.es/mestizo');
}
