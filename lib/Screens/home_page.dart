import 'package:flutter/material.dart';

import 'package:one_clock/one_clock.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text(
        //     'Date & Clock',
        //     style: TextStyle(color: Colors.amber[800]),
        //   ),
        // ),
        body: Container(
          decoration: const BoxDecoration(
            // color: const Color(0xff7c94b6),
            image: DecorationImage(
                image: AssetImage('assets/images/lion.jpeg'),
                fit: BoxFit.cover),
          ),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'CalDate',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 50.0,
                ),
                child: CircleAvatar(
                  radius: 150,
                  backgroundColor: Colors.amber[300],
                  child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: AnalogClock(
                        // decoration: BoxDecoration(
                        //     // border: Border.all(width: 4.0, color: Colors.black),
                        //     //color: Colors.transparent,
                        //     shape: BoxShape.circle),
                        width: 270.0,
                        isLive: true,
                        hourHandColor: Colors.black,
                        minuteHandColor: Colors.black,
                        showSecondHand: true,
                        numberColor: Colors.black87,
                        showNumbers: true,
                        secondHandColor: Colors.black,

                        showAllNumbers: true,
                        textScaleFactor: 1.4,
                        showTicks: true,
                        tickColor: Colors.black,
                        showDigitalClock: false,
                        datetime: DateTime.now(),
                      )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 65.0, vertical: 30),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: DigitalClock(
                      showSeconds: true,
                      textScaleFactor: 2,
                      isLive: false,
                      //digitalClockColor: Colors.black,
                      decoration: BoxDecoration(
                          color: Colors.amber[300],
                          shape: BoxShape.rectangle,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      datetime: DateTime.now()),
                ),
              ),
              // const Spacer(),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 65.0),
              //   child: Container(
              //     height: 30,
              //     width: 100,
              //     color: Colors.greenAccent,
              //     child: const Center(
              //       child: Text(
              //         'Ugocode',
              //         style: TextStyle(fontWeight: FontWeight.bold),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );

    //   bottomNavigationBar: BottomNavigationBar(
    //     items: const <BottomNavigationBarItem>[
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.punch_clock),
    //         label: 'clock',
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.calendar_month),
    //         label: 'Date',
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.settings),
    //         label: 'Settings',
    //       ),
    //     ],
    //     currentIndex: _selectedIndex,
    //     selectedItemColor: Colors.amber[800],
    //     onTap: _onItemTapped,
    //   ),
    // );
    // }
//}

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(
//       title: const Text('BottomNavigationBar Sample'),
//     ),
//     body: Center(
//       child: _widgetOptions.elementAt(_selectedIndex),
  }
}
