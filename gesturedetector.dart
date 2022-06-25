import 'package:flutter/material.dart';

import 'styles/colors.dart';
import 'styles/text_styles.dart';

class MyColumnButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onPressed;

  const MyColumnButton(
      {Key? key,
      required this.icon,
      required this.text,
      required this.onPressed
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //GestureDetector use for tap able
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        width: 80,
        height: 80,
        //After using BoxDecoration color must be inside to BoxDecoration
        decoration: BoxDecoration(
            color: mycolor3,
            borderRadius: BorderRadius.circular(15),
            //shape: BoxShape.circle
            boxShadow: [
              BoxShadow(
                  offset: Offset(5, 5), //controlling shadow using this
                  color: greycolor,
                  blurRadius: 7,
                  spreadRadius: 1),
            ],
            gradient: LinearGradient(stops: [.5, .5],
                colors: [
              mycolor2,
              orange,
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: mycolor,),
            Text(text,style: txtwhite,
            )
          ],
        ),
      ),
    );
  }
}
