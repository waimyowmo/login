import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //return function , color not change sir!
  //Help Me Sir,
  FlatButton log({Color win, String text}) {
    return FlatButton(
      color: win,
      onPressed: null,
      child: Text(text),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
            child: Text("Login Challenge"),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SafeArea(
              child: Center(
            child: Column(
              children: <Widget>[
                Text('Welcome from Challenge',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 25,
                      fontFamily: 'CarterOne',
                    )),
                SizedBox(
                  height: 15,
                ),
                Image.asset(
                  'images/win1.png',
                  height: 200,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                    icon: Icon(Icons.person),
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    icon: Icon(Icons.security),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    log(win: Colors.green, text: 'Login'),
                    SizedBox(
                      width: 20,
                    ),
                    log(win: Colors.red, text: 'Register'),
                  ],
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
