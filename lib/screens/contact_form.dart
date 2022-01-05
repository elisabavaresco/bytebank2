import 'package:flutter/material.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New contact'),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              labelText: 'Full name',
            ),
            style: TextStyle(
              fontSize: 24.0,
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Account Number',
            ),
            style: TextStyle(
              fontSize: 24.0,
            ),
            keyboardType: TextInputType.number,
          ),
        ],
      ),
    );
  }
}
