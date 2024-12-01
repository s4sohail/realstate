import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Map<String, bool> _options = {
  "Option 1": false,
  "Option 2": true,
 
};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          children: [
            Image.asset("assets/images/login.PNG"),
            // SizedBox(height: 10,),
            Center(
              child: Transform.translate(
              offset: const Offset(0, -60),
                child: Text("Login to Your Account",
                style:
                TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0,
                ) ,
                ),
              ),
            ),
           Transform.translate(
             offset: const Offset(0, -40),
             child: SizedBox(
              width: 300,
               child: TextField(
                enabled: true,
                 decoration: InputDecoration(
                   enabledBorder: OutlineInputBorder( 
                     borderSide: BorderSide(color: Color.fromARGB(255, 228, 228, 228)),
                   ),
                   focusedBorder: OutlineInputBorder(
                     borderSide: BorderSide(color: Color.fromARGB(255, 228, 228, 228)),
                   ),
                   filled: true,
                   fillColor: Color.fromARGB(255, 228, 227, 228),
                   prefixIcon: Icon(
                     Icons.email,
                   ),
                   hintText: "example@gmail.com",
                   hintStyle: TextStyle(color: Color.fromARGB(255, 228, 228, 228)),
                 ),
               ),
             ),
           ),
           SizedBox(
              width: 300,
               child: TextField(
                obscureText: true,
                keyboardType: TextInputType.text,
                 decoration: InputDecoration(
                   enabledBorder: OutlineInputBorder( 
                     borderSide: BorderSide(color: Color.fromARGB(255, 228, 228, 228)),
                   ),
                   focusedBorder: OutlineInputBorder(
                     borderSide: BorderSide(color: Color.fromARGB(255, 228, 228, 228)),
                   ),
                   filled: true,
                   fillColor: Color.fromARGB(255, 228, 227, 228),
                   prefixIcon: Icon(
                     Icons.lock,
                   ),
                  suffixIcon: Icon(Icons.visibility_off_sharp),
                   hintText: "*********",
                   hintStyle: TextStyle(color: Color.fromARGB(255, 228, 228, 228)),
                 ),
               ),
             ),

             CheckboxListTile(
             
              value: true, onChanged:(bool? value) {
            setState(() {
              _options['key'] = value ?? false; 
            });
              },
               title: Text("Remember me"),
             ),
             SizedBox(
              width: 200,
               child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.blue)
                ),
                onPressed: (){
               
               }, child: Text("Sign in",style: TextStyle(
                color: Colors.white
               ),)),
             )
          ],
        ),
      ),
    );
  }
}