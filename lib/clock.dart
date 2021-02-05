import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class Clock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final clock = Stream<DateTime>.periodic(const Duration(seconds: 1), (_) {
      return DateTime.now();
    });
    return StreamBuilder<DateTime>(
      stream: clock,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Text(DateFormat.Hm().format(DateTime.now()),
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          );
        }
        return Text(DateFormat.Hm().format(DateTime.now()),
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,

        ),);
      },
    );
  }
}


class Calender extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final clock = Stream<DateTime>.periodic(const Duration(seconds: 1), (_) {
      return DateTime.now();
    });
    return StreamBuilder<DateTime>(
      stream: clock,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Text(DateFormat.yMEd().format(DateTime.now()),
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          );
        }
        return Text(DateFormat.yMEd().format(DateTime.now()),
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,

          ),);
      },
    );
  }
}
