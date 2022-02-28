import 'package:flutter/material.dart';

void main() {
  runApp(const LoginFrom());
}

enum LoginMode{signup, login}

class LoginFrom extends StatefulWidget {
  const LoginFrom({Key? key}) : super(key: key);

  @override
  _LoginFromState createState() => _LoginFromState();
}

class _LoginFromState extends State<LoginFrom> {
  LoginMode _loginMode = LoginMode.login;
  void _switch() {
    if(_loginMode == LoginMode.login){
      setState(() {
        _loginMode = LoginMode.signup;
      });
    }else{
      setState(() {
        _loginMode = LoginMode.login;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Bài 4'),),
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.purple.shade200, Colors.orange.shade200],
                ),
              ),
            ),
            Center(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      transform: Matrix4.rotationZ(-0.1),
                      margin: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.deepOrange.shade900,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        'MyShop',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      elevation: 10,
                      margin: const EdgeInsets.only(left: 30, right: 30, top: 10),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Form(
                          child: Column(
                            children: [
                              textFieldStyle('Email'),
                              textFieldStyle('Password'),
                              if(_loginMode == LoginMode.signup)
                                textFieldStyle('Confirm Password'),
                              SizedBox(height: 20,),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text(_loginMode == LoginMode.login ? 'LOGIN' : 'SIGN UP'),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.purpleAccent,
                                  onPrimary: Colors.white,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                                  fixedSize: Size(130, 40),
                                  textStyle: TextStyle(fontSize: 15),
                                ),
                              ),
                              TextButton(
                                onPressed: _switch,
                                child: Text('${_loginMode == LoginMode.login ? 'SIGNUP' : 'LOGIN'} INSTEAD'),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  dynamic textFieldStyle(String title){
    return TextField(
      decoration: InputDecoration(
        labelText: title,
        labelStyle: const TextStyle(
          fontSize: 15,
        ),
      ),
    );
  }
}