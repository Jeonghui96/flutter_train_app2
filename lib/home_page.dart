import 'package:flutter/material.dart';
import 'package:flutter_train_app/station_list_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? startStation;
  String? endStation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('기차 예매')),
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 위젯들을 배치
            Container(
              height: 200,

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  stationArea('출발역', startStation ?? '선택'),
                  Container(width: 2, height: 50, color: Colors.grey[400]),
                  stationArea('도착역', endStation ?? '선택'),
                ],
              ),
            ),
            SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(onPressed: () {}, child: Text('좌석 선택')),
            ),
          ],
        ),
      ),
    );
  }

  Expanded stationArea(String title, String station) {
    return Expanded(
      child: Builder(
        builder: (context) {
          return GestureDetector(
            onTap: () async {
              // 1. 페이지 이동 (출발역, 도착역 알려주기)
              String? result = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return StationListPage(title);
                  },
                ),
              );
              // 2. 기차역 받기
              if (result != null) {
               setState(() {
                  if (title == '출발역') {
                  startStation = result;
                  //출발역 업데이트
                } else {
                  //도착역 업데이트
                  endStation = result;
                }
               });
              }

              //선택 글자 업데이트

              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(station, style: TextStyle(fontSize: 40)),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
