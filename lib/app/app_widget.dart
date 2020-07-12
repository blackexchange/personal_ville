import 'package:flutter/material.dart';
import 'package:personal_ville/app/modules/home/home_module.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Personal Ville',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeModule(),
    );
  }
}
