import 'package:flutter/material.dart';
import 'package:flutter_train_app/seat_page/widgets/label_box.dart';
import 'package:flutter_train_app/seat_page/widgets/seat_list_view.dart';
import 'package:flutter_train_app/seat_page/widgets/station_info.dart';

class SeatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('좌석선택')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              StationInfo(),
              LabelBox(),
              SeatListView(),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(onPressed: () {}, child: Text('예매 하기')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
