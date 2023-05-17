import 'package:flutter/material.dart';
import 'package:navigation_flutter_test/di.dart';
import 'package:navigation_flutter_test/navigation_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void settingCallback(int id) {
    var a = id;
  }

  @override
  Widget build(BuildContext context) {
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
                  di<NavigationService>().navigateTo(Routes.setting, arguments: {
                    'id': 123,
                    'name': 'John Doe',
                    "settingCallback": settingCallback
                  });
                  // NavigationService().navigateTo('/details', arguments: { 'id': 123, 'name': 'John Doe' });
                },
                child: Text("push to setting page")),

            ElevatedButton(
                onPressed: () {
                  di<NavigationService>().navigateToReplacement(Routes.detail);
                },
                child: Text("pushReplacement detail page")),

          ],
        ),
      ),
    );
  }
}
