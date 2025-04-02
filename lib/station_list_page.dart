import 'package:flutter/material.dart';

class StationListPage extends StatelessWidget {
  StationListPage(this.title);
  String title;

  @override
  Widget build(BuildContext context) {
    List<String> stations = [
      "수서",
      "동탄",
      "평택지제",
      "천안아산",
      "오송",
      "대전",
      "김천구미",
      "동대구",
      "경주",
      "울산",
      "부산",
    ];
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView.separated(
        itemCount: stations.length,
        separatorBuilder: (context, index) {
          return Container(height: 1, color: Colors.grey[300]);
        },
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pop(context, stations[index]);
            },
            child: Container(
              height: 50,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20),
              child: Text(
                stations[index],
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
      ),
    );
  }
}
