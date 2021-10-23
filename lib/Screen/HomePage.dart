import 'package:flutter/material.dart';
import 'package:routing/Component/RowMail.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: new Icon(Icons.dehaze),
          title: Text(
            'In Box',
          ),
          actions: [new Icon(Icons.search)],
        ),
        body: new Padding(
          padding: EdgeInsets.all(16),
          child: new ListView.builder(
            itemBuilder: (context, index) => new RowMail(index),
            itemCount: 3,
          ),
        ));
  }
}
