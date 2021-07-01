import 'package:flutter/material.dart';

class Diger extends StatefulWidget {
  @override
  _DigerState createState() => _DigerState();
}

class _DigerState extends State<Diger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          //"${AppLocalizations.of(context).locale.languageCode}",
          "Diğer",
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

