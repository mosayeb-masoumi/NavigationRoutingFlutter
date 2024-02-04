
import 'package:flutter/material.dart';
import 'package:routing_example/di.dart';

import 'navigation_service.dart';

class DetailScreen extends StatefulWidget {

  final Map<String, dynamic>? arguments;

  const DetailScreen({Key? key, this.arguments }) : super(key: key);


  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {

    var id = widget.arguments?["id"];
    var name = widget.arguments?["name"];
    var callback = widget.arguments?["settingCallback"];
    var list = widget.arguments?['list'];


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
            const SizedBox(height: 20,),
            Text("${id.toString()} $name", style: const TextStyle(color: Colors.white),),
            const SizedBox(height: 10,),

            ElevatedButton(onPressed: (){
              if(callback!=null){
                callback(5);
              }
              // di<NavigationService>().goBack();
              Navigator.pop(context, "Value from DetailScreen");  // this line will backed a string"Value from DetailScreen", and can be detected in home screen in "then{} block"
            }, child: const Text("callback from home"))

          ],
        ),
      ),
    );
  }
}