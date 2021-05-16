import 'package:flutter/material.dart';

final AppBar myAppBar = new AppBar(
  title: Text("Up&Down Chat"),
  flexibleSpace: Container(
    decoration: BoxDecoration(
        gradient: LinearGradient(
            //라인 색상 전환. 2가지의 색상을 받는다
            begin: Alignment.topLeft, //컬러 시작점
            end: Alignment.topRight, //컬러 끝나는점
            colors: <Color>[
          //입맛대로 Colors.색상 해도 상관없음
          Color(0xFF4f5bff),
          Color(0xFF4f5bff),
          Color(0xFF6c4fff),
        ])),
  ),
);
