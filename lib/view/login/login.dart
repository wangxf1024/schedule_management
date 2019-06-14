import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text("Login View!!!!")],
        ),
      ),
    );
  }
}
