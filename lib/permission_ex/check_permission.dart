// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:http/http.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class check_permission extends StatefulWidget {
  const check_permission({super.key});

  @override
  State<check_permission> createState() => _check_permissionState();
}

class _check_permissionState extends State<check_permission> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: RequestCameraPermission, child: Text("camera")),
            ElevatedButton(onPressed: RequestMultiplePermission, child: Text("multipple permission")),
            ElevatedButton(onPressed: (){}, child: Text("go to settings")),
          ],
        ),
      ),
    );
  }

  void RequestCameraPermission() async{
    // status can either be : granted,denied, restricted or permenantly denied
    var status =await Permission.camera.status;
    if (status.isGranted) {
      ImagePicker picker =ImagePicker();
      picker.pickImage(source: ImageSource.camera);
      print("permission granted");
      
    }else if(status.isDenied){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("permission denied"),));
      if (await Permission.camera.request().isGranted) {
        print("permission was granted");
        
      }
    }
  }

  void RequestMultiplePermission()async {
    Map <Permission, PermissionStatus>statuses = await[
      Permission.location,
      Permission.bluetooth,
      Permission.storage,
      Permission.photos,
    ].request();
    print("location permission: ${statuses[Permission.location]}"
       "bluetooth permission: ${statuses[Permission.bluetooth]}"
       "storage permission: ${statuses[Permission.storage]}"
       "photos permission: ${statuses[Permission.photos]}"
        );
  }
}
void main(){
  runApp(MaterialApp(
    home: check_permission(),
  ));
}