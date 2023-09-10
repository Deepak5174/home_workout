import 'package:flutter/material.dart';

class customlistview2 extends StatelessWidget {
  const customlistview2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(
          childrenDelegate: SliverChildBuilderDelegate(
              (context, index) => Container(
                  height: 1 00,
                  child: Card(
                    
                      
                      child: Column(
                        children: [
                          // Text(
                          //   "hi",
                          //   textAlign: TextAlign.center,
                          // ),
                          ListTile(
                            leading: Padding(
                              padding: const EdgeInsets.only(right:240 ),
                              child: Image.network("https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/f2ff3b94-82fa-4fd2-97a7-72851b73ebfe/air-jordan-1-zoom-cmft-2-shoes-nX8Qqx.png"),
                            ),
                            title: Text("item"),
                            subtitle: Text("price"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 240 ),
                            child: ElevatedButton(onPressed: (){}, child: Text("add to cart")),
                          )
                        ],
                      ),
                    
                  ),
                  ),childCount: 10
              ), 
              ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: customlistview2(),
  ));
}
