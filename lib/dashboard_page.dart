import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({super.key});

  var services = [
    "Mobile App Development Services",
    "Web Development Services",
    "Graphics Design Services",
    "Digital Marketing Services",
    "Big Data Analysis Services",
    "AI Development Services",
    "Robotic Development Services",
    "Everything Development Services"
  ];
  var images = [
    "images/icons8-android.png",
    "images/icons8-broom.png",
    "images/icons8-cleaner.png",
    "images/icons8-house.png",
    "images/icons8-offices.png",
    "images/icons8-paint-roller.png",
    "images/icons8-vacuum.png",
    "images/icons8-window.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: GridView.builder(
          itemCount: services.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 2.4)),
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    images[index],
                    height: 40,
                    width: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        services[index],
                        style: const TextStyle(fontSize: 16, height: 1.2),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
