import 'package:flutter/material.dart';

import 'images/images.dart';


class Image2 extends StatelessWidget {
  const Image2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -50,
      right: 0,
      left: 0,
      //top: 0,
      child: Center(
        child: Card(
          elevation:10,//its use for shadow
          //color: Colors.black54,
          color: Colors.black.withOpacity(.4),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50)
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.network(
              imgurl,
              width: 100,
              height: 100,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
