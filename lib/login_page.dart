import 'package:flutter/material.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // Image.asset('assets/images/logo.png'),
              Container(
                width: 200,
                height: 200,
                child: Image.asset('assets/images/logo.png'),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 15, bottom: 20),
                  child: Column(
                    children: [
                      TextField(
                        onChanged: (text) {
                          email = text;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            labelText: 'Email', border: OutlineInputBorder()),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        onChanged: (text) {
                          password = text;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: 'Password',
                            border: OutlineInputBorder()),
                      ),
                      SizedBox(height: 10),
                      RaisedButton(
                        color: Colors.blue,
                        textColor: Colors.white,
                        onPressed: () {
                          if (email == 'teste@gmail.com' &&
                              password == '123456') {
                            print('Acesso permitido');
                            // Navigator.of(context).push(
                            //   MaterialPageRoute(builder: (context) => HomePage()),
                            // );
                            // Navigator.of(context).pushReplacement('/home');
                            Navigator.of(context).pushNamed('/home');
                          } else {
                            print('Acesso negado');
                          }
                        },
                        child: Container(
                          width: double.infinity,
                          child: Text(
                            'Entrar',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child:
                Image.asset('assets/images/background.jpg', fit: BoxFit.cover),
          ),
          Container(color: Colors.black.withOpacity(0.5)),
          _body()
        ],
      ),
    );
  }
}
