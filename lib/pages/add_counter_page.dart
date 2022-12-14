import 'package:flutter/material.dart';
import 'package:flutter_ass_provider/provider/counter_provider.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_ass_provider/pages/home_page.dart';

class AddCounterPage extends StatelessWidget {
  AddCounterPage({Key? key}) : super(key: key);

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Counter")),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        TextField(controller: controller),
        ElevatedButton(
          onPressed: () {
            context.pop();
          },
          child: Text("Add"),
        ),
      ]),
    );
  }
}
