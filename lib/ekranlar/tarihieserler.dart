import 'package:flutter/material.dart';

class TarihiEserler extends StatefulWidget {
  @override
  _TarihiEserlerState createState() => _TarihiEserlerState();
}

class _TarihiEserlerState extends State<TarihiEserler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          //"${AppLocalizations.of(context).locale.languageCode}",
          "Tarihi Eserler",
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

