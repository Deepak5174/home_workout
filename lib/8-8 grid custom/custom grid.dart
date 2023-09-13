import 'package:flutter/material.dart';

class customgrid extends StatelessWidget {
  var item = [
    "item 1",
    "item 2",
    "item 3",
    "item 4",
    "item 5",
    "item 6",
    "item 7",
    "item 8",
    
  ];

  var price =[
    "Rs-90","Rs-1,000","Rs-1,500","Rs-2,000",
   " Rs-2,500","Rs-3,000" ,"Rs-90","Rs-1,000"

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("super shopee"),
        ),
        body: GridView.custom(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            childrenDelegate: SliverChildListDelegate(List.generate(
                8,
                (index) => Center(
                      child: Column(
                        children: [
                          Container(
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1693598524652-e4e5bc3d2bcc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80")),
                            ),
                          ),
                          Text(item[index]),
                          Text(price [index] ),
                          // ListTile(
                          //   title: Text("item"),
                          //    subtitle: ("\$100"),
                          // )
                        ],
                      ),
                    )))));
  }
}

void main() {
  runApp(MaterialApp(
    home: customgrid(),
    debugShowCheckedModeBanner: false,
  ));
}
