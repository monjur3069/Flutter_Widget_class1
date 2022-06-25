import 'package:class6/button_row.dart';
import 'package:flutter/material.dart';

import 'ListTile.dart';
import 'gesturedetector.dart';
import 'image1.dart';
import 'image2.dart';
import 'text/text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,

      ),
      home: SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: false,
          appBar: AppBar(
            title: Center(child: Text('Hello World')),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [Image1(), Image2()],
                ),
                SizedBox(
                  height: 40,
                ),
                List_Tile(),
                ThirdRow(),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(longText),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Mypage(),
    );
  }

}*/
