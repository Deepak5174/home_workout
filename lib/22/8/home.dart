import 'package:flutter/material.dart';
import 'package:home_workout/22/8/dos.dart';

class refactoring extends StatelessWidget {
  var image = [
    "https://rukminim2.flixcart.com/image/416/416/ktlu9ow0/dslr-camera/r/y/j/alpha-zv-e10-24-2-megapixel-with-interchangeable-lens-aps-c-original-imag6wxxhxrv9htc.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/416/416/kokdci80/dslr-camera/v/e/x/z-24-200mm-z5-nikon-original-imag2zuekuxgxsgg.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/416/416/xif0q/computer/d/u/o/aorus-15-9kf-gaming-laptop-gigabyte-original-imagqcw6ugzgrgma.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/416/416/xif0q/computer/2/v/v/-original-imagfdeqter4sj2j.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/416/416/kp1imq80/allinone-desktop/a/g/z/mgph3hn-a-apple-original-imag3d5ttap34g3m.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/416/416/l1dwknk0/headphone/b/f/2/wh-1000xm4-sony-original-imagcywfhzq8hx2z.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/416/416/krs40i80/headphone/e/w/f/noise-cancelling-700-bose-original-imag5gf6fvuaggz4.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/416/416/xif0q/smartwatch/e/4/c/-original-imaghxg9hnk2bztm.jpeg?q=70"
  ];
  var name = [
    "Sony",
    "Nikon",
    "GIGABYTE Core i5 12th Gen",
    "APPLE MacBook AIR M2 ",
    "APPLE 2021 iMac",
    "SONY WH-1000XM4",
    "Bose HDPHS 700",
    "APPLE Watch Ultra"
  ];
  var price = [
    "Rs.144999",
    "Rs.123999",
    "Rs.235899",
    "Rs.110599",
    "Rs.137699",
    "Rs.22399",
    "Rs.34899",
    "Rs.82399",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flipkart"),
        centerTitle: false,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.home)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          // SizedBox(width: 0),
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
          // SizedBox(width: 0),
          IconButton(onPressed: () {}, icon: Icon(Icons.sort_sharp)),

          PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem(
                child: Card(
                    color: Color.fromARGB(159, 204, 204, 204),
                    child: ListTile(
                      title: Text("Settings"),
                      leading: Icon(Icons.settings),
                    )),
              ),
              PopupMenuItem(
                child: Card(
                    color: Color.fromARGB(159, 228, 228, 228),
                    child: ListTile(
                      title: Text("info"),
                      leading: Icon(Icons.info),
                    )),
              ),
              PopupMenuItem(
                child: Card(
                    color: Color.fromARGB(159, 228, 228, 228),
                    child: ListTile(
                      title: Text("User"),
                      leading: Icon(Icons.verified_user_rounded),
                    )),
              ),
            ];
          })
        ],
      ),
      body: GridView.builder(
          itemCount: 8,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return DOSwidget(
                myimage: NetworkImage(image[index]),
                name: name[index],
                price: price[index]);
          }),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: refactoring(),
  ));
}
