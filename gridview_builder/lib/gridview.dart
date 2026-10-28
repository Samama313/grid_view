
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(home: MyScreen()));
}

class MyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Grid")),
      body: GridView(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        children: [
          box(Icons.home, "Home", Colors.red, Colors.red.shade100),
          box(Icons.person, "Profile", Colors.blue, Colors.blue.shade100),
          box(Icons.mail, "Mail", Colors.green, Colors.green.shade100),
          box(Icons.phone, "Contact", Colors.orange, Colors.orange.shade100),
        ],
      ),
    );
  }

  Widget box(IconData icon, String name, Color color, Color bg) {
    return Container(
      color: bg,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: color),
          Text(name),
        ],
      ),
    );
  }
}
