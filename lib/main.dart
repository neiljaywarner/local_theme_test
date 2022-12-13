import 'package:flutter/material.dart';

void main() => runApp(MyApp());

const smallDefault = const TextTheme(bodyText2: TextStyle(fontSize: 15.0));
const bigDefault = const TextTheme(bodyText2: TextStyle(fontSize: 54.0));
var orangeBrown = ThemeData(scaffoldBackgroundColor: Colors.brown, textTheme: smallDefault, accentColor: Colors.orange);
var bluePink = ThemeData(scaffoldBackgroundColor: Colors.blue, textTheme: bigDefault, accentColor: Colors.pink);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Primary Text theme override',
        theme: orangeBrown,
        home: Scaffold(
            body: Center(
              child: Theme(
                data: bluePink,
                child: Text('?why small??'),
              ),
            ),
            floatingActionButton: Theme(
              data: bluePink,
              child: FloatingActionButton(
                onPressed: () {},
                child: const Icon(Icons.add),
              ),
            )),
      );
}
