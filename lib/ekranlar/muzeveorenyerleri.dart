import 'package:flutter/material.dart';

class MuzeveOrenyerleri extends StatefulWidget {
  @override
  _MuzeveOrenyerleriState createState() => _MuzeveOrenyerleriState();
}

class _MuzeveOrenyerleriState extends State<MuzeveOrenyerleri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          //"${AppLocalizations.of(context).locale.languageCode}",
          "Müze ve Örenyerleri",
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

