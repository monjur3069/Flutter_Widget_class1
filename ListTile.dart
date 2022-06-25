import 'package:flutter/material.dart';

import 'styles/colors.dart';
import 'styles/text_styles.dart';

class List_Tile extends StatelessWidget {
  const List_Tile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18)
        ),
        dense: true,
        onTap: () {
          print('ListTile clicked');
        },
        tileColor: Colors.blueGrey,
        title: Text('Beutiful Nature',style: txtwhite,),
        subtitle: Text('Locate I don`t know',style: txtwhite,),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.star,color: mycolor,),
            Text('99')
          ],
        ),

      ),
    );
  }
}
