import 'package:flutter/material.dart';
import 'item_store.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Username',
                icon: Icon(Icons.account_box),
              ),
            ),
            RaisedButton(
              child: Text('Next'),
              onPressed: () {
                ItemStore().set('name', _controller.text);
                Navigator.of(context).pushNamed('/second');
              },
            ),
          ],
        ),
      ),
    );
  }
}