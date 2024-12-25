import 'package:adv_flutter_ch_3/api%20app/controller/api%20helper/api_helper.dart';
import 'package:adv_flutter_ch_3/api%20app/controller/home%20controller/home_controller.dart';
import 'package:adv_flutter_ch_3/api%20app/model/placeholder_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello, Deep..."),
      ),
      body: FutureBuilder(
        future: controller.apiCalling(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<PlaceholderModel>? apiList = snapshot.data;
            return ListView.builder(
              itemBuilder: (context, index) => Card(
                child: ListTile(
                  title: Text(controller.apiList[index].title.toString()),
                ),
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
