import 'package:flutter/material.dart';

void main () => runApp(BytebankApp());

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green.shade900,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.green.shade900,
          secondary: Colors.blueAccent.shade700,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent.shade700),
          ),
      )),
      home: Dashboard(),
    );
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Dashboard'),
//              backgroundColor: Colors.green[900],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset('images/bytebank_logo.png'),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB (16.0,16.0,16.0,24.0),
            child: Container(
              padding: EdgeInsets.all(8.0),
              height: 100,
              width: 150,
//              color: Colors.green[900],
              color: Theme.of(context).primaryColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Icon(Icons.people,
                    size: 32.0,
                    color: Colors.white,
                  ),
                  Text('Contacts',
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
