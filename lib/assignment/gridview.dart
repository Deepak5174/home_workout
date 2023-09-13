import 'package:flutter/material.dart';

class shrine extends StatefulWidget {
  const shrine({super.key});

  @override
  State<shrine> createState() => _shrineState();
}

class _shrineState extends State<shrine> {
  var image = [
    "https://rukminim2.flixcart.com/image/832/832/ktlu9ow0/dslr-camera/r/y/j/alpha-zv-e10-24-2-megapixel-with-interchangeable-lens-aps-c-original-imag6wxxhxrv9htc.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/832/832/l1b1oy80/monitor/u/c/y/ls27bm501ewxxl-full-hd-27-ls27bm501ewxxl-samsung-original-imagcwkrj7vsgzqz.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/832/832/xif0q/projector/w/w/o/zeb-pixaplay-20-5-2-zeb-pixaplay-20-full-hd-zebronics-original-imagrhdqwyxzheyw.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/832/832/kp5sya80/screen-guard/tempered-glass/o/v/n/apple-macbook-air-m1-13-3-inch-lightwings-original-imag3gh5xftgbpg3.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/832/832/xif0q/headphone/y/x/y/-original-imagz2d8fkkf5vme.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/832/832/xif0q/tablet/o/k/w/-original-imagj72ttsqcrehk.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/832/832/l0jwbrk0/tablet/k/x/y/-original-imagcbjaayfxgmev.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/832/832/xif0q/mobile/q/q/w/galaxy-s23-ultra-5g-smartphone-sm-s918bzkcins-samsung-original-imagqjczezmgquhb.jpeg?q=70",
  ];
  var item = [
    "Sony",
    "Samsung",
    "Zebronics",
    "Apple Macbook",
    "Sony wh1000",
    "Apple ipad",
    "Apple ipad",
    "Samsung S23 ultra",
  ];
  var price = [
    "499",
    "699",
    "5999",
    "499",
    "399",
    "599",
    "299",
    "699",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Shrine"),
          leading: PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem(
                  child: ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
              )),
              PopupMenuItem(
                  child: ListTile(
                leading: Icon(Icons.info_outline),
                title: Text("Info"),
              )),
            ];
          }),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.sort))
          ],
        ),
        body: GridView.custom(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 1,
            ),
            childrenDelegate: SliverChildListDelegate(
              List.generate(
                8,
                (index) =>
                    //  Padding(
                    //   padding: const EdgeInsets.only(top: 10),
                    Container(
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.network(
                          image[index],
                          height: 100,
                        ),
                        ListTile(
                          title: Text(item[index]),
                          subtitle: Text(price[index]),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )));
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: shrine(),
  ));
}
