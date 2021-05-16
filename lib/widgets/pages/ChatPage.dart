import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:up_down_game/widgets/containers/appbar.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  //member 변수
  TextEditingController controller = TextEditingController(); // 택스트 데이터
  List<Widget> messageList = <Widget>[]; // 메세지 리스트
  int randomNumber = 0; // 게임 랜덤 번호
  int lowLimitNumber = 0; // 제한된 낮은 수
  int highLimitNumber = 101; // 제한된 높은 수

  // 생성자
  _ChatPageState() {
    gameStart();
    randomNumber = getRandomNumber();
    print(randomNumber);
  }

  // 처음 게임 시작시 안내 문구 띄우기
  void gameStart() {
    messageList
        .add(createHelloBotMessage(message: "안녕하세요 👋\n무작위 번호를 생성중입니다.. 🎲"));
    messageList.add(createHelloBotMessage(message: "준비가 끝났습니다! 게임을 시작해주세요 ✨"));
  }

  // 랜덤 값 반환
  int getRandomNumber() {
    Random random = new Random();
    return random.nextInt(100) + 1;
  }

  // 전송버튼 클릭 이벤트
  void submitEvent() {
    messageList.add(createUserMessage(message: controller.text));
    int userNumber = 0;
    try {
      userNumber = int.parse(controller.text);
    } catch (e) {
      // Not a Number
      setState(() {
        messageList.add(
            createHelloBotMessage(message: "숫자형식만 입력할 수 있어요! 🤨\n다시 입력해주세요."));
      });
    }
    controller.text = "";
    if (lowLimitNumber >= userNumber || userNumber >= highLimitNumber) {
      setState(() {
        messageList.add(createHelloBotMessage(
            message:
                "$lowLimitNumber ~ ${highLimitNumber - 1} 사이의 값만 입력할 수 있어요.\n다시 입력해주세요. 😤"));
      });
    } else if (randomNumber > userNumber) {
      setState(() {
        lowLimitNumber = userNumber;
        messageList.add(createHelloBotMessage(message: "Up!"));
      });
    } else if (randomNumber < userNumber) {
      setState(() {
        highLimitNumber = userNumber;
        messageList.add(createHelloBotMessage(message: "Down!"));
      });
    } else if (randomNumber == userNumber) {
      setState(() {
        messageList.add(createHelloBotMessage(
          imagePath: "images/img01.jpg",
          message: "걸렸닭, 오늘은 너가 치킨 쏜닭 🥳",
        ));
      });
    }
  }

  // 안녕봇 메시지 UI 반환
  Widget createHelloBotMessage({String message, String imagePath}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.emoji_people,
              size: 30.0,
              color: Colors.grey[500],
            ),
            Text(
              "안녕봇",
              style: TextStyle(color: Colors.grey[600]),
            )
          ],
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[200],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                imagePath != null
                    ? Image.asset(
                        imagePath,
                      )
                    : SizedBox(),
                SizedBox(
                  height: imagePath != null ? 10 : 0,
                ),
                Text(
                  message,
                  style: TextStyle(color: Colors.grey[800]),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        )
      ],
    );
  }

  // 플레이어 메시지 UI 반환
  Widget createUserMessage({String message}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.yellow[600],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "$message",
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar,
        body: Column(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return messageList[index];
                },
                itemCount: messageList.length,
              ),
            )),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                top: BorderSide(color: Colors.grey[200]),
              )),
              child: Row(
                children: [
                  Expanded(
                    flex: 10,
                    child: TextField(
                      controller: controller,
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
                      disabledColor: Colors.grey[600],
                      icon: Icon(Icons.send, color: Colors.blue),
                      onPressed: () {
                        if (controller.text == "") {
                          setState(() {
                            messageList.add(
                                createHelloBotMessage(message: "값을 입력해주세요!"));
                          });
                        } else {
                          submitEvent();
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
