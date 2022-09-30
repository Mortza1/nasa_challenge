import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nasa_murtaza/models/nasaPages.dart';

class Login extends StatefulWidget {
  static MaterialPage page() {
    return MaterialPage(
        name: NasaPages.loginPath,
        key: ValueKey(NasaPages.loginPath),
        child: const Login());
  }

  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Stack(children: [
          Center(child: Lottie.asset('assets/sparkles.json')),
          Center(
            child: Container(
              height: 600,
              width: 500,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2)),
              child: Column(
                children: [
                  Lottie.asset('assets/login.json', height: 300),
                  const SizedBox(
                    height: 10,
                  ),
                  Form(
                      child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                        child: TextFormField(
                          controller: email,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Anton'),
                          decoration: const InputDecoration(
                              hintText: 'Email',
                              hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Anton',
                                  fontSize: 20),
                              disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.pink))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                        child: TextFormField(
                          controller: password,
                          obscureText: true,
                          textInputAction: TextInputAction.done,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Anton'),
                          decoration: const InputDecoration(
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Anton',
                                  fontSize: 20),
                              disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.pink))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                        child: MaterialButton(
                          minWidth: 200,
                          height: 80,
                          onPressed: () => {},
                          color: Colors.white,
                          hoverColor: Colors.purpleAccent,
                          hoverElevation: 34,
                          textColor: Colors.black,
                          splashColor: Colors.purple,
                          child: const Center(
                              child: Text(
                            "Log in",
                            style: TextStyle(fontFamily: 'Anton'),
                          )),
                        ),
                      ),
                    ],
                  ))
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
