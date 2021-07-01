import 'package:flutter/material.dart';

class KaleveKuleler extends StatefulWidget {
  @override
  _KaleveKulelerState createState() => _KaleveKulelerState();
}

class _KaleveKulelerState extends State<KaleveKuleler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          //"${AppLocalizations.of(context).locale.languageCode}",
          "Kale ve Kuleler",
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

