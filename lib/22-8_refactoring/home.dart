import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:home_workout/22-8_refactoring/my_widget.dart';
import 'package:home_workout/23-8/readmoreless.dart';

class refactoring extends StatelessWidget {
  var image = [
    "https://rukminim2.flixcart.com/image/832/832/krs40i80/headphone/6/s/q/noise-cancelling-700-bose-original-imag5gf6uyakqjgg.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/832/832/xif0q/headphone/j/n/n/quietcomfort-earbuds-ii-bose-original-imaghgjqh6bryxe2.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/832/832/l1ch4sw0/headphone/m/t/o/wf-1000xm4-sony-original-imagcxgjqhvejxbd.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/832/832/l1dwknk0/headphone/b/f/2/wh-1000xm4-sony-original-imagcywfhzq8hx2z.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/832/832/xif0q/speaker/home-audio-speaker/j/l/l/stmr3-marshall-original-imagkz9khb75nyrg.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/832/832/xif0q/headphone/k/f/b/-original-imagz3z8thxqza7h.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/832/832/k7c88sw0/speaker/mobile-tablet-speaker/b/x/q/jbl-pulse-4-original-imafphczmwryqbhz.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/832/832/xif0q/speaker/tower-speaker/s/s/s/srs-xv900-sony-original-imagkzhvhw437mmt.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/832/832/l3xcr680/headphone/v/z/h/monitor-ii-anc-marshall-original-imagexrbay3tfswq.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/832/832/kigbjbk0-0/headphone/f/l/h/mgyn3hn-a-apple-original-imafy8wcgjtruq8m.jpeg?q=70",
   
  ];
   var pname = [
    "Bose",
    "Bose",
    "Sony",
    "Sony",
    "Marshal",
    "JBL",
    "JBL",
    "Sony",
    "Marshal",
    "Apple",
   
  ];
   var details = [
    "Bose NOISE CANCELLING HDPHS 700,WW",
    "Bose QUIETCOMFORT EARBUDS II",
    "wf 1000 xm4",
    "wx 1000 xm4",
    "Marshall Stanmore III 80 W ",
    "JBL Tour One M2",
    "JBL pulse",
    "SONY SRS-XV900 ",
    "Marshall Monitor II",
    "Airpods max",
   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("gridvie using Refactoring"),
      ),
      body: GridView.builder(
          itemCount: 10,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return personalWidget(
              myimage: NetworkImage(image[index]),
              name: pname[index],
              Subname: details[index],
            );
          }),
    );
  }
}

// class personalWidget extends StatelessWidget {
//   ImageProvider myimage;
//   String name;
//   String Subname;
//   personalWidget(
//       {super.key,
//       required this.myimage,
//       required this.name,
//       required this.Subname});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Column(
//         children: [
//           Image(image: myimage,height: 100,),
//           Text(name),
//           Text(Subname),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               ElevatedButton.icon(
//                   onPressed: () {},
//                   icon: Icon(Icons.favorite),
//                   label: Text("Wishlist", style: TextStyle(fontSize: 10))),
//               SizedBox(
//                 width: 2,
//               ),
//               ElevatedButton.icon(
//                   onPressed: () {},
//                   icon: Icon(Icons.shopping_cart),
//                   label: Text(
//                     "Buy now",
//                     style: TextStyle(fontSize: 10),
//                   ))
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: refactoring(),
  ));
}
