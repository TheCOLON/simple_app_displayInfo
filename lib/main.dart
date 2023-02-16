import 'package:display_info/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter UI',
    theme: ThemeData(primarySwatch: Colors.cyan),
    home: const Homepage(),
  ));
}
