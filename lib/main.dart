import 'package:animator/animator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/background.jpg'),
                fit: BoxFit.cover,
              )),
              child: Container(
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(begin: Alignment.bottomCenter, colors: [
                  Colors.black.withOpacity(.9),
                  Colors.black.withOpacity(.3),
                ])),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 250,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            makeItem(image: 'assets/images/place1.jpg'),
                            makeItem(image: 'assets/images/place2.jpg'),
                            makeItem(image: 'assets/images/place3.jpg'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ),
              ),
            ),
            makePoint(top: 140.0, left: 40.0),
            makePoint(top: 190.0, left: 190.0),
            makePoint(top: 219.0, left: 60.0),
          ],
        ),
      ),
    );
  }
  Widget makePoint({top, left}){
    return Positioned(
      top: top,
      left: left,
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white.withOpacity(0.3),
        ),
      ),
    );
  }

  Widget makeItem({image}) {
    return AspectRatio(
      aspectRatio: 1.7 / 2,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.cover,
                      )),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey[200]),
                  child: Text(
                    '2.1 mi',
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Desert of Rajasthan',
              style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10,),
            Align(
              alignment: Alignment.bottomRight,
              child: Icon(
                Icons.star_border,
                color: Colors.yellow[700],
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
