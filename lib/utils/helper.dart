import 'package:flutter/material.dart';

void nextScreen (BuildContext context, String path, {dynamic arguments}) {
  Navigator.of(context).pushNamed(path, arguments: arguments);
}