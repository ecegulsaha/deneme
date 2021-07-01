import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';
import 'package:turizmatlasi/ekranlar/camiler.dart';
import 'package:turizmatlasi/ekranlar/cesmeler.dart';
import 'package:turizmatlasi/ekranlar/deneme.dart';
import 'package:turizmatlasi/ekranlar/dogaturizmi.dart';
import 'package:turizmatlasi/ekranlar/hanvehamamlar.dart';
import 'package:turizmatlasi/ekranlar/kalevekuleler.dart';
import 'package:turizmatlasi/ekranlar/kisturizmi.dart';
import 'package:turizmatlasi/ekranlar/kopruler.dart';
import 'package:turizmatlasi/ekranlar/medreseler.dart';
import 'package:turizmatlasi/ekranlar/muzeveorenyerleri.dart';
import 'package:turizmatlasi/ekranlar/tarihieserler.dart';
import 'package:turizmatlasi/ekranlar/termalturizm.dart';
import 'package:turizmatlasi/ekranlar/turbevekumbetler.dart';
import 'package:anim_search_bar/anim_search_bar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class Animal {
  final int id;
  final String name;

  Animal({
    this.id,
    this.name,
  });
}

class _HomeState extends State<Home> {
  List<Movie> favoriteMovies = [
    Movie('Uzundere'),
    Movie('Tortum'),
    Movie('Narman'),
    Movie('Yakutiye'),
    Movie('Palandöken'),
    Movie('İspir'),
    Movie('Oltu'),
    Movie('Ilıca'),
    Movie('Hasankale'),
  ];
  TextEditingController textController = TextEditingController();
  static List<Animal> _animals = [
    Animal(id: 1, name: "Uzundere"),
    Animal(id: 2, name: "Palandöken"),
    Animal(id: 3, name: "Aşkale"),
    Animal(id: 4, name: "Ilıca"),
    Animal(id: 5, name: "Aziziye"),
    Animal(id: 6, name: "Yakutiye"),
  ];
  final _items = _animals
      .map((animal) => MultiSelectItem<Animal>(animal, animal.name))
      .toList();

  List<Animal> _selectedAnimals5 = [];
  final _multiSelectKey = GlobalKey<FormFieldState>();

