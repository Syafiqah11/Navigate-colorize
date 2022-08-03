import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final Color color;

  const ListItem({required this.color}); //required this.color(constructor)

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      margin: const EdgeInsets.only(bottom: 10),
    );
  }
}
