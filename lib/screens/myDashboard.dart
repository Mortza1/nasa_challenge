import 'package:flutter/material.dart';
import 'package:nasa_murtaza/models/nasaPages.dart';
import 'package:lottie/lottie.dart';
import 'package:nasa_murtaza/screens/login.dart';
import 'package:nasa_murtaza/models/app_state-manager.dart';
import 'package:provider/provider.dart';

class MyDashBoard extends StatefulWidget {
  static MaterialPage page() {
    return MaterialPage(
        name: NasaPages.home,
        key: ValueKey(NasaPages.home),
        child: const MyDashBoard());
  }

  const MyDashBoard({Key? key}) : super(key: key);

  @override
  State<MyDashBoard> createState() => _MyDashBoardState();
}

class _MyDashBoardState extends State<MyDashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            Lottie.asset('assets/signinplz.json', height: 400),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Why is this so empty?",
              style: TextStyle(
                  color: Colors.white, fontSize: 25, fontFamily: 'Anton'),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('Sign in or create a new account',
                style: TextStyle(
                    color: Colors.white, fontSize: 25, fontFamily: 'Anton')),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  minWidth: 100,
                  height: 50,
                  onPressed: () => {},
                  color: Colors.white,
                  hoverColor: Colors.purpleAccent,
                  hoverElevation: 34,
                  textColor: Colors.black,
                  splashColor: Colors.purple,
                  child: const Center(
                      child: Text(
                    "Register",
                    style: TextStyle(fontFamily: 'Anton'),
                  )),
                ),
                const SizedBox(
                  width: 20,
                ),
                MaterialButton(
                  minWidth: 100,
                  height: 50,
                  onPressed: () => {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Login(),
                      ),
                    )
                  },
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
              ],
            )
          ],
        ),
      ),
    );
  }
}
