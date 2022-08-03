import 'package:flutter/material.dart';
import 'package:navigate/list_item.dart';
import 'package:navigate/shades_page.dart';
import 'package:navigate/shades_with_params.dart';
import 'package:navigate/colorize.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Colors'),
      //Static Navigation
      routes: {
        '/shades': (context) => ShadesWithParam(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  //Page Route function - push screen to new page
  void navigateToShadePage(
    BuildContext context,
    MaterialAccentColor color,
  ) {
    //BuildContext context to pass/link data from below context
    Navigator.push(
      context,
      MaterialPageRoute(builder: (BuildContext context) {
        return ShadesPage(color: color);
      }),
    );
  }

  void navigateToColorizePage() {
    //BuildContext context to pass/link data from below context
    Navigator.push(
      context,
      MaterialPageRoute(builder: (BuildContext context) {
        return ColorizePage();
      }),
    );
  }

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // const List<Color> colorCodes = Colors.accents;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      //ARRAY PASSSING DATA
      // body: ListView.builder(
      //   itemCount: colorCodes.length, //get entries length
      //   // scrollDirection: Axis.horizontal, //scroll the screen horizontal
      //   itemBuilder: (BuildContext context, int index) {
      //     return Container(
      //       height: 50,
      //       color: colorCodes[index], //get colorCodes array
      //       // child: Center(child: Text(' ${colorCodes[index]}')),
      //     );
      //   },
      // ),

      //LISTVIEW get ListItem from list_item.dart
      // body: ListView(children: [
      //   ListItem(color: Colors.yellow),
      //   ListItem(color: Colors.amber),
      //   ListItem(color: Colors.orange),
      // ]),

      //LISTVIEW.builder get ListItem from list_item.dart
      body: ListView.builder(
          itemCount: Colors.accents.length, //set value to display few only
          itemBuilder: (BuildContext context, int index) {
            //onTap Action when click color
            return GestureDetector(
              onTap: () {
                navigateToShadePage(context, Colors.accents.elementAt(index));
              },
              child: ListItem(
                color: Colors.accents.elementAt(index),
              ),
            );
            //LIST ITEM - No action
            // return ListItem(
            //     color: Colors.accents.elementAt(
            //         index)); //Colors.accents return List<Color> array, need to use elementAt(index)
          }),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          navigateToColorizePage();
        },
        tooltip: 'Colorize Tool',
        child: const Icon(Icons.colorize),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
