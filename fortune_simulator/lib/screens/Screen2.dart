import 'package:flutter/material.dart';
import 'dart:math';

class Screen2 extends StatelessWidget {
  final String textPassedFromFortune;

  const Screen2({super.key, required this.textPassedFromFortune});

  String createFortune() {
    List<String> fortunes = [
      "一緒に頑張ろう！",
      "人に優しくしよう",
      "今日も頑張った！",
      "自分にご褒美をあげよう",
      "がんばれ",
      "一歩ずつ前進しよう",
      "君ならできる",
      "君は強い",
      "困難に立ち向かう勇気を持って",
      "失敗は成功のもと",
      "諦めずに頑張ろう",
      "君の努力は必ず報われる",
      "君の頑張りは決して無駄じゃない",
      "君の未来は明るい",
      "自分の信念を持って進もう",
      "失敗は新たな始まり",
      "君の可能性は無限大だ",
      "君の努力と信念は誰よりも大切だ",
    ];
    Random random = Random();
    return fortunes[random.nextInt(fortunes.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("あなたへの一言"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "★",
                  style: TextStyle(fontSize: 20.0),
                ),
                Text(
                  "★",
                  style: TextStyle(fontSize: 20.0),
                ),
                Text(
                  "★",
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Text(
              "あなたの今の気持ち: $textPassedFromFortune",
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              "あなたへの一言: ${createFortune()}",
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.pink,
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "★",
                  style: TextStyle(fontSize: 20.0),
                ),
                Text(
                  "★",
                  style: TextStyle(fontSize: 20.0),
                ),
                Text(
                  "★",
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
