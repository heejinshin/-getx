import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    // Controller controller = Get.put(Controller());

    return Scaffold(
      appBar: AppBar(
        title: Text("Get X"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder<Controller>(  // state가 반영되길 원하는
              init: Controller(),  // controller 인스턴스 생성
              builder: (_) => Text('Current value is ${Get.find<Controller>().x}',
              style: TextStyle(fontSize: 20, color: Colors.red),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: (){
                Get.find<Controller>().increment();
              },
              child: Text('Add number'),
            )
          ],
        ),
      ),
    );
  }
}


