import 'package:flutter/material.dart';
import 'package:one_clock/one_clock.dart';

class ClockType extends StatefulWidget {
  const ClockType({super.key});

  @override
  State<ClockType> createState() => _ClockTypeState();
}

class _ClockTypeState extends State<ClockType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      appBar: AppBar(
        title: Text(
          'Clock type',
          style: TextStyle(color: Colors.amber[900]),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: const [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Analog Clock'),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 120,
              child: AnalogClock(),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Digital Clock'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Card(
              child: SizedBox(
                height: 50,
                width: 150,
                child: DigitalClock(),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // Padding(
          //   padding: EdgeInsets.all(8.0),
          //   child: Text('Particle Clock'),
          // ),
        ],
      ),
    );
  }
}
