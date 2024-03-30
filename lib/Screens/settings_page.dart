import 'package:cal_cloc/Screens/clock_type.dart';
import 'package:cal_cloc/Screens/date_format.dart';
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
        title: Text('CalCloc views',
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
              radius: 80,
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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Card(
                  color: Colors.grey[300],
                  child: const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: ListTile(
                        title: Text(
                          'Clock type',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                          textAlign: TextAlign.left,
                        ),
                        trailing: Icon(Icons.arrow_forward_ios),
                      )),
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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Card(
                  color: Colors.grey[300],
                  child: const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: ListTile(
                        title: Text(
                          'Calendar views',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                          textAlign: TextAlign.left,
                        ),
                        trailing: Icon(Icons.arrow_forward_ios),
                      )),
                ),
              ),
            ),
          ),
          const Spacer(),
          const Text('version 1.0.05')
        ],
      ),
    );
  }
}
