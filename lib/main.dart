import 'package:dailly_jokes/models/joke_provider.dart';
import 'package:dailly_jokes/screens/home_screen.dart';
import 'package:dailly_jokes/screens/joke_screen.dart';
import 'package:dailly_jokes/screens/saved_jokes_screen.dart';
import 'package:dailly_jokes/themes/dark_mode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await JokeProvider.initialize();
  
  runApp(
    ChangeNotifierProvider(
    create: (context) => JokeProvider(),
    child: const MainApp())
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      routes: {
        '/home_screen':(context) => const HomeScreen(),
        '/joke_screen':(context) => const JokeScreen(),
        '/saved_jokes_screen':(context) => const SavedJokesScreen()
      },
      theme: darkMode,
    );
  }
}
