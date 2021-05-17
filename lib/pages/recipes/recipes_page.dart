import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_internative/pages/recipes/recipes_controller.dart';

class RecipesPage extends GetView<RecipesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipes'),
      ),
      body: Container(
        child: Center(
          child: Text(
            "Recipes Page",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}