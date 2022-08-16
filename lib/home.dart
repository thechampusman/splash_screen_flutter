// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2F2F4C),
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/tc.jpg'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  // color: Colors.redAccent,
                ),
                // child: Image.asset('assets/images/tc.jpg'),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Hey, Champion",
                style: TextStyle(color: Color(0xFFB4B6CA), fontSize: 20),
              ),
            ],
          )
        ],
      ),
    );
  }
}
