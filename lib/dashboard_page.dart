import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(
              children: <Widget>[
                Image.asset(
                  "images/icons8-adornment.png",
                  height: 40,
                  width: 40,
                ),
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Carpet Cleaning Service",
                    style: TextStyle(
                      fontSize: 16
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}
