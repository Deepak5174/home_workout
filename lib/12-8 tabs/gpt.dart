import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SliverAppBar with Pinned TabBar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyCustomScrollView(),
    );
  }
}

class MyCustomScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: true, // Make the app bar pinned
          expandedHeight: 200.0, // Set the height when expanded
          flexibleSpace: FlexibleSpaceBar(
            title: Text('SliverAppBar with Pinned TabBar'),
            background: Image.network(
              'https://example.com/your_image.jpg', // Replace with your image URL
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: DefaultTabController(
            length: 2, // Number of tabs
            child: Column(
              children: <Widget>[
                TabBar(
                  tabs: [
                    Tab(text: 'Tab 1'),
                    Tab(text: 'Tab 2'),
                  ],
                ),
                // Add your tab content here
                Container(
                  height: 500.0, // Adjust the height according to your content
                  child: TabBarView(
                    children: [
                      // Tab 1 content
                      Center(child: Text('Tab 1 Content')),
                      
                      // Tab 2 content
                      Center(child: Text('Tab 2 Content')),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        // Add more SliverList or SliverGrid widgets for additional content if needed
      ],
    );
  }
}






