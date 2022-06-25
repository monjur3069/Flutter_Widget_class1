import 'package:flutter/material.dart';

import 'gesturedetector.dart';

class ThirdRow extends StatelessWidget {
  const ThirdRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: MyColumnButton(
                icon: Icons.call,
                text: 'CALL',
                onPressed: () {
                  print('Calling...');
                }),
          ),
          SizedBox(width: 5,),
          Container(
            height: 40,
            width: 1,
            color: Colors.white,
          ),
          SizedBox(width: 5,),
          Expanded(
            child: MyColumnButton(
                icon: Icons.route,
                text: 'ROUTE',
                onPressed: () {
                  print('Routing...');
                }),
          ),
          SizedBox(width: 5,),
          Container(
            height: 40,
            width: 1,
            color: Colors.white,
          ),
          SizedBox(width: 5,),
          Expanded(
            child: MyColumnButton(
                icon: Icons.share,
                text: 'SHARE',
                onPressed: () {
                  print('Sharing...');
                }),
          )
        ],
      ),
    );
  }
}
