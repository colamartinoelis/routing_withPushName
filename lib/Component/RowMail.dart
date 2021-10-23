import 'package:flutter/material.dart';
import 'package:routing/Screen/DetailMail.dart';
import 'package:routing/Model/Mail.dart';

final mails = [
  ModelMail(
    title: "American Express",
    content:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec molestie tortor augue, viverra scelerisque elit porttitor in. Suspendisse aliquet ante quis quam dictum suscipit. Pellentesque mauris urna, tempor sit amet finibus vitae, rutrum scelerisque erat. Etiam leo turpis, malesuada eget nisi nec, tempus auctor lectus. Nullam eleifend nibh vitae ante malesuada, eget aliquam nulla luctus. Nunc non pretium mi. Cras sagittis maximus dictum. Nullam ornare aliquam eros. Curabitur augue mauris, pulvinar in porttitor eu, hendrerit non dui. Nulla ac interdum ante.",
    date: "23 May",
    color: Colors.teal,
  ),
  ModelMail(
    title: "Google",
    content:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec molestie tortor augue, viverra scelerisque elit porttitor in. Suspendisse aliquet ante quis quam dictum suscipit. Pellentesque mauris urna, tempor sit amet finibus vitae, rutrum scelerisque erat. Etiam leo turpis, malesuada eget nisi nec, tempus auctor lectus. Nullam eleifend nibh vitae ante malesuada, eget aliquam nulla luctus. Nunc non pretium mi. Cras sagittis maximus dictum. Nullam ornare aliquam eros. Curabitur augue mauris, pulvinar in porttitor eu, hendrerit non dui. Nulla ac interdum ante.",
    date: "21 May",
    color: Colors.red,
  ),
  ModelMail(
    title: "Facebook",
    content:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec molestie tortor augue, viverra scelerisque elit porttitor in. Suspendisse aliquet ante quis quam dictum suscipit. Pellentesque mauris urna, tempor sit amet finibus vitae, rutrum scelerisque erat. Etiam leo turpis, malesuada eget nisi nec, tempus auctor lectus. Nullam eleifend nibh vitae ante malesuada, eget aliquam nulla luctus. Nunc non pretium mi. Cras sagittis maximus dictum. Nullam ornare aliquam eros. Curabitur augue mauris, pulvinar in porttitor eu, hendrerit non dui. Nulla ac interdum ante.",
    date: "20 May",
    color: Colors.indigo,
  ),
];

class RowMail extends StatelessWidget {
  RowMail(@required this.index);
  int index;

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      contentPadding: EdgeInsets.all(0),
      onTap: () => Navigator.pushNamed(context, DetailMail.routeName,
          arguments: new DetailMailArgs(mail: mails[index])),
      leading: new CircleAvatar(
          radius: 25,
          backgroundColor: mails[index].color,
          child: new Text(
            mails[index].title.substring(0, 2).toUpperCase(),
            style: new TextStyle(color: Colors.white),
          )),
      title: new Text(mails[index].title),
      subtitle: new Text(
        mails[index].content,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: new Text(mails[index].date),
    );
  }
}
