import 'package:flutter/material.dart';
import 'package:navigate/list_item.dart';

class ShadesPage extends StatelessWidget {
  final MaterialAccentColor color;

  ShadesPage({required this.color});

  //One way to set array
  // final List<int> accentShades = [100, 200, 400, 700];

  @override
  Widget build(BuildContext context) {
    //Another way to set array
    final List<Color> accentShades = [
      color.shade100,
      color.shade200,
      color.shade400,
      color.shade700,
    ];

    return Scaffold(
      appBar: AppBar(
          title: Text('Shades'), backgroundColor: accentShades.elementAt(3)),
      //LISTVIEW
      // body: ListView(
      //   children: [
      //     ListItem(
      //       color: Colors.red,
      //     ),
      //   ],
      // ),

      body: ListView.builder(
          itemCount: accentShades.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                // navigateToShadePage(context);
              },
              child: ListItem(
                //Syntax to call first array
                // color: accentShades[index],

                //Syntax to call another array
                color: accentShades.elementAt(index),
              ),
            );
          }),
    );
  }
}
