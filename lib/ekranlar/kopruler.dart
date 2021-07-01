import 'package:flutter/material.dart';

class Kopruler extends StatefulWidget {
  @override
  _KoprulerState createState() => _KoprulerState();
}

class _KoprulerState extends State<Kopruler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          //"${AppLocalizations.of(context).locale.languageCode}",
          "Köprüler",
          style: TextStyle(
            color: Colors.black.withOpacity(0.8),
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Container(),
    );
  }
}

