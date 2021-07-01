import 'package:flutter/material.dart';

class Kudeb extends StatefulWidget {
  @override
  _KudebState createState() => _KudebState();
}

class _KudebState extends State<Kudeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          //"${AppLocalizations.of(context).locale.languageCode}",
          "KUDEB Şube Müdürlüğü",
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

