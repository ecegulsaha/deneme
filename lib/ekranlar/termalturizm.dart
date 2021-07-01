import 'package:flutter/material.dart';

class TermalTurizm extends StatefulWidget {
  @override
  _TermalTurizmState createState() => _TermalTurizmState();
}

class _TermalTurizmState extends State<TermalTurizm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          //"${AppLocalizations.of(context).locale.languageCode}",
          "Termal Turizm",
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

