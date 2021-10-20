import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:tierra_app/app/routes/app_pages.dart';

import '../controllers/komunitas_controller.dart';

class KomunitasView extends GetView<KomunitasController> {
  final List<Widget> myChats = List.generate(
      20,
      (index) => ListTile(
            onTap: () => Get.toNamed(Routes.CHAT_ROOM),
            leading: CircleAvatar(
              backgroundColor: Colors.green[100],
              child: Image.asset(
                "assets/logo/ss.png",
                fit: BoxFit.cover,
              ),
              radius: 30,
            ),
            title: Text(
              "Namanya orang ${index + 1}",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
            ),
            subtitle: Text("Isi Pesannya"),

            // trailing: Chip(
            //   label: Text(
            //     '16',
            //     style: TextStyle(color: Colors.white),
            //   ),
            //   backgroundColor: Colors.green,
            // ),
          )).reversed.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
          title: Text("Komunitas"),
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.black
                      ),
          backgroundColor: Colors.white,

          // leading:
          //     IconButton(onPressed: () {}, 
          //     icon: Icon(Icons.arrow_back_ios,
          //     color: Colors.black,)),

          flexibleSpace: Padding(
            padding: const EdgeInsets.fromLTRB(10, 70, 10, 10),
            child: Align(
              alignment: Alignment.center,
              child: Row(
                children: [
                  Container(
                    width: Get.width * 0.8,
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          hintText: "Seacrh",
                          fillColor: Colors.grey[100],
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1))),
                    ),
                  ),
                  
                  Container(
                    
                    child: IconButton(
                      padding: EdgeInsets.only(left: 30),
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications_active,
                        color: Colors.black,
                        size: Get.width * 0.07,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        preferredSize: Size.fromHeight(150),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Container(
            //     padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
            //     color: Colors.white,
            //     child:
            //         Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            //       IconButton(
            //         onPressed: () {},
            //         icon: Icon(
            //           Icons.arrow_back_ios_new,
            //           size: 26,
            //         ),
            //       ),
            //       SizedBox(
            //         width: 20,
            //       ),
            //       Text(
            //         'Komunitas',
            //         style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            //       ),
            //     ])),
            // TextField(
            //   decoration:
            //       InputDecoration(fillColor: Colors.amber, filled: true),
            // ),
            Expanded(
                child: ListView.builder(
                
                    itemCount: myChats.length,
                    itemBuilder: (context, index) => myChats[index])),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_comment),
      backgroundColor: Colors.green[600]),
    );
  }

}
