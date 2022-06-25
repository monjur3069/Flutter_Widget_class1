import 'package:flutter/material.dart';

import 'images/images.dart';


class Image1 extends StatelessWidget {
  const Image1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imgurl,
      width: double.infinity,
      height: 350,
      fit: BoxFit.fill,
    );
  }
}
