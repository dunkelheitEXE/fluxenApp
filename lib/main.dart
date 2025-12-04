import 'package:flutter/material.dart';
import 'listas.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Fluxen",
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> elements = [
      "Alan","Alfonso", "Afredo", "Job",
      "Alan","Alfonso", "Afredo", "Job",
      "Alan","Alfonso", "Afredo", "Job",
      "Alan","Alfonso", "Afredo", "Job",
    ];

    final controller = TextEditingController();

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("MY APP"),
      ),
      body: Column(
        children: [
          Card(
            color: Color.fromARGB(255, 74, 105, 209),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.account_balance_rounded,
                      color: Colors.white,
                      size: 100,
                    ),
                    Text(
                      "Lista",
                      style: TextStyle(
                        color: Colors.white, 
                        fontSize: 30, 
                        fontWeight: FontWeight.w800
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Form(
            child: Column(
              children: [
                TextFormField(
                  controller: controller,
                  decoration: InputDecoration(
                    label: Text("Name")
                  ),
                ),
                ElevatedButton(
                  onPressed: (()=>{
                    //
                    showDialog(
                      context: context, 
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Data sent: ${controller.text}"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                controller.clear();
                                Navigator.of(context).pop();
                              },
                              child: Text("Close")
                            )
                          ],
                        );
                      }
                    )
                  }),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo, foregroundColor: Colors.white),
                  child: Text("Send"),
                )
              ],
            )
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: List.generate(elements.length, (index) => ListTile(
                  title: Text(elements[index]),
                )),
              )
            )
          )
        ],
      ),
    );
  }
}