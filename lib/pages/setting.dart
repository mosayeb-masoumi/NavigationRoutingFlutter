
import 'package:flutter/material.dart';
import 'package:navigation_flutter_test/di.dart';
import 'package:navigation_flutter_test/navigation_service.dart';

class SettingPage extends StatefulWidget {

  final Map<String, dynamic> arguments;
  const SettingPage({Key? key, required this.arguments }) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {

  @override
  Widget build(BuildContext context) {

    var id = widget.arguments["id"];
    var name = widget.arguments["name"];
    var callback = widget.arguments["settingCallback"];

    return Scaffold(
      backgroundColor: Colors.blue,

      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Text("${id.toString()} $name", style: const TextStyle(color: Colors.white),),
            const SizedBox(height: 10,),
            ElevatedButton(onPressed: (){

              callback(5);
              di<NavigationService>().goBack();

            }, child: const Text("callback from home"))

          ],
        ),
      ),
    );
  }
}
