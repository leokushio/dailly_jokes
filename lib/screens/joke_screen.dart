
import 'package:dailly_jokes/models/joke_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class JokeScreen extends StatelessWidget {
  const JokeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    String myJoke = context.watch<JokeProvider>().myJoke;
   
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => context.read<JokeProvider>().saveJoke(MySavedJokes(savedJoke: myJoke)), 
            icon: const Icon(Icons.save)
            )
        ],
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(50),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.grey
          ),
          child: Text(myJoke)
          ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: context.read<JokeProvider>().jokes,
        child: const Icon(Icons.face_5),
        ),
    );
  }
}