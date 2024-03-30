import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
//import 'package:syncfusion_flutter_calendar/calendar.dart';

class DatePage extends StatefulWidget {
  const DatePage({super.key});

  @override
  State<DatePage> createState() => _DatePageState();
}

class _DatePageState extends State<DatePage> {
  CalendarController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calendar',
          style:
              TextStyle(color: Colors.amber[900], fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Day",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: SfCalendar(
                view: CalendarView.day,
                controller: _controller,
                headerStyle: CalendarHeaderStyle(
                    textStyle: const TextStyle(color: Colors.white),
                    backgroundColor: Colors.amber[900]),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Month",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 4,
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SfCalendar(
                  view: CalendarView.month,
                  //controller: _controller,
                  headerStyle: CalendarHeaderStyle(
                      textStyle: const TextStyle(color: Colors.white),
                      backgroundColor: Colors.amber[900]),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
