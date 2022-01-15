
import 'package:flutter/material.dart';
import 'package:project/utilities/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catelog App"),
      ),
      body: Center(child: Text("Hello World !!")),
      drawer: Drawer(
        child: Center(
          child: SingleChildScrollView(
            child: Center(child: ElevatedButton(
              onPressed: (){Navigator.pushNamed(context, MyRoutes.loginroute);}, 
              child: Column(
                children: [
                  Text("Login page"),
                  Icon(Icons.login, size: 20),
                ],
              ),
            )
            ),
          ),
        ),
      ),
    );
  }
}
