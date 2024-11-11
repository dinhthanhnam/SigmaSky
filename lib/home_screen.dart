import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.all(16.0),
            alignment: Alignment.center,
            child: Column(
              children: [
                Text(
                  "Hanoi, Vietnam",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Text("25°C", style: TextStyle(fontSize: 64)),
                Icon(Icons.wb_sunny, size: 80, color: Colors.yellow),
                Text("Clear Sky", style: TextStyle(fontSize: 24, color: Colors.grey[600])),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _WeatherDetail(icon: Icons.wind_power, label: 'Wind', value: '10 km/h'),
                _WeatherDetail(icon: Icons.cloud, label: 'Clouds', value: '20%'),
                _WeatherDetail(icon: Icons.water_drop, label: 'Humidity', value: '65%'),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16.0),
            child: Text("Today", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 180,
            width: MediaQuery.of(context).size.width - 125,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 7,
              itemBuilder: (BuildContext context, index) {
                return Container(
                  width: 100,
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  color: Colors.blue[100],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.wb_sunny, color: Colors.orange, size: 40),
                      const SizedBox(height: 8),
                      Text("25°C", style: TextStyle(fontSize: 18)),
                      Text("2 PM", style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 30),
          Container(
            margin: const EdgeInsets.all(12),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.deepPurple[50],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Text(
                  "Forecast for 7 days:",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.5,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    itemCount: 7,
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Day ${index + 1}", style: TextStyle(fontSize: 18)),
                            Icon(Icons.wb_sunny, color: Colors.orange),
                            Text("High: 30°C", style: TextStyle(color: Colors.red)),
                            Text("Low: 20°C", style: TextStyle(color: Colors.blue)),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _WeatherDetail extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  _WeatherDetail({required this.icon, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 30, color: Colors.blue),
        const SizedBox(height: 5),
        Text(label, style: TextStyle(color: Colors.grey[600])),
        Text(value, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
