import 'package:flutter/material.dart';
import 'package:mestizo/messages/messages.i18n.dart';
import 'package:url_launcher/url_launcher.dart';

class Landing extends StatelessWidget {
  Landing();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Flexible(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Image(
                image: AssetImage('images/mestizo_logo.png'),
                width: 800,
                height: 600,
              ),
            ),
          ),
          Spacer(),
          Flexible(
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromRGBO(43, 57, 100, 1)),
                  padding:
                      MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(25)),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                      TextStyle(fontSize: 30))),
              onPressed: () => goToDeliDeli(),
              child: Text(Messages().landing.delivery),
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '955146497',
                  style: _buildStyle(),
                ),
                Text(
                  'Calle Peris Mencheta 31',
                  style: _buildStyle(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  TextStyle _buildStyle() => TextStyle(
        decoration: TextDecoration.none,
        fontStyle: FontStyle.italic,
        fontSize: 18,
        color: Color.fromRGBO(0, 116, 130, 1),
      );

  Future<bool> goToDeliDeli() async =>
      await launch('https://delideli.es/mestizo');
}
