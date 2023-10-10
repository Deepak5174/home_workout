import 'package:flutter/material.dart';

// ignore: camel_case_types
class playlist2 extends StatefulWidget {
  const playlist2({super.key});

  @override
  State<playlist2> createState() => _playlist2State();
}

// ignore: camel_case_types
class _playlist2State extends State<playlist2> {
  int index = 0;
  var image = [
    "https://c.saavncdn.com/editorial/DanceWithAnirudhTamil_20221227154952.jpg",
    "https://lastfm.freetls.fastly.net/i/u/300x300/1e2364244bc8acef74020c48b143c7f2.jpg",
    "https://cdns-images.dzcdn.net/images/cover/e8a3333f8b5382b07190a415e16248b4/264x264.jpg",
    "https://i.scdn.co/image/ab6761610000e5eb1a17377fa816d625eb8e7435",
    "https://static.wikia.nocookie.net/taylor-swift/images/d/d7/Safe_%26_Sound_TS.jpg/revision/latest?cb=20230317104714",
    "https://raaga.gumlet.io/raagaimg/r_img/250/t/tc0001201-2.jpg?w=240&dpr=2.6",
    "https://c.saavncdn.com/editorial/logo/ArijitSadSongs_20211117063136.jpg",
    "https://a10.gaanacdn.com/images/albums/33/1648133/crop_480x480_1508159946_1648133.jpg",
    "https://c.saavncdn.com/editorial/Let_sPlayDulquerSalmaan_20221128211547.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNIen_LYiT_IJO76iRcaXeCvDBTXl6Ebx4EA&usqp=CAU",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 43, 42, 42),
      // appBar: AppBar(
      //   title: Text("Playlist"),
      //   centerTitle: true,
      // ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.redAccent,
          backgroundColor: const Color.fromARGB(255, 31, 30, 30),
          type: BottomNavigationBarType.fixed,
          currentIndex: index,
          onTap: (tappedindex) {
            setState(() {
              index = tappedindex;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                ),
                label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.white,), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_rounded,color: Colors.white,), label: "Profile"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings,color: Colors.white,), label: "Settings")
          ]),

      body: SafeArea(
          child: CustomScrollView(slivers: [
        SliverAppBar(
          backgroundColor: const Color.fromARGB(255, 43, 42, 42),
          floating: true,
          pinned: true,
          title: const Text("Playlist"),
          centerTitle: true,
          bottom: AppBar(
            backgroundColor: const Color.fromARGB(255, 43, 42, 42),
            title: SizedBox(
                width: double.infinity,
                height: 50,
                child: TextFormField(
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey,
                    prefixIcon: const Icon(Icons.search),
                    hintText: "Search here",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                )),
          ),
        ),
        SliverGrid(
            delegate: SliverChildBuilderDelegate(
                (context, index) => Padding(
                      padding:
                          const EdgeInsets.only(top: 30, left: 10, right: 10),
                      child: Card(
                        
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 8,
                         margin: const EdgeInsets.all(10),
                        child: Image.network(image[index],fit: BoxFit.fill,),
                        
                      ),
                    ),
                childCount: 10),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 25,
            )),
      ])),
    );
  }
}

void main() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: playlist2())); //this is the code to run our application in flutter
}
