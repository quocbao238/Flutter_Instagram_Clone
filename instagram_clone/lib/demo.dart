import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();

  void _send() {
    _formKey.currentState.validate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: TextFormField(
          
          decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
            hintText: 'Email',
          ),
          validator: (String value) {
            if (value.length < 8) {
              return 'Password must be at least 8 characters long.';
            }
            return null;
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _send,
        tooltip: 'Send',
        child: Icon(Icons.send),
      ),
    );
  }
}
