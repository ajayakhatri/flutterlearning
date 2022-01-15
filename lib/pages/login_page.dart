

import 'package:flutter/material.dart';
import 'package:project/utilities/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
     child: SingleChildScrollView(
       child: Column(
          children: [  
            Image.asset(
             "assets/images/login.png",
             ),
            SizedBox(
              height: 20,
            ),
            Text(
               "Welcome",
               style: TextStyle(
                 color: Colors.deepPurple[800],
                 fontWeight: FontWeight.bold,
                 fontSize: 25,
     
               ), 
               ),
            Padding(
              padding: const EdgeInsets.symmetric( vertical: 16, horizontal: 50),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Username" ,
                      hintText: "Enter Username",
                    ),
                  ),   
                  TextFormField(
                    obscureText: true ,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter Password",
                    ),
                  ),
                SizedBox(
                  height: 20,
                 ),
                ElevatedButton(
                  child: Text("Login", style: TextStyle(color: Colors.white)),
                  style: 
                  ButtonStyle(
                  backgroundColor: 
                  MaterialStateProperty.all<Color>(Colors.deepPurple.shade800),
                  
                  minimumSize:MaterialStateProperty.all<Size>(Size(100, 40)) ,
                    ),
                  
                  onPressed: (){
                   Navigator.pushNamed(context, MyRoutes.homeroute );
                  },

                ),
            
            
            
            
            ],
              ),
            
            ),
         ],
     
       ),
     ),
    );
  }
}
