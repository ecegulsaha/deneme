import 'package:flutter/material.dart';

class TurbeveKumbetler extends StatefulWidget {
  @override
  _TurbeveKumbetlerState createState() => _TurbeveKumbetlerState();
}

class _TurbeveKumbetlerState extends State<TurbeveKumbetler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          //"${AppLocalizations.of(context).locale.languageCode}",
          "Türbe ve Kümbetler",
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

