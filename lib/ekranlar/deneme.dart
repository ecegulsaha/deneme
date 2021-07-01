import 'package:flutter/material.dart';


class Deneme extends StatefulWidget {
  List<Movie> favoriteMovies;

  Deneme(this.favoriteMovies);

  @override
  _DenemeState createState() => _DenemeState();
}

class _DenemeState extends State<Deneme> {
  static List deneme = [];
  List yeni = new List();
  int sayac=0;
  @override
    // void initState() {
    //   setState(() {
    //           sayac=0;
    //         });
    //   // TODO: implement initState
    //   super.initState();
    // }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (ctx, index) {
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            widget.favoriteMovies[index].isSelected = !widget.favoriteMovies[index].isSelected;
            //deneme[sayac]=widget.favoriteMovies[index].isSelected;
            if (widget.favoriteMovies[index].isSelected==true) {
              yeni.add(index);
              print(yeni);
              
            } else {
            yeni.remove(index);
            print(yeni);

            }
            
            setState(() {
              
            
            });
          },
          child: Container(
            color: widget.favoriteMovies[index].isSelected
                ? Colors.grey[300]
                : null,
            child: Row(
              children: <Widget>[
                Checkbox(
                    value: widget.favoriteMovies[index].isSelected,
                     onChanged: (s) {
                       widget.favoriteMovies[index].isSelected = !widget.favoriteMovies[index].isSelected;
                      setState(() {
                        
                      });
                    }),
                Text(widget.favoriteMovies[index].movieName)
              ],
            ),
          ),
        );
      },
      itemCount: widget.favoriteMovies.length,
    );
  }
}

class Movie{
  Movie(this.movieName);

  String movieName;
  bool isSelected=false;
}