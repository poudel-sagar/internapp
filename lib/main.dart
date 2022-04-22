import 'package:flutter/material.dart';
import 'package:internapp/splash.dart';
import 'model/article_model.dart';
import 'package:internapp/services/api_service.dart';
import 'components/customListTile.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
    );
  }
}

