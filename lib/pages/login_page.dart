
import 'package:flutter/material.dart';
import 'package:project/utilities/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  bool changebutton= false;
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
               "Welcome $name",
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
                    onChanged:(value){
                      name= value;
                      setState(() {
                      });
                    } ,
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
                InkWell(
                  onTap: () async {
                    setState(() {
                      changebutton=  true;
                    });
                    await Future.delayed(Duration(milliseconds: 400))   ;
                   Navigator.pushNamed(context, MyRoutes.homeroute );
                  },
                                 
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 400),
                    height: 50,
                    width: changebutton?50: 100,
                    alignment: Alignment.center,
                    child: changebutton?Icon(Icons.done,color: Colors.white): Text(
                      "Login", 
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                        ),
                        ),
                    decoration: BoxDecoration(
                    color: Colors.deepPurple[ 800],
                      borderRadius: BorderRadius.circular(changebutton?25:8),
                    )    ,
                  ),
                )


                // ElevatedButton(
                //   child: Text("Login", style: TextStyle(color: Colors.white)),
                //   style: 
                //   ButtonStyle(
                //   backgroundColor: 
                //   MaterialStateProperty.all<Color>(Colors.deepPurple.shade800),
                  
                //   minimumSize:MaterialStateProperty.all<Size>(Size(100, 40)) ,
                //     ),
                  
                //   onPressed: (){
                //    Navigator.pushNamed(context, MyRoutes.homeroute );
                //   },

                // ),
            
            ],
              ),           
            ),
         ],
       ),
     ),
    );
  }
}
