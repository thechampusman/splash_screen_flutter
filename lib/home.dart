// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
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
              height: 5.76117.h,
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
                        fontSize: 3.20065.h),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2.h,
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
                        // Container(
                        //   height: 38.40786.h,
                        //   width: 47.37966.w,
                        //   color: Color(0xFFE8EBE8),
                        //   //E8EBE8
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 50, left: 10, right: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50)),
                            height: 29.32629.h,
                            width: 42.37963.w,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 120),
                              child: Column(
                                children: [
                                  Text(
                                    test[index].title,
                                    style: TextStyle(
                                        fontFamily: "AnekTelugu ",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 3.18473.h),
                                  ),
                                  Spacer(),
                                  InkWell(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 35),
                                      child: Image.asset(
                                        "assets/images/subscribe.png",
                                        height: 3.864996.h,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            left: 6.09259.w,
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              child: Image.asset(
                                test[index].pngPath,
                                height: 18.2039.h,
                                //fit: BoxFit.fill,
                                width: 35.19447.w,
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
