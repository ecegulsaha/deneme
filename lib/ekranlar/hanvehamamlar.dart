import 'package:flutter/material.dart';

class HanveHamamlar extends StatefulWidget {
  @override
  _HanveHamamlarState createState() => _HanveHamamlarState();
}

class _HanveHamamlarState extends State<HanveHamamlar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          //"${AppLocalizations.of(context).locale.languageCode}",
          "Han ve Hamamlar",
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

