import 'package:flutter/material.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherScreen(),
    );
  }
}

class WeatherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Yogyakarta',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Today',
              style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 17, 239, 9)),
            ),
            const SizedBox(height: 20),
            const Text(
              '28°C',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            const SizedBox(height: 10),
            const Text(
              'Sunny',
              style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 7, 235, 22)),
            ),
            const SizedBox(height: 10),
            const Text(
              '❄ 5 km/h',
              style: TextStyle(fontSize: 18, color: Colors.blue),
            ),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                  )
                ],
              ),
              child: Column(
                children: [
                  const Text(
                    'Next 7 days',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      WeatherColumn(time: 'Now', temp: '28°C', wind: '10 km/h', chance: '0%'),
                      WeatherColumn(time: '17:00', temp: '28°C', wind: '10 km/h', chance: '0%'),
                      WeatherColumn(time: '20:00', temp: '28°C', wind: '10 km/h', chance: '0%'),
                      WeatherColumn(time: '23:00', temp: '28°C', wind: '10 km/h', chance: '0%'),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Developed by: Zuharul Habib',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

class WeatherColumn extends StatelessWidget {
  final String time;
  final String temp;
  final String wind;
  final String chance;

  const WeatherColumn({
    required this.time,
    required this.temp,
    required this.wind,
    required this.chance,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(time, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 5),
        const Icon(Icons.ac_unit, color: Colors.blue),
        const SizedBox(height: 5),
        Text(temp, style: const TextStyle(fontSize: 16)),
        const SizedBox(height: 5),
        Text(wind, style: const TextStyle(fontSize: 14, color: Colors.red)),
        const SizedBox(height: 5),
        Text(chance, style: const TextStyle(fontSize: 14, color: Colors.black)),
      ],
    );
  }
}
