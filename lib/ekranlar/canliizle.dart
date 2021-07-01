import 'package:flutter/material.dart';

class CanliIzle extends StatefulWidget {
  @override
  _CanliIzleState createState() => _CanliIzleState();
}

class _CanliIzleState extends State<CanliIzle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          //"${AppLocalizations.of(context).locale.languageCode}",
          "Canlı İzle",
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

