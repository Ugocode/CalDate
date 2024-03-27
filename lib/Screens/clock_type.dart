import 'package:clock_loader/clock_loader.dart';
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
        title: const Text('Clock Type'),
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Analog Clock'),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 120,
              child: AnalogClock(),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Digital Clock'),
          ),
          const Card(
            child: SizedBox(
              height: 50,
              width: 150,
              child: DigitalClock(),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Particle Clock'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: CircleAvatar(
              radius: 120,
              child: Padding(
                padding: const EdgeInsets.only(right: 45.0),
                child: ClockLoader(
                  clockLoaderModel: ClockLoaderModel(
                    shapeOfParticles: ShapeOfParticlesEnum.circle,
                    mainHandleColor: Colors.blue,
                    particlesColor: Colors.blue,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
