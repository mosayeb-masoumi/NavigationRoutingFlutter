
import 'package:flutter/material.dart';
import 'package:routing_example/di.dart';
import 'package:routing_example/navigation_service.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: Colors.blueGrey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             const Text("Profile Screen"),
             const SizedBox(height: 20,),
             ElevatedButton(onPressed: (){
              di<NavigationService>().goBack();
            }, child: const Text("pop back"))
          ],
        ),
      ),
    );
  }
}