  @override
  void initState() {
    _selectedAnimals5 = _animals;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar:
      //  PreferredSize(
      //   preferredSize: Size.fromHeight(200),
      //   child: ClipPath(
      //     clipper: OvalBottomBorderClipper(),
      //     child: Container(
      //       height: 130,
      //       color: Color(0xff0e3e5b),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: <Widget>[
      //          // Icon(Icons.person),
      //          Title(color: Colors.white, child: Text(
      //             "TURİZM ATLASI",
      //             style: TextStyle(
      //                 color: Colors.white,
      //                 fontWeight: FontWeight.bold,
      //                 fontSize: 25),
      //           ),),

      //           AnimSearchBar(
      //             width: MediaQuery.of(context).size.width,
      //             textController: textController,
      //             suffixIcon: Icon(Icons.filter_alt_outlined),
      //             helpText: "Arama Yap",
      //             onSuffixTap: () {
      //               setState(() {
      //                 openDialog();
      //               });

      //               // setState(() {
      //               //   textController.clear();
      //               // });
      //             },
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
      appBar: AppBar(
        centerTitle: true, //Başlık ortalamak için
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(50),
            ),
            gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color(0xff0e3e5b).withOpacity(0.8),
                  Color(0xFF156296).withOpacity(0.8),
                ]),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Image.asset(
            "assets/mapp.jpeg",
            fit: BoxFit.contain,
          ),
        ),
        leadingWidth: MediaQuery.of(context).size.width / 6,
        //(Icon(Icons.map)),
        backgroundColor: Color(0xff0e3e5b),
        shadowColor: Colors.blueGrey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(50),
          ),
        ),
        toolbarHeight: MediaQuery.of(context).size.height / 7.5,
        title: Text(
          //"${AppLocalizations.of(context).locale.languageCode}",
          " TURİZM ATLASI",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 29,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AnimSearchBar(
              //width: 376,
              width: MediaQuery.of(context).size.width / 1.3,
              textController: textController,
              suffixIcon: Icon(
                Icons.filter_alt_outlined,
                size: 25,
              ),
              helpText: "Arama Yap",
              onSuffixTap: () {
                setState(() {
                  openDialog();
                });
                // setState(() {
                //   textController.clear();
                // });
              },
            ),
          ),

          // ClipPath(
          //   clipper: OvalTopBorderClipper(),
          //   child: Container(
          //     color: Color(0xff0e3e5b),
          //   ),
          // ),
          // MultiSelectDialogField(
          //   searchHint: 'Arama yap',
          //   confirmText: Text("Filtrele"),
          //   cancelText: Text("İptal"),
          //   searchable: true,
          //   backgroundColor: Colors.white.withOpacity(0.8),
          //   items: _items,
          //   title: Text("İlçeler"),
          //   selectedColor: Colors.black.withOpacity(0.8),
          //   decoration: BoxDecoration(
          //     color: Colors.black.withOpacity(0.1),
          //     borderRadius: BorderRadius.all(Radius.circular(40)),
          //     border: Border.all(
          //       color: Colors.white.withOpacity(0.8),
          //       width: 2,
          //     ),
          //   ),

          //   buttonIcon: Icon(
          //     Icons.search_outlined,
          //     color: Colors.white.withOpacity(0.8),
          //   ),
          //   // buttonText: Text(
          //   //   "Arama Yap",
          //   //   style: TextStyle(
          //   //     color: Colors.white.withOpacity(0.8),
          //   //     fontSize: 16,
          //   //   ),
          //   // ),
          //   onConfirm: (results) {
          //     //_selectedAnimals5 = results;
          //   },
          // ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                // width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height / 1.18,
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => KisTurizmi()));
                            },
                            child: IconStyle(
                                icon: Icon(
                                  Icons.ac_unit_rounded,
                                  color: Colors.blue,
                                  size: 30,
                                ),
                                label: "Çeşmeler"
                                //AppLocalizations.getString("kis_turizmi"),
                                ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Camiler(
                                            kelime: "camiler ",
                                          )));
                            },
                            child: IconStyle(
                                icon: Icon(
                                  Icons.local_florist,
                                  color: Colors.green,
                                  size: 30,
                                ),
                                label: "Kale ve Kuleler"
                                //AppLocalizations.getString("dogal_guzellikler"),
                                ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DogaTurizmi()));
                            },
                            child: IconStyle(
                                icon: Icon(
                                  Icons.account_balance,
                                  color: Colors.brown,
                                  size: 30,
                                ),
                                label: "Tarihi Camiler"
                                // AppLocalizations.getString("tarihi_eserler"),
                                ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HanveHamamlar()));
                            },
                            child: IconStyle(
                                icon: Icon(
                                  Icons.restaurant_rounded,
                                  color: Colors.redAccent[700],
                                  size: 30,
                                ),
                                label: "Medreseler"
                                //AppLocalizations.getString("yoresel_yemekler"),
                                ),
                          )
                        ],
                      ),
                    ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => KaleveKuleler()));
                            },
                            child: IconStyle(
                                icon: Icon(
                                  Icons.park,
                                  color: Colors.green[700],
                                  size: 30,
                                ),
                                label: "Türbe ve Kümbetler"
                                //AppLocalizations.getString("park_bahceler"),
                                ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Kopruler()));
                            },
                            child: IconStyle(
                                icon: Icon(
                                  Icons.house_rounded,
                                  color: Colors.pinkAccent,
                                  size: 30,
                                ),
                                label: "Han ve Hamamlar"
                                //AppLocalizations.getString("inanc_merkezleri"),
                                ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Medreseler()));
                            },
                            child: IconStyle(
                                icon: Icon(
                                  Icons.apartment_rounded,
                                  color: Colors.yellowAccent[700],
                                  size: 30,
                                ),
                                label: "Tarihi Askeri Yapılar"
                                //AppLocalizations.getString("kaplica_hamamlar"),
                                ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          MuzeveOrenyerleri()));
                            },
                            child: IconStyle(
                                icon: Icon(
                                  Icons.local_grocery_store_rounded,
                                  color: Colors.orangeAccent[700],
                                  size: 30,
                                ),
                                label: "Kilise ve Şopeller"
                                //AppLocalizations.getString("alisveris_merkezleri"),
                                ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TermalTurizm()));
                            },
                            child: IconStyle(
                                icon: Icon(
                                  Icons.museum_outlined,
                                  color: Colors.purple[800],
                                  size: 30,
                                ),
                                label: "Köprüler"
                                //AppLocalizations.getString("muzeler"),
                                ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          TurbeveKumbetler()));
                            },
                            child: IconStyle(
                                icon: Icon(
                                  Icons.notifications_on_outlined,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                label: "Sivil Mimari Eserleri"
                                //AppLocalizations.getString("etkinlikler"),
                                ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Cesmeler()));
                            },
                            child: IconStyle(
                                icon: Icon(
                                  Icons.live_tv_outlined,
                                  color: Colors.red[700],
                                  size: 30,
                                ),
                                label: "Şehitlikler"
                                //AppLocalizations.getString("canli_izle"),
                                ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TarihiEserler()));
                            },
                            child: IconStyle(
                                icon: Icon(
                                  Icons.live_tv_outlined,
                                  color: Colors.red[700],
                                  size: 30,
                                ),
                                label: "Doğa Turizmi"
                                //AppLocalizations.getString("canli_izle"),
                                ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TermalTurizm()));
                            },
                            child: IconStyle(
                                icon: Icon(
                                  Icons.museum_outlined,
                                  color: Colors.purple[800],
                                  size: 30,
                                ),
                                label: "Kış Turizmi"
                                //AppLocalizations.getString("muzeler"),
                                ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          TurbeveKumbetler()));
                            },
                            child: IconStyle(
                                icon: Icon(
                                  Icons.notifications_on_outlined,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                label: "Termal Turizm"
                                //AppLocalizations.getString("etkinlikler"),
                                ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Cesmeler()));
                            },
                            child: IconStyle(
                                icon: Icon(
                                  Icons.live_tv_outlined,
                                  color: Colors.red[700],
                                  size: 30,
                                ),
                                label: "Erzurum Yemekleri"
                                //AppLocalizations.getString("canli_izle"),
                                ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TarihiEserler()));
                            },
                            child: IconStyle(
                                icon: Icon(
                                  Icons.live_tv_outlined,
                                  color: Colors.red[700],
                                  size: 30,
                                ),
                                label: "Doğa Turizmi"
                                //AppLocalizations.getString("canli_izle"),
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(
              //   height: MediaQuery.of(context).size.height / 20,
              // ),
              Container(
                height: MediaQuery.of(context).size.height / 14,
                width: MediaQuery.of(context).size.width,
                child: Center(child: Image.asset('assets/erzurum.png')),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width,
                    maxHeight: MediaQuery.of(context).size.height / 4),
                //child: ClipPath(
                //clipper: OvalTopBorderClipper(),
                child: Container(
                  color: Color(0xff0e3e5b),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xff0e3e5b),
                                //border: Border.all(color: Colors.indigo, width: 0.5)
                              ),
                              margin: EdgeInsets.only(top: 20, left: 20),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  GestureDetector(
                                    child: Text(
                                      "KUDEB",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  GestureDetector(
                                    child: Text("Mevzuat",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Colors.white,
                                            decoration:
                                                TextDecoration.underline,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  GestureDetector(
                                    child: Text("Sit Alanı",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Colors.white,
                                            decoration:
                                                TextDecoration.underline,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  GestureDetector(
                                    child: Text("Onarım-Bakım",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Colors.white,
                                            decoration:
                                                TextDecoration.underline,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  GestureDetector(
                                    child: Text("Yapı Grupları",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Colors.white,
                                            decoration:
                                                TextDecoration.underline,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xff0e3e5b),
                                //     border: Border.all(color: Colors.indigo, width: 0.5)
                              ),
                              margin: EdgeInsets.only(top: 20),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  GestureDetector(
                                    child: Text(
                                      " ROTA",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  GestureDetector(
                                    child: Text("Kısa Rota",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Colors.white,
                                            decoration:
                                                TextDecoration.underline,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  GestureDetector(
                                    child: Text("Detaylı Rota",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Colors.white,
                                            decoration:
                                                TextDecoration.underline,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  GestureDetector(
                                    child: Text("Tarihi Erzurum",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Colors.white,
                                            decoration:
                                                TextDecoration.underline,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  GestureDetector(
                                    child: Text("Doğa Erzurum",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Colors.white,
                                            decoration:
                                                TextDecoration.underline,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xff0e3e5b),
                                // border: Border.all(color: Colors.indigo, width: 0.5)
                              ),
                              margin: EdgeInsets.only(top: 20, right: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  GestureDetector(
                                    child: Text(
                                      "DİĞER",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  GestureDetector(
                                    child: Text("Masallar",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Colors.white,
                                            decoration:
                                                TextDecoration.underline,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  GestureDetector(
                                    child: Text("Efsaneler",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Colors.white,
                                            decoration:
                                                TextDecoration.underline,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  GestureDetector(
                                    child: Text("Ünlüler",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Colors.white,
                                            decoration:
                                                TextDecoration.underline,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  GestureDetector(
                                    child: Text("El Sanatları",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Colors.white,
                                            decoration:
                                                TextDecoration.underline,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void openDialog() {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: Text('İlçeler'),
            actions: <Widget>[
              GestureDetector(
                child: Text(
                  "Filtrele",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
              )
            ],
            content: Container(
              width: 300,
              height: 400,
              child: Deneme(favoriteMovies),
            ),
          );
        });
  }
}

class IconStyle extends StatelessWidget {
  final Icon icon;
  final String label;
  IconStyle({this.label, this.icon});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.8,
      child: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              // decoration: BoxDecoration(
              //   border: Border.all(color: Colors.black),
              //   borderRadius: BorderRadius.circular(50),
              // ),
              child: icon,
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                height: 50,
                width: 80,
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff0e3e5b),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
