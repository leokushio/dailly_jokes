import 'package:dailly_jokes/components/jokes_list_tile.dart';
import 'package:dailly_jokes/models/joke_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SavedJokesScreen extends StatelessWidget {
  const SavedJokesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<MySavedJokes> jks = context.watch<JokeProvider>().savedJokes;
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: jks.length,
              itemBuilder: (context, val){
                // String joke = jks[val].savedJoke;
                MySavedJokes joke = jks[val];
                return JokesListTile(joke: joke);
              }
              )
            ),
        ],
      ),
    );
  }
}