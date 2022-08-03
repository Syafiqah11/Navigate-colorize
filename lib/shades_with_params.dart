import 'package:flutter/material.dart';
import 'package:navigate/shades_page.dart';

class ShadesWithParam extends StatelessWidget {
  const ShadesWithParam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data =
        ModalRoute.of(context)!.settings.arguments as MaterialAccentColor;

    return ShadesPage(
      color: data,
    );
  }
}
