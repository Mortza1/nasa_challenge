import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:provider/provider.dart';
import 'package:nasa_murtaza/models/app_state-manager.dart';
import 'package:nasa_murtaza/navigation/app_router.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Nasa());
}
class Nasa extends StatefulWidget {
  const Nasa({Key? key}) : super(key: key);

  @override
  State<Nasa> createState() => _NasaState();
}

class _NasaState extends State<Nasa> {
  final _appStateManager = AppStateManager();
  late AppRouter _appRouter;

  @override
  void initState(){
    super.initState();
    _appRouter = AppRouter(
        appStateManager: _appStateManager
    );
  }
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => _appStateManager)
      ],
      child: Consumer<AppStateManager>(
        builder: (context, appStateManager, child){
          return MaterialApp(
            title: "NasaApp",
            theme : ThemeData(
              //primaryColor: Colors.deepPurpleAccent[200]
            ),
            home: Router(
              routerDelegate: _appRouter,
              backButtonDispatcher: RootBackButtonDispatcher(),
            ),
          );
        },
      ),
    );
  }
}
