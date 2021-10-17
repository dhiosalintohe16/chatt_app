import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/komunitas_controller.dart';

class KomunitasView extends GetView<KomunitasController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Komunitas"), 
        titleTextStyle: TextStyle(
          fontWeight:FontWeight.bold,
          fontSize: 19,
          ),
        centerTitle: true,
        backgroundColor: Colors.green[600],
        
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios
      ))),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Row(
                
                children: [
                  Text("Komunitas")
                  
                ],
              ),
        )],
      )),
    );
  }
}