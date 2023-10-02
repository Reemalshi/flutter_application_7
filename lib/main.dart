import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
       debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("log in page"),
      ),
      body: Center(    ///شريريرييييي
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Image.network("https://bookface-images.s3.amazonaws.com/logos/f682843eb8c65a86a2696aa0fa932cc1dfc33e04.png", 
            width: 150,
             height: 150),
            // SizedBox(height: 20, width: 10,),
            Container(
               margin: EdgeInsets.all(20),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      prefixIcon: Icon(Icons.email),
                  hintText: "please enter your email",
                //    border: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(10), 
                // ),
                  
                ),
              ),
            ),
            SizedBox(height: 10, width: 10,),
            Container(
              margin: EdgeInsets.all(20),
              child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  prefixIcon: Icon(Icons.password),
                  hintText: "please enter your password",
                //   border: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(10), 
                // ),
                ),
                
              ),
            ), 
              TextButton(
              onPressed: () { },
              child: Text("forget password"),
            ),
            SizedBox(height: 40 ),
            ElevatedButton(
              onPressed: () { },
              style: ButtonStyle(
               backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                      ),
              child: Text("Log in", style: TextStyle(color: Colors.white,),),
            ),
         
            SizedBox(height: 10),
            Text("Don't have an account?"),
            TextButton(
              onPressed: () { },
              child: Text("Signup here"),
            ),
          ],
        ),
      ),
    );
  }
}
