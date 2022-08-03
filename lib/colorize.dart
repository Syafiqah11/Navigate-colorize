import 'package:flutter/material.dart';
import 'package:navigate/main.dart';
import 'home_page.dart';
// import 'package:flutter_slider_indicator/flutter_slider_indicator.dart';

class ColorizePage extends StatefulWidget {
  const ColorizePage({Key? key}) : super(key: key);

  @override
  State<ColorizePage> createState() => _ColorizePageState();
}

class _ColorizePageState extends State<ColorizePage> {
  int _RcurrentValue = 0;
  int _GcurrentValue = 0;
  int _BcurrentValue = 0;

  void navigateToMainPage() {
    // BuildContext context,
    // Colorpicker colorpicker,
    //BuildContext context to pass/link data from below context
    Navigator.push(
      context,
      MaterialPageRoute(builder: (BuildContext context) {
        return MyApp();
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Choose Color')),
      body: Column(
        children: <Widget>[
          Slider(
            value: _RcurrentValue.toDouble(),
            max: 255,
            // divisions: 5,
            label: _RcurrentValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _RcurrentValue = value.round();
              });
            },
          ),
          Slider(
            value: _GcurrentValue.toDouble(),
            max: 255,
            // divisions: 5,
            label: _GcurrentValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _GcurrentValue = value.round();
              });
            },
          ),
          Slider(
            value: _BcurrentValue.toDouble(),
            max: 255,
            // divisions: 5,
            label: _BcurrentValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _BcurrentValue = value.round();
              });
            },
          ),
          Text('Select Color'),
          Center(
            child: Container(
              width: 100,
              height: 100,
              margin: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(70),
                color: Color.fromRGBO(
                    _RcurrentValue, _GcurrentValue, _BcurrentValue, 1),
              ),
            ),
          ),
          const SizedBox(height: 30),
          TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey)),
              onPressed: () {
                navigateToMainPage();
              },
              child: const Text(
                'Select this color',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
