import 'package:flutter/material.dart';

class Medreseler extends StatefulWidget {
  @override
  _MedreselerState createState() => _MedreselerState();
}

class _MedreselerState extends State<Medreseler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          //"${AppLocalizations.of(context).locale.languageCode}",
          "Medreseler",
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

