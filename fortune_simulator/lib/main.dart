import 'package:flutter/material.dart';
import 'package:fortune_simulator/screens/Screen2.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Fortune",
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> moods = [
    "幸せ",
    "ワクワク",
    "悲しい",
    "悔しい",
    "同情",
    "怖い",
    "緊張",
    "嫉妬",
    "逃げたい",
    "満足",
    "成長したい",
    "苦しい",
  ];
  String select = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("あなたの今の気持ちは？"),
      ),
      body: Center(
        child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(moods.length, (index) {
              return InkWell(
                onTap: () {
                  setState(() {
                    select = moods[index];
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Screen2(textPassedFromFortune: select);
                    }));
                  });
                },
                child: Card(
                  child: Center(
                    child: Text(
                      moods[index],
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                ),
              );
            })),
      ),
    );
  }
}
