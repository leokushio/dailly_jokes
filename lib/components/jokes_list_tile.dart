import 'package:dailly_jokes/models/joke_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class JokesListTile extends StatelessWidget {

  final MySavedJokes joke;

  const JokesListTile({
    super.key,
    required this.joke
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(child: Text(joke.savedJoke)),
          IconButton(
            onPressed: () => context.read<JokeProvider>().deleteJoke(joke.id), 
            icon: const Icon(Icons.close))
        ],
      ),
    );
  }
}