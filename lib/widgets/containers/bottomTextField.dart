import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final Container bottomTextField = new Container(
  decoration: BoxDecoration(
      border: Border(
    top: BorderSide(color: Colors.grey[200]),
  )),
  child: Row(
    children: [
      Expanded(
        flex: 10,
        child: TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.zero,
                borderSide: BorderSide.none,
              ),
              hintText: "1 ~ 100 사이의 숫자를 입력하세요."),
        ),
      ),
      Expanded(
        flex: 2,
        child: IconButton(
          icon: Icon(Icons.send),
          onPressed: () {
            //controller.text
          },
        ),
      )
    ],
  ),
);
