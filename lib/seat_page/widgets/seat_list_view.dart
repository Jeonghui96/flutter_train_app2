import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SeatListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              label('A'),
              SizedBox(width: 4),
              label('B'),
              SizedBox(width: 4),
              label(''),
              SizedBox(width: 4),
              label('C'),
              SizedBox(width: 4),
              label('D'),
            ],
          ),

          ...List.generate(20, (i) => seats(i + 1)),
        ],
      ),
    );
  }

  Widget seats(int rowNum) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          seat(),
          SizedBox(width: 4),
          seat(),
          SizedBox(width: 4),
          label('$rowNum'),
          SizedBox(width: 4),
          seat(),
          SizedBox(width: 4),
          seat(),
        ],
      ),
    );
  }

  Container seat() {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  Container label(String text) {
    return Container(
      width: 50,
      height: 50,
      alignment: Alignment.center,
      child: Text(text, style: TextStyle(fontSize: 18)),
    );
  }
}
