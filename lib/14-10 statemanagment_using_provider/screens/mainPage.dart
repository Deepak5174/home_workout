import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:home_workout/14-10%20statemanagment_using_provider/provider/movieProvider.dart';
import 'package:home_workout/14-10%20statemanagment_using_provider/screens/WhishlistPage.dart';
import 'package:home_workout/28-7%20splash%20login/Home.dart';
import 'package:provider/provider.dart';

class mainPage extends StatelessWidget {
  const mainPage({super.key});

  @override
  Widget build(BuildContext context) {
    var movies = context.watch<MovieProvider>().movies;
    var Wishmovie = context.watch<MovieProvider>().moviesWishlist;
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
      ),
      body: Column(
        children: [
          ElevatedButton.icon(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=> WishlistPage())),
              icon: FaIcon(FontAwesomeIcons.heart),
              label: Text("Wishlist ${Wishmovie.length}")),
          Expanded(
              child: ListView.builder(
                  itemCount: movies.length,
                  itemBuilder: (context, index) {
                    final currentmovies = movies[index];
                    return Card(
                      child: ListTile(
                        title: Text(currentmovies.title),
                        subtitle: Text(currentmovies.time!),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.favorite,
                            color: Wishmovie.contains(currentmovies)
                                ? Colors.red
                                : Colors.grey,
                          ),
                          onPressed: () {
                            if (!Wishmovie.contains(currentmovies)) {
                              context
                                  .read<MovieProvider>()
                                  .addtowishlist(currentmovies);
                            } else {
                              context
                                  .read<MovieProvider>()
                                  .removefromWishlist(currentmovies);
                            }
                          },
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}

void main() {
  runApp(ChangeNotifierProvider<MovieProvider>(
    create: (BuildContext context) => MovieProvider(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mainPage()),
  ));
}
