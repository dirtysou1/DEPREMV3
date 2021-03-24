import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:homescreen/DarkCard1ContainerBOutlined.dart';
import './Component221.dart';

class Yaknlarm extends StatelessWidget {
  Yaknlarm({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromSize(
            bounds: Rect.fromLTWH(0.0, 0.0, 375.0, 667.0),
            size: Size(375.0, 667.0),
            pinLeft: true,
            pinRight: true,
            pinTop: true,
            pinBottom: true,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/yakinbg.jpg'),
                  fit: BoxFit.cover,
                ),
                border: Border.all(width: 1.0, color: const Color(0x00000000)),
              ),
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(35.0, 35.0, 305.0, 48.0),
            size: Size(375.0, 667.0),
            pinLeft: true,
            pinRight: true,
            pinTop: true,
            fixedHeight: true,
            child: Text(
              'YAKINLARIM',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 36,
                color: const Color(0xffcf8e0c),
                letterSpacing: 3.6,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(127.0, 511.0, 121.0, 113.0),
            size: Size(375.0, 667.0),
            pinBottom: true,
            fixedWidth: true,
            fixedHeight: true,
            child: Component221(),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(35.0, 130.0, 128.0, 109.0),
            size: Size(375.0, 667.0),
            pinLeft: true,
            fixedWidth: true,
            fixedHeight: true,
            child: Container(child:DarkCard1ContainerBOutlined(),
              decoration: BoxDecoration(
                color: const Color(0x17ffffff),
                border: Border.all(width: 1.0, color: const Color(0x17707070)),
              ),
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(212.0, 266.0, 128.0, 109.0),
            size: Size(375.0, 667.0),
            pinRight: true,
            fixedWidth: true,
            fixedHeight: true,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0x17ffffff),
                border: Border.all(width: 1.0, color: const Color(0x17707070)),
              ),
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(212.0, 130.0, 128.0, 109.0),
            size: Size(375.0, 667.0),
            pinRight: true,
            fixedWidth: true,
            fixedHeight: true,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0x17ffffff),
                border: Border.all(width: 1.0, color: const Color(0x17707070)),
              ),
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(35.0, 266.0, 128.0, 109.0),
            size: Size(375.0, 667.0),
            pinLeft: true,
            fixedWidth: true,
            fixedHeight: true,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0x17ffffff),
                border: Border.all(width: 1.0, color: const Color(0x17707070)),
              ),
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(212.0, 402.0, 128.0, 109.0),
            size: Size(375.0, 667.0),
            pinRight: true,
            fixedWidth: true,
            fixedHeight: true,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0x17ffffff),
                border: Border.all(width: 1.0, color: const Color(0x17707070)),
              ),
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(35.0, 402.0, 128.0, 109.0),
            size: Size(375.0, 667.0),
            pinLeft: true,
            fixedWidth: true,
            fixedHeight: true,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0x17ffffff),
                border: Border.all(width: 1.0, color: const Color(0x17707070)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
