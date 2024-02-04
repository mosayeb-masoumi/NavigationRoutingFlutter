import 'package:flutter/material.dart';
import 'package:routing_example/di.dart';

import 'navigation_service.dart';

class DetailScreen extends StatefulWidget {
  final Map<String, dynamic>? arguments;

  const DetailScreen({Key? key, this.arguments}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {

  int? id;
  String? name;
  Function? callback;
  List? list;

  @override
  void initState() {
    super.initState();
    getArguments();
  }

  void getArguments() {
    id = widget.arguments?["id"];
    name = widget.arguments?["name"];
    callback = widget.arguments?["settingCallback"];
    list = widget.arguments?['list'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Detail Screen"),
            const SizedBox(
              height: 20,
            ),
            Text(
              "${id.toString()} $name",
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {

                  if (callback != null) {
                    callback!(5);
                  }

                  // di<NavigationService>().goBack();
                  Navigator.pop(context,
                      "Value from DetailScreen"); // this line will backed a string"Value from DetailScreen", and can be detected in home screen in "then{} block"
                },
                child: const Text("callback from home"))
          ],
        ),
      ),
    );
  }
}
