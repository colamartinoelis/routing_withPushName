import 'dart:convert';

import 'package:flutter/material.dart';

class ModelMail {
 const ModelMail({
    @required this.title,
    @required this.content,
    @required this.date,
    @required this.color,
  });

  final String title;
  final String content;
  final Color color;
  final String date;
}
