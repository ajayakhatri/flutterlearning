import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Catelog App")),
      ),
      body: Center(child: Text("Hello World !!")),
      drawer: Drawer(),
    );
  }
}
