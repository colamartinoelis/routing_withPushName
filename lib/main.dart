import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:routing/Screen/DetailMail.dart';
import 'package:routing/Screen/HomePage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      onGenerateRoute: (setting) {
        if (setting.name == DetailMail.routeName) {
          return new PageTransition(
              child: new DetailMail(),
              type: PageTransitionType.bottomToTop,
              settings: setting);
        } else
          return null;
      },
      home: new HomePage(),

      /*codice senza transizione*/
      /*   routes: {
        '/' : (context) => new HomePage(),
        '/detailMail' : (context) => new DetailMail(),
      },*/

      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: Colors.redAccent,
      ),
    );
  }
}
