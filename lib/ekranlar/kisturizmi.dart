import 'package:flutter/material.dart';

class KisTurizmi extends StatefulWidget {
  @override
  _KisTurizmiState createState() => _KisTurizmiState();
}

class _KisTurizmiState extends State<KisTurizmi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          //"${AppLocalizations.of(context).locale.languageCode}",
          "Kış Turizmi",
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

