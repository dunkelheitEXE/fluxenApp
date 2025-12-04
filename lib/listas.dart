import 'package:flutter/material.dart';

class Listas extends StatefulWidget {
  const Listas({super.key});

  @override
  State<Listas> createState() => _ListasState();
}

class _ListasState extends State<Listas> {
  List<Map<String, String>>data = [
    {
      "id": "1",
      "Name": "Alan",
      "Lastname": "Grajeda"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Text("${data[index]}")
                    ],
                  ),
                );
              },
            )
          ],
        )
      ],
    );
  }
}