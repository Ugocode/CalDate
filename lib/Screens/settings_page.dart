import 'package:date_clock/Screens/clock_type.dart';
import 'package:date_clock/Screens/date_format.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      appBar: AppBar(
        centerTitle: true,
        title: Text('CalDate Settings',
            style: TextStyle(
                color: Colors.amber[900], fontWeight: FontWeight.bold)),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: CircleAvatar(
              radius: 70,
              backgroundColor: Colors.amber[700],
              backgroundImage: const AssetImage('assets/icons/Logo.png'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ClockType()),
                );
              },
              child: Card(
                child: Container(
                  height: 60,
                  width: 280,
                  decoration: BoxDecoration(
                      color: Colors.grey[350],
                      borderRadius: BorderRadius.circular(10)),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'Clock type',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DateFormat()),
                );
              },
              child: Card(
                child: Container(
                  height: 60,
                  width: 280,
                  decoration: BoxDecoration(
                      color: Colors.grey[350],
                      borderRadius: BorderRadius.circular(10)),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'Date format',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Spacer(),
          const Text('version 1.0.02')
        ],
      ),
    );
  }
}
