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
              "Up👍 or Down👎",
              style: TextStyle(
                  fontFamily: "JosefinSans",
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(height: 20.0),
            Text(
              "1. 게임이 시작되면 안녕봇이 1 부터 100 사이의 랜덤한 숫자를 생성합니다.",
              style: TextStyle(
                  fontFamily: "NanumGothic",
                  fontSize: 16.0,
                  color: Colors.grey[700]),
            ),
            SizedBox(height: 10.0),
            Text(
              "2. 각 플레이어는 임의의 숫자를 입력하고 제출(enter 또는 버튼 클릭)합니다.",
              style: TextStyle(
                  fontFamily: "NanumGothic",
                  fontSize: 16.0,
                  color: Colors.grey[700]),
            ),
            SizedBox(height: 10.0),
            Text(
              "3. 안녕봇은 제출받은 숫자가 숨겨진 숫자보다 클 경우 Down , 작을 경우 Up 등의 힌트를 띄워줍니다.",
              style: TextStyle(
                  fontFamily: "NanumGothic",
                  fontSize: 16.0,
                  color: Colors.grey[700]),
            ),
            SizedBox(height: 10.0),
            Text(
              "4. 최종적으로 숫자에 걸린 사람이 벌칙에 걸리게 됩니다.(참가자들이 원하는대로 룰을 바꾸어도 괜찮습니다)",
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
