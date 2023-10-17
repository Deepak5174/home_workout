import 'dart:math';

import 'package:flutter/material.dart';
import 'package:home_workout/14-10%20statemanagment_using_provider/model/movies.dart';

final List<Movies> movieList = List.generate(
    10,
    (index) => Movies(
        title: 'movie $index', time: '${Random().nextInt(100) + 60}minuties'));

class MovieProvider extends ChangeNotifier {
  final List<Movies> _movie = movieList;

  List<Movies> get movies => _movie;

  final List<Movies> _wishlistmovie = [];
  List<Movies> get moviesWishlist => _wishlistmovie;
  void addtowishlist(Movies moviefromMainPage) {
    _wishlistmovie.add(moviefromMainPage);
    notifyListeners();
  }

  void removefromWishlist(Movies removedMovie) {
    _wishlistmovie.remove(removedMovie);
    notifyListeners();
  }
}
