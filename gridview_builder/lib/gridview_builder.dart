
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyScreen()));
}

class MyScreen extends StatelessWidget {
  var icons = [
    Icons.home, Icons.person, Icons.settings,
    Icons.phone, Icons.camera, Icons.favorite
  ];

  var names = [
    "Home", "Profile", "Settings",
    "Contact", "Camera", "Favorite"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Icon Grid")),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: icons.length,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icons[index], size: 40, color: Colors.blue),
              Text(names[index]),
            ],
          );
        },
      ),
    );
  }
}
