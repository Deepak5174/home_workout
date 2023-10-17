import 'package:flutter/material.dart';
import 'package:home_workout/14-10%20statemanagment_using_provider/provider/movieProvider.dart';
import 'package:provider/provider.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    var wishmovies = context.watch<MovieProvider>().moviesWishlist;
    return Scaffold(
    
      appBar: AppBar(
        title: Text("wishlist"),
      ),
      body: ListView.builder(
        itemCount: wishmovies.length,
        itemBuilder: (context, index){
          final wishMovie =wishmovies[index];
          return Card(
            child: ListTile(title: Text(wishMovie.title ),
            subtitle: Text(wishMovie.time!),
            trailing: TextButton(onPressed: (){
             context.read<MovieProvider>().removefromWishlist(wishMovie);
            }, child: Text("Remove"))
            ),
          );
        }),
    );
  }
}