import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tierra_app/app/controllers/auth_controller.dart';
import 'package:tierra_app/app/utils/errorpage.dart';
import 'package:tierra_app/app/utils/loadingpage.dart';
import 'package:tierra_app/app/utils/splashscreen.dart';


import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
 
 final authc = Get.put(AuthController(), permanent: true );

  @override
  Widget build(BuildContext context) {
        return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Error();
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {

            return GetMaterialApp(
              initialRoute: Routes.KOMUNITAS,
              getPages: AppPages.routes,
            );
          
          // return FutureBuilder(
          //   future: Future.delayed(Duration(seconds: 5)),
          //   builder: (context, snapshot){
          //     if (snapshot.connectionState == ConnectionState.done) {
          //       return Obx(() => GetMaterialApp(
          //         debugShowCheckedModeBanner: false,
          //         title: "Komunitas",
          //         initialRoute: authc.isSkipIntro.isTrue ?
          //           authc.isAuth.isTrue ? 
          //           Routes.HOME 
          //           :  Routes.LOGIN 
          //         : Routes.INTODUCTION ,
          //         getPages: AppPages.routes,
          //        )
          //      );
          //     }

          //     return SplashScreen();

          // });
          
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return Loading();
            },
    );
  }
}
          
  

