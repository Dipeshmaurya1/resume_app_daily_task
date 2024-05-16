import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 25,
                ),
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                    // color: Colors.grey,
                    image: DecorationImage(
                  image: AssetImage('Assets/Image/banner.png'),
                )),
              ),
              const Text(
                'Welcome Back ,',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                'Make it work , Make it right,Make it fast',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.red),
                  ),
                  prefixIcon: Icon(Icons.person_2_outlined),
                  hintText: '  E-Mail',
                  labelText: 'E-mail',
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                obscureText: true,
                obscuringCharacter: '*',
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                  prefixIcon: Icon(Icons.fingerprint_rounded),
                  hintText: 'Password',
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.black),
                  suffixIcon: Icon(
                    Icons.visibility_off_outlined,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forget Password?',
                    style: TextStyle(
                      color: Colors.blueAccent,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: 344,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                    child: Text(
                  'LOGIN',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
                )),
              ),
              SizedBox(
                height: 15,
                width: 10,
              ),
              Center(child: Text('OR')),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 50,
                  width: 344,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Image.asset(
                          'Assets/Image/google.jpeg',
                          height: 25,
                          width: 25,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Sing-In with Google',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500,fontSize: 15),
                      ),
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an Account?',
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    'Singup',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
