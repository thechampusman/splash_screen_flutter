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
                        fontSize: 4.20065.h),
                  ),
                ],
              ),
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                    child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: vertcal1.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: Stack(children: [
                        // Container(
                        //   height: 38.40786.h,
                        //   width: 47.37966.w,
                        //   color: Color(0xFFE8EBE8),
                        //   //E8EBE8
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 50, left: 15, right: 15),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50)),
                            height: 30.32629.h,
                            width: 48.37963.w,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 120),
                              child: Column(
                                children: [
                                  Text(
                                    vertcal1[index].title,
                                    style: TextStyle(
                                        fontFamily: "AnekTelugu ",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 3.18473.h),
                                  ),
                                  Spacer(),
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary:
                                              Color(vertcal1[index].btcolor)),
                                      onPressed: () {},
                                      child: Text(vertcal1[index].bttitle))
                                  // InkWell(
                                  //   child: Padding(
                                  //     padding:
                                  //         const EdgeInsets.only(bottom: 35),
                                  //     child: Image.asset(
                                  //       "assets/images/subscribe.png",
                                  //       height: 3.864996.h,
                                  //     ),
                                  //   ),
                                  // )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            top: 2.3044719.h,
                            left: 9.09259.w,
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              child: Image.asset(
                                vertcal1[index].pngPath,
                                height: 18.2039.h,
                                //fit: BoxFit.fill,
                                width: 32.19447.w,
                              ),
                            ))
                      ]),
                    );
                  },
                )),
                Expanded(
                    child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: vertical2.length,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: 25, top: index == 0 ? 75 : 0),
                          child: Stack(children: [
                            // Container(
                            //   height: 38.40786.h,
                            //   width: 47.37966.w,
                            //   color: Color(0xFFE8EBE8),
                            //   //E8EBE8
                            // ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 50, left: 15, right: 15),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                height: 30.32629.h,
                                width: 48.37963.w,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 120),
                                  child: Column(
                                    children: [
                                      Text(
                                        vertical2[index].title,
                                        style: TextStyle(
                                            fontFamily: "AnekTelugu ",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 3.18473.h),
                                      ),
                                      Spacer(),
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              primary: Color(
                                                  vertical2[index].btcolor)),
                                          onPressed: () {},
                                          child: Text(vertical2[index].bttitle))
                                      // InkWell(
                                      //   child: Padding(
                                      //     padding:
                                      //         const EdgeInsets.only(bottom: 35),
                                      //     child: Image.asset(
                                      //       "assets/images/subscribe.png",
                                      //       height: 3.864996.h,
                                      //     ),
                                      //   ),
                                      // )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                                top: 2.3044719.h,
                                left: 9.09259.w,
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  child: Image.asset(
                                    vertical2[index].pngPath,
                                    height: 18.2039.h,
                                    //fit: BoxFit.fill,
                                    width: 32.19447.w,
                                  ),
                                ))
                          ]),
                        ),
                      ],
                    );
                  },
                )),
              ],
            )

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

List<Place> vertical2 = [
  Place(
      pngPath: "assets/images/youtube.png",
      title: "YouTube",
      bttitle: "SUBCRIBE",
      btcolor: 0XFFE51D20),

  Place(
      pngPath: "assets/images/instagram.png",
      title: "Instagram",
      bttitle: "Follow",
      btcolor: 0XFFCB6619),

//  StarClass("path","tirle"),
//  StarClass("path","tirle"),
];
List<Place> vertcal1 = [
  Place(
      pngPath: "assets/images/github.png",
      title: "Github",
      bttitle: "REPO",
      btcolor: 0XFF2C2C2C),

  Place(
      pngPath: "assets/images/telegram.png",
      title: "Telegram",
      bttitle: "Open",
      btcolor: 0XFF3DC4E5),
//  StarClass("path","tirle"),
//  StarClass("path","tirle"),
];
