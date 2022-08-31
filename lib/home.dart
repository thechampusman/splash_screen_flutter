// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:splash_screen_thechamp/models.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(235, 255, 255, 255),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 45,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SvgPicture.asset(
                'assets/images/clouds.svg',
                // height: 70.0,
                // width: 50.0,
                // allowDrawingOutsideViewBox: true,
              ), //
            ),
            Padding(
              padding: const EdgeInsets.only(left: 45),
              child: Row(
                children: [
                  Text(
                    "Hey, Champion",
                    style: TextStyle(
                        fontFamily: "AnekTelugu ",
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 180,
            ),

            MasonryGridView.count(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: test.length,
                crossAxisCount: 2,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: Stack(children: [
                        Container(
                          height: 300,
                          width: 190,
                          color: Color(0xFFE8EBE8),
                          //E8EBE8
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 50, left: 10, right: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50)),
                            height: 240,
                            width: 190,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 120),
                              child: Column(
                                children: [
                                  Text(
                                    test[index].title,
                                    style: TextStyle(
                                        fontFamily: "AnekTelugu ",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 28),
                                  ),
                                  Spacer(),
                                  InkWell(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 35),
                                      child: Image.asset(
                                        "assets/images/subscribe.png",
                                        height: 38,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            left: 20,
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              child: Image.asset(
                                test[index].pngPath,
                                height: 150,
                                fit: BoxFit.fill,
                                width: 150,
                              ),
                            ))
                      ]));
                }),
            // ListView.builder(
            //     shrinkWrap: true,
            //     physics: NeverScrollableScrollPhysics(),
            //     itemCount: test.length,
            //     itemBuilder: (context, index) {
            //       return Padding(
            //         padding: const EdgeInsets.only(bottom: 50),
            //         child: Stack(
            //           children: [
            //             Container(
            //               height: 300,
            //               width: 190,
            //               color: Color(0xFFE8EBE8),
            //               //E8EBE8
            //             ),
            //             Padding(
            //               padding: const EdgeInsets.only(top: 50),
            //               child: Container(
            //                 decoration: BoxDecoration(
            //                     color: Colors.white,
            //                     borderRadius: BorderRadius.circular(50)),
            //                 height: 240,
            //                 width: 190,
            //                 child: Padding(
            //                   padding: const EdgeInsets.only(top: 120),
            //                   child: Column(
            //                     children: [
            //                       Text(
            //                         test[0].title,
            //                         style: TextStyle(
            //                             fontFamily: "AnekTelugu ",
            //                             fontWeight: FontWeight.bold,
            //                             fontSize: 28),
            //                       ),
            //                       Spacer(),
            //                       InkWell(
            //                         child: Padding(
            //                           padding:
            //                               const EdgeInsets.only(bottom: 35),
            //                           child: Image.asset(
            //                             "assets/images/subscribe.png",
            //                             height: 38,
            //                           ),
            //                         ),
            //                       )
            //                     ],
            //                   ),
            //                 ),
            //               ),
            //             ),
            //             Positioned(
            //                 left: 20,
            //                 child: ClipRRect(
            //                   borderRadius:
            //                       BorderRadius.all(Radius.circular(10)),
            //                   child: Image.asset(
            //                     test[index].pngPath,
            //                     height: 150,
            //                     fit: BoxFit.fill,
            //                     width: 150,
            //                   ),
            //                 ))
            //           ],
            //         ),
            //       );
            //     }),
          ],
        ),
      ),
    );
  }
}

List<Place> test = [
  Place(pngPath: "assets/images/youtube.png", title: "YouTube"),
  Place(pngPath: "assets/images/github.png", title: "Github"),
  Place(pngPath: "assets/images/instagram.png", title: "Instagram"),
  Place(pngPath: "assets/images/telegram.png", title: "Telegram"),
//  StarClass("path","tirle"),
//  StarClass("path","tirle"),
];
