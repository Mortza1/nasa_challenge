import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:lottie/lottie.dart';
import 'package:nasa_murtaza/models/nasaPages.dart';
import 'package:nasa_murtaza/models/app_state-manager.dart';

class SplashScreen extends StatefulWidget {
  static MaterialPage page() {
    return MaterialPage(
        name: NasaPages.splashScreen,
        key: ValueKey(NasaPages.splashScreen),
        child: const SplashScreen());
  }

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Provider.of<AppStateManager>(context, listen: false).initializeApp();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('assets/splasha.json'),
            Column(
              children: const [
                Text(
                  'CAPACITY BUILDING',
                  style: TextStyle(
                      fontFamily: 'Anton', fontSize: 50, color: Colors.white),
                ),
                SizedBox(
                    height: 80,
                    child: Center(
                        child: Text(
                      'RESOURCES',
                      style: TextStyle(
                          fontFamily: 'Anton',
                          fontSize: 50,
                          color: Colors.white),
                    ))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
