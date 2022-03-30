import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To-Do List',
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomeState();
  }
}

class MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To-Do list'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Form(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextFormField(),
                  ),
                  RaisedButton(
                      child: Text('Add'),
                      onPressed: () {
                        print('clicado');
                      })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
