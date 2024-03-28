
import 'package:isar/isar.dart';
import 'package:jokeapi/jokeapi.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

part 'joke_provider.g.dart';

class JokeProvider extends ChangeNotifier{
  static late Isar isar;

//I N I T I A L S E database-------------------------------------

  static Future<void> initialize() async{
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open([MySavedJokesSchema], directory: dir.path);
  }


  String _myJoke = '';

  String get myJoke => _myJoke;

  Future<void> jokes() async{
    final jokeClient = RawJokeApiClient();
    final joke = await jokeClient.getSingleJoke(SingleJokeOptions([JokeCategory.pun]));
    final joketxt = jsonDecode(joke.body);

    _myJoke  = joketxt['joke'];
    notifyListeners();
    }

  final List<MySavedJokes> _savedJokes = [];

  List<MySavedJokes> get savedJokes => _savedJokes;

  // C R E A T E------------------------------------------------
  Future<void> saveJoke (MySavedJokes jk) async{
    await isar.writeTxn(() => isar.mySavedJokes.put(jk));
    fetchJokes();
    notifyListeners();
  }

  // R E A D ---------------------------------------------------
  Future<void> fetchJokes() async{
    List<MySavedJokes> fetchedJokes = await isar.mySavedJokes.where().findAll();
    _savedJokes.clear();
    _savedJokes.addAll(fetchedJokes);
    notifyListeners();
  }

  // D E L E T E -------------------------------------------------
  Future<void> deleteJoke(int id) async{
    await isar.writeTxn(() => isar.mySavedJokes.delete(id));
    _savedJokes.removeWhere((element) => element.id == id);
    notifyListeners();
  }
}


@collection
class MySavedJokes {
  Id id = Isar.autoIncrement;
  String savedJoke;

  MySavedJokes({
   
    required this.savedJoke
  });
}