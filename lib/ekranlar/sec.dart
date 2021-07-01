// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:discounttour/app_localizations.dart';
// import 'package:discounttour/data/Kesfet.dart';
// import 'package:discounttour/data/Post.dart';
// import 'package:discounttour/data/Services.dart';
// import 'package:discounttour/data/data.dart';
// import 'package:discounttour/model/popular_tours_model.dart';
// import 'package:discounttour/views/home.dart';
// import 'package:discounttour/views/yorum.dart';
// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'kesfet.dart';
// import 'konum.dart';

// class Details extends StatefulWidget {
//   final String imgUrl;
//   final String placeName;
//   final String ilce;
//   final String ulasim;
//   final String aciklama;
//   final String konumX;
//   final String konumY;
//   final int id;
//   final int enId;
//   final String ad_in;
//   final String aciklama_in;
//   final int Kid;

//   Details({
//     @required this.imgUrl,
//     @required this.placeName,
//     @required this.ilce,
//     @required this.ulasim,
//     @required this.aciklama,
//     @required this.konumX,
//     @required this.konumY,
//     @required this.id,
//     @required this.enId,
//     @required this.aciklama_in,
//     @required this.ad_in,
//     @required this.Kid,
//   });

//   @override
//   _DetailsState createState() => _DetailsState();
// }

// class _DetailsState extends State<Details> {
//   List<VeriGetir> posts;
//   List<KesfetGetir> Kesfetv;
//   bool ulasim = false;
//   bool kesfet = false;
//   bool hakkinda = true;
//   bool liked = false;
//   bool visib = false;
//   String link;
//   String kodDil;
//   String deneme;

//   bool konum = false;
//   List<PopularTourModel> popularTourModels = new List();

//   @override
//   void initState() {
//     popularTourModels = getPopularTours();
//     super.initState();
//     if (widget.id == 69) {
//       link = 'https://www.mngavm.com/';
//       visib = true;
//     } else if (widget.id == 70) {
//       link = 'https://www.forum-erzurum.com.tr/';
//       visib = true;
//     } else if (widget.id == 72) {
//       link = 'http://palerium.com.tr/';
//       visib = true;
//     } else {
//       visib = false;
//     }
//     //ulasim = false;
//     kesfet = false;
//     konum = false;
//     liked = false;
//     setState(() {});

//     Services.getPosts().then((list) {
//       setState(() {
//         posts = list;
//       });
//     });
//   }

