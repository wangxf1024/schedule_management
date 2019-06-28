import 'package:flutter/material.dart';

import 'LoginRouter.dart';
import 'User.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Login",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginPage(title: "登陆"),
    );
  }
}

class LoginPage extends StatefulWidget {
  LoginPage({key, this.title}) : super(key: key);

  //标题
  final String title;

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
//      appBar: AppBar(
//        title: Text(widget.title),
//      ),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/login_bg.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Container(
              width: 300,
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.supervised_user_circle,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.keyboard,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    width: 100,
                    child: RaisedButton(
                      textTheme: ButtonTextTheme.accent,
                      color: Colors.blue,
                      highlightColor: Colors.deepPurpleAccent,
                      splashColor: Colors.deepOrangeAccent,
                      colorBrightness: Brightness.dark,
                      elevation: 20.0,
                      highlightElevation: 100.0,
                      disabledElevation: 20.0,
                      child: Text(
                        "登陆",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        //TODO
                        User user = User("wangxf","asd123");
                        LoginRouter.loginIn(user);
                      },
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
