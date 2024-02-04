
import 'package:flutter/material.dart';
import 'package:routing_example/di.dart';
import 'package:routing_example/navigation_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.green,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  di<NavigationService>().navigateTo(Routes.detail, arguments: {
                    'id': 123,
                    'name': 'John Doe',
                    'list':['ali', 'reza','nabi'],
                    "settingCallback": (value){
                       var a = value;
                    }
                  })?.then((value) {
                    var a = value;
                  });
                  // NavigationService().navigateTo('/details', arguments: { 'id': 123, 'name': 'John Doe' });
                },
                child: const Text("push to detail page with argument")),



            ElevatedButton(
                onPressed: () {
                  di<NavigationService>().navigateTo(Routes.detail)?.then((value) {
                    var a = value;
                  });
                  // NavigationService().navigateTo('/details', arguments: { 'id': 123, 'name': 'John Doe' });
                },
                child: const Text("push to detail page with NO argument")),


            ElevatedButton(
                onPressed: () {
                  di<NavigationService>().navigateToReplacement(Routes.profile);
                },
                child: const Text("pushReplacement profile page")),

            ElevatedButton(
                onPressed: () {
                  di<NavigationService>().navigateTo(Routes.profile);
                },
                child: const Text("push to profile page")),

          ],
        ),
      ),
    );
  }
}