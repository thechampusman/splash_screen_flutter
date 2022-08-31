import 'package:flutter/material.dart';

class iconholder extends StatefulWidget {
  const iconholder({Key key}) : super(key: key);

  @override
  State<iconholder> createState() => _iconholderState();
}

class _iconholderState extends State<iconholder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 300,
            width: 190,
            color: Color(0xFFE8EBE8),
            //E8EBE8
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
              height: 250,
              width: 190,
            ),
          ),
          Positioned(
              left: 20,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Image.asset(
                  "assets/images/youtube.png",
                  height: 150,
                ),
              ))
        ],
      ),
    );
  }
}
