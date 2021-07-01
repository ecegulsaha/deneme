import 'package:flutter/material.dart';

class Cesmeler extends StatefulWidget {
  @override
  _CesmelerState createState() => _CesmelerState();
}

class _CesmelerState extends State<Cesmeler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          //"${AppLocalizations.of(context).locale.languageCode}",
          "Çeşmeler",
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

