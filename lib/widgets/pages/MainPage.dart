import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:up_down_game/widgets/containers/appbar.dart';
import 'package:up_down_game/widgets/pages/ChatPage.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.0),
            Text(
              "Drinking game",
              style: TextStyle(
                  fontFamily: "JosefinSans",
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF8a4baf)),
            ),
            Text(
              "Upπ or Downπ",
              style: TextStyle(
                  fontFamily: "JosefinSans",
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(height: 20.0),
            Text(
              "1. κ²μμ΄ μμλλ©΄ μλλ΄μ΄ 1 λΆν° 100 μ¬μ΄μ λλ€ν μ«μλ₯Ό μμ±ν©λλ€.",
              style: TextStyle(
                  fontFamily: "NanumGothic",
                  fontSize: 16.0,
                  color: Colors.grey[700]),
            ),
            SizedBox(height: 10.0),
            Text(
              "2. κ° νλ μ΄μ΄λ μμμ μ«μλ₯Ό μλ ₯νκ³  μ μΆ(enter λλ λ²νΌ ν΄λ¦­)ν©λλ€.",
              style: TextStyle(
                  fontFamily: "NanumGothic",
                  fontSize: 16.0,
                  color: Colors.grey[700]),
            ),
            SizedBox(height: 10.0),
            Text(
              "3. μλλ΄μ μ μΆλ°μ μ«μκ° μ¨κ²¨μ§ μ«μλ³΄λ€ ν΄ κ²½μ° Down , μμ κ²½μ° Up λ±μ ννΈλ₯Ό λμμ€λλ€.",
              style: TextStyle(
                  fontFamily: "NanumGothic",
                  fontSize: 16.0,
                  color: Colors.grey[700]),
            ),
            SizedBox(height: 10.0),
            Text(
              "4. μ΅μ’μ μΌλ‘ μ«μμ κ±Έλ¦° μ¬λμ΄ λ²μΉμ κ±Έλ¦¬κ² λ©λλ€.(μ°Έκ°μλ€μ΄ μνλλλ‘ λ£°μ λ°κΎΈμ΄λ κ΄μ°?μ΅λλ€)",
              style: TextStyle(
                  fontFamily: "NanumGothic",
                  fontSize: 16.0,
                  color: Colors.grey[700]),
            ),
            SizedBox(height: 50.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text(
                    "Game Start",
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.deepPurple),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChatPage()),
                    );
                  },
                ),
                SizedBox(width: 10.0),
                ElevatedButton(
                  child: Text(
                    "Git Hub",
                  ),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
