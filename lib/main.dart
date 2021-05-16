import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:up_down_game/widgets/pages/MainPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // 투명색
    ));
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "업 다운 게임",
        theme: ThemeData(backgroundColor: Colors.purple),
        home: MainPage());
  }
}
