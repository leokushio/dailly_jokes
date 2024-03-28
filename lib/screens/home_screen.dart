import 'package:dailly_jokes/models/joke_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void onPressed(){
      context.read<JokeProvider>().jokes();
      Navigator.pushNamed(context, '/joke_screen');
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daily Jokes'),
      ),
      body: Center(
        child: IconButton(
          onPressed: onPressed, 
          iconSize: 200.0,
          icon: const Icon(Icons.face_5)
          ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              title: const Text('Saved Jokes'),
              onTap: () {
                context.read<JokeProvider>().fetchJokes();
                Navigator.pop(context);
                Navigator.pushNamed(context, '/saved_jokes_screen');
                
              } 
            )
          ],
        ),
      ),
    );
  }
}