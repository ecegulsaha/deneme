import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class Camiler extends StatefulWidget {
  final String kelime;
  Camiler({
    @required this.kelime,
  });

  @override
  _CamilerState createState() => _CamilerState();
}

class _CamilerState extends State<Camiler> {
  final translator = GoogleTranslator();
  final input = "türkçe";
  var output;

// prints Vorrei comprare una macchina, se avessi i soldi.
  @override
  void initState() {
    translator.translate(widget.kelime, to: 'en').then((value) {
      setState(() {
        output = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    const List<Choice> choices = const <Choice>[
      const Choice(
          title: 'Lala Paşa',
          networkImage:
              "https://static.daktilo.com/sites/59/uploads/2018/03/23/lala-pasa-1521815254.jpg"),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          output.toString()
          //"${AppLocalizations.of(context).locale.languageCode}",
          ,
          style: TextStyle(
            color: Colors.black.withOpacity(0.8),
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            // child: GridView.count(
            //     crossAxisCount: 1,
            //     children: List.generate(choices.length, (index) {
            //       return Center(
            //         child: Container(child: ChoiceCard(choice: choices[index])),
            //       );
            //     }))
            ),
      ),
    );
  }
}

class Choice {
  const Choice({this.title, this.networkImage});

  final String title;
  final String networkImage;
}

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Container(
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: CachedNetworkImage(
              imageUrl: choice.networkImage,
              width: MediaQuery.of(context).size.width / 1.15,
              height: 160,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 180,
            width: MediaQuery.of(context).size.width / 1.15,
            child: Column(
              children: [
                Spacer(),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 40, right: 8),
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              bottomRight: Radius.circular(15)),
                          color: Colors.white70),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            choice.title,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black.withOpacity(0.8)),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
