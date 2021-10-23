import 'package:flutter/material.dart';
import 'package:routing/Model/Mail.dart';

class DetailMailArgs {
  DetailMailArgs({@required this.mail});
  ModelMail mail;
}

class DetailMail extends StatelessWidget {
  static String routeName = '/detailMail';

  @override
  Widget build(BuildContext context) {
    final DetailMailArgs args = ModalRoute.of(context).settings.arguments;

    return new Scaffold(
      appBar: AppBar(
        backgroundColor: args.mail.color,
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: Text(args.mail.title),
      ),
      body: corpoCentrale(args),
    );
  }
}

Widget corpoCentrale(DetailMailArgs args) => new SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: new Column(children: [
        new ListTile(
          leading: CircleAvatar(
              radius: 25,
              backgroundColor: args.mail.color,
              child: Text(args.mail.title.substring(0, 2).toUpperCase(),
                  style: TextStyle(color: Colors.white))),
          title: Text(args.mail.title),
          subtitle: Text(args.mail.content, overflow: TextOverflow.ellipsis),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(Icons.reply),
          ),
          contentPadding: EdgeInsets.all(0),
        ),
        new Divider(),
        new Text(args.mail.content, textAlign: TextAlign.justify,),
      ]),
    );
