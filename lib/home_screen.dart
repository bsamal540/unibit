import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Image.asset("assets/logo2.png"),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.notifications_none),
          ),
        ],
      ),
      body: Container(
        child: ListView.builder(
            itemCount: 2,
            itemBuilder: (context, index) => Card(
child: Column(
  children: [
    Image.asset("assets/bodyImage1.png"), // Replace with your image path
    ListTile(
      title: Text('Heading'),
    ),

  ],
),
        ))
      ),
    );
  }
}
