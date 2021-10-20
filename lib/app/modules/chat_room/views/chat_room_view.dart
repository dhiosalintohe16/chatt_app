import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tierra_app/app/routes/app_pages.dart';

import '../controllers/chat_room_controller.dart';

class ChatRoomView extends GetView<ChatRoomController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        toolbarHeight: 80,
        backgroundColor: Colors.white,

        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Dhio Immanuel Salintohe",
              style : GoogleFonts.chelaOne(
                fontStyle: FontStyle.normal,
                color: Colors.pink,
                fontWeight: FontWeight.w400,
                fontSize: 18),  )             
            ],
        ),

        
        elevation: 3,

        leading: InkWell(
          onTap: (){},
          borderRadius: BorderRadius.circular(100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 5,),
              Icon(Icons.arrow_back_ios_new,color: Colors.black,),
              SizedBox(width: 5,),
              CircleAvatar(
                radius: 30,)
            ],

          ),
        ),
        
      ),
      body: Column(children: [
        Expanded(
          child: Container(
            width: double.infinity,
            height: 100,
            color: Colors.white,
          ),
        ),
        Container(

          margin: EdgeInsets.only(bottom: context.mediaQueryPadding.bottom),
          width: Get.width,
          height: 100,
          color: Colors.green[600],
          child: Row(
             
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [ 
              SizedBox(width: 10,),            
              CircleAvatar(
                radius: 35, 
                backgroundColor: Colors.green[100],
                child: Icon(Icons.person),),

              SizedBox(width: 10,),
              Expanded(
                child: Container(
                  child: TextField(
                    
                    cursorColor: Colors.white,
                    decoration: InputDecoration (
                       
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white) ,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white),
                        borderRadius: BorderRadius.circular(20),),

                    prefixIcon: IconButton(
                      onPressed: (){}, 
                      icon: Icon(Icons.emoji_emotions_outlined),
                      color: Colors.white,
                      iconSize: 25,),
                    hintText: "Masukkan Pesan" ,
                    hintStyle: TextStyle(color: Colors.white)),
                  ))),

              SizedBox(width: 10,),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.send),
                color: Colors.white,
                iconSize: 33,
              ),
            ],
          ),
        )
      ]),
    );
  }
}