//   // cevir() async{
//   //  kodDil="${AppLocalizations.of(context).locale.languageCode}";
//   //  if(kodDil=="en"){
//   //    deneme=widget.ulasim;
//   //  }
//   //  else{
//   //    deneme=widget.aciklama;
//   //  }
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Container(
//           child: Column(
//             children: [
//               Stack(
//                 children: [
//                   Image.network(
//                     widget.imgUrl,
//                     height: 300,
//                     width: MediaQuery.of(context).size.width,
//                     fit: BoxFit.cover,
//                   ),
//                   Container(
//                     padding: EdgeInsets.only(
//                       top: 40,
//                       left: 330,
//                       right: 0,
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       // children: [
//                       //   GestureDetector(
//                       //     onTap: () {
//                       //       setState(() {
//                       //         liked = true;
//                       //       });
//                       //     },
//                       //     child: Container(
//                       //       child: Icon(
//                       //         Icons.favorite,
//                       //         color: liked ? Colors.red : Colors.white,
//                       //         size: 24,
//                       //       ),
//                       //     ),
//                       //   ),
//                       // ],
//                     ),
//                   ),
//                   Container(
//                     height: 300,
//                     color: Colors.black12,
//                     padding: EdgeInsets.only(top: 50),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Container(
//                           padding: EdgeInsets.only(
//                             left: 24,
//                             right: 24,
//                           ),
//                           child: Row(
//                             children: [
//                               GestureDetector(
//                                 onTap: () {
//                                   Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                           builder: (context) => Home(
//                                                 Kid: widget.Kid,
//                                               )));
//                                 },
//                                 child: Container(
//                                   child: Icon(
//                                     Icons.arrow_back,
//                                     color: Colors.white,
//                                     size: 24,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),

//                         Spacer(), // başlık
//                         Container(
//                           padding: EdgeInsets.only(
//                             left: 24,
//                             right: 24,
//                           ),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               AppLocalizations.of(context)
//                                           .locale
//                                           .languageCode ==
//                                       "tr"
//                                   ? Text(
//                                       widget.placeName,
//                                       style: TextStyle(
//                                           color: Colors.white,
//                                           fontWeight: FontWeight.w600,
//                                           fontSize: 23),
//                                     )
//                                   : Text(
//                                       widget.ad_in,
//                                       style: TextStyle(
//                                           color: Colors.white,
//                                           fontWeight: FontWeight.w600,
//                                           fontSize: 23),
//                                     ),
//                               SizedBox(
//                                 height: 12,
//                               ),
//                               Row(
//                                 children: [
//                                   Icon(
//                                     Icons.location_on,
//                                     color: Colors.red.withOpacity(0.8),
//                                     size: 25,
//                                   ),
//                                   SizedBox(
//                                     width: 8,
//                                   ),
//                                   Text(
//                                     widget.ilce,
//                                     style: TextStyle(
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.w500,
//                                         fontSize: 17),
//                                   ),
//                                 ],
//                               ),
//                               SizedBox(
//                                 height: 8,
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: 18,
//                         ),
//                         Container(
//                           width: MediaQuery.of(context).size.width,
//                           decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.only(
//                                   topLeft: Radius.circular(30),
//                                   topRight: Radius.circular(30))),
//                           height: 20,
//                         )
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         ulasim = false;
//                       });
//                     },
//                     child: IconStyle(
//                       icon: Icon(Icons.subject_rounded, color: Colors.black),
//                       label: AppLocalizations.getString("hakkinda"),
//                     ),
//                   ),

//                   // GestureDetector(
//                   //   onTap: () {
//                   //     setState(() {
//                   //       ulasim = true;
//                   //     });
//                   //   },
//                   //   child: IconStyle(
//                   //     icon:
//                   //         Icon(Icons.public, color: Colors.teal[600]),
//                   //         label:("Ulasim"),
//                   //     //label: AppLocalizations.getString("siteye_git"),
//                   //   ),
//                   // ),

//                   GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => Yorum(
//                                       Kid: widget.Kid,
//                                       id: widget.id,
//                                     )));
//                       },
//                       child: IconStyle(
//                         icon: Icon(
//                           Icons.chat,
//                           color: Colors.teal[600],
//                         ),
//                         label: AppLocalizations.getString("yorumlar"),
//                       )

//                       //label: AppLocalizations.getString("siteye_git"),
//                       ),

//                   Visibility(
//                     visible: visib,
//                     child: GestureDetector(
//                         onTap: () {
//                           _launchURL(link);
//                         },
//                         child: IconStyle(
//                           icon: Icon(
//                             Icons.public,
//                             color: Colors.lightBlue[900],
//                           ),
//                           label: AppLocalizations.getString("siteye_git"),
//                         )),
//                   ),

//                   GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => Kesfet(
//                                     imgUrl: widget.imgUrl,
//                                     placeName: widget.placeName,
//                                     ilce: widget.ilce,
//                                     ulasim: widget.ulasim,
//                                     aciklama: widget.aciklama,
//                                     konumX: widget.konumX,
//                                     konumY: widget.konumY,
//                                     id: widget.id,
//                                     enId: widget.enId,
//                                     aciklama_in: widget.aciklama_in,
//                                     ad_in: widget.ad_in,
//                                     Kid: widget.Kid,
//                                   )));
//                     },
//                     child: IconStyle(
//                       icon:
//                           Icon(Icons.filter_rounded, color: Colors.orange[700]),
//                       label: AppLocalizations.getString("gorseller"),
//                     ),
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => Konum(
//                                     imgUrl: widget.imgUrl,
//                                     placeName: widget.placeName,
//                                     ilce: widget.ilce,
//                                     ulasim: widget.ulasim,
//                                     aciklama: widget.aciklama,
//                                     konumX: widget.konumX,
//                                     konumY: widget.konumY,
//                                     id: widget.id,
//                                     enId: widget.enId,
//                                     aciklama_in: widget.aciklama_in,
//                                     ad_in: widget.ad_in,
//                                     Kid: widget.Kid,
//                                   )));
//                     },
//                     child: IconStyle(
//                       icon: Icon(Icons.location_on, color: Colors.red),
//                       label: AppLocalizations.getString("konum"),
//                     ),
//                   ),
//                 ],
//               ),
//               Column(
//                 children: <Widget>[
//                   Container(
//                     padding: EdgeInsets.symmetric(horizontal: 24),
//                     child: (AppLocalizations.of(context).locale.languageCode ==
//                             "tr")
//                         ? Text(
//                             widget.aciklama,
//                             textAlign: TextAlign.justify,
//                             style: TextStyle(
//                               fontSize: 15,
//                               height: 1.5,
//                               fontWeight: FontWeight.w400,
//                               color: Colors.black.withOpacity(0.8),
//                             ),
//                           )
//                         : Text(
//                             widget.aciklama_in,
//                             textAlign: TextAlign.justify,
//                             style: TextStyle(
//                               fontSize: 15,
//                               height: 1.5,
//                               fontWeight: FontWeight.w400,
//                               color: Colors.black.withOpacity(0.8),
//                             ),
//                           ),
//                   ),
//                 ],
//               ),

//               // Column(
//               //   children: <Widget>[
//               //     Container(
//               //       padding: EdgeInsets.symmetric(horizontal: 24),
//               //       child: (ulasim == true && AppLocalizations.of(context).locale.languageCode=="en")
//               //           ? Text(
//               //               widget.aciklama_in,
//               //               textAlign: TextAlign.justify,
//               //               style: TextStyle(
//               //                 fontSize: 15,
//               //                 height: 1.5,
//               //                 fontWeight: FontWeight.w400,
//               //                 color: Colors.black.withOpacity(0.8),
//               //               ),
//               //             )
//               //           : Text(
//               //               widget.aciklama,
//               //               textAlign: TextAlign.justify,
//               //               style: TextStyle(
//               //                 fontSize: 15,
//               //                 height: 1.5,
//               //                 fontWeight: FontWeight.w400,
//               //                 color: Colors.black.withOpacity(0.8),
//               //               ),
//               //             ),
//               //     ),
//               //   ],
//               // ),
//               SizedBox(
//                 height: 16,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// _launchURL(dynamic link) async {
//   if (await canLaunch(link)) {
//     await launch(link);
//   } else {
//     throw 'Could not launch $link';
//   }
// }

// class IconStyle extends StatelessWidget {
//   final Icon icon;
//   final String label;
//   IconStyle({this.label, this.icon});

//   @override
//   Widget build(BuildContext context) {
//     return Opacity(
//       opacity: 0.8,
//       child: Container(
//         child: Column(
//           children: [
//             Container(
//               padding: EdgeInsets.all(8),
//               decoration: BoxDecoration(
//                   border: Border.all(color: Colors.black),
//                   borderRadius: BorderRadius.circular(40)),
//               child: icon,
//             ),
//             SizedBox(
//               height: 9,
//             ),
//             Container(
//                 height: 40,
//                 width: 70,
//                 child: Text(
//                   label,
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.black),
//                 ))
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ImageListTile extends StatelessWidget {
//   final String imgUrl;
//   ImageListTile({@required this.imgUrl});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(right: 8),
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(16),
//         child: CachedNetworkImage(
//           imageUrl: imgUrl,
//           height: 220,
//           width: 150,
//           fit: BoxFit.cover,
//         ),
//       ),
//     );
//   }
// }
