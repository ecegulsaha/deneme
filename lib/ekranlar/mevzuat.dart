import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Mevzuat extends StatefulWidget {
  @override
  _MevzuatState createState() => _MevzuatState();
}

class _MevzuatState extends State<Mevzuat> {
  @override
  Widget build(BuildContext context) {
    const List<Choice> choices = const <Choice>[
      const Choice(
          title: 'Lala Paşa',
          networkImage:
              "https://static.daktilo.com/sites/59/uploads/2018/03/23/lala-pasa-1521815254.jpg"),
    ];
    return ListView.builder(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      itemCount: choices == null ? 0 : choices.length,
      itemBuilder: (BuildContext context, int index) {
        return ChoiceCard();
      },
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
      margin: EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: Color(0xffE9F4F9),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
            child: CachedNetworkImage(
              imageUrl: choice.networkImage,
              width: 110,
              height: 90,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
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
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
