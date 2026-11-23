
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vvvvvvv/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    HomeController controller = Get.put(HomeController());


    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text("Home Screen"),
      ),
      body: Center(
        child: Column(
          children: [
           Obx(()=> Container(
             height: 200,
             width: 200,
             color: Colors.red.withOpacity(controller.opacity.value)
           ),),
            Obx(()=>Slider(
                value: controller.opacity.value,
                onChanged: (value){
                  controller.setOpacity(value);
                }
            ))
          ],
        ),
      ),
    );
  }
}































// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:vvvvvvv/login_screen.dart';
//
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: Colors.blue,
//         title: Text("Home Screen"),
//       ),
//       // floatingActionButton: FloatingActionButton(onPressed: (){
//       //   Get.snackbar(
//       //       backgroundColor: Colors.red,
//       //       colorText: Colors.white,
//       //       snackPosition: SnackPosition.BOTTOM,
//       //       duration: Duration(seconds: 3),
//       //       icon: Icon(Icons.add,color: Colors.white,),
//       //       "HI", "How are you?");
//       // }),
//
//       body: Column(
//         children: [
//
//
//           ListTile(
//             title: Text("message".tr),
//             subtitle: Text("name".tr),
//           ),
//           SizedBox(height: 40,),
//           Row(
//             children: [
//               OutlinedButton(onPressed: (){
//                 Get.updateLocale(Locale("en", "us"));
//               }, child: Text("English")),
//               OutlinedButton(onPressed: (){
//                 Get.updateLocale(Locale("ur", "PK"));
//               }, child: Text("Urdu")),
//             ],
//           ),
//           SizedBox(height: 20,),
//           InkWell(
//             onTap: (){
//               Get.to(LoginScreen());
//             },
//             child: Container(
//               height: Get.height*0.3,
//               width: Get.width*0.8,
//               color: Colors.red,
//             ),
//           )
//
//
//           // Card(
//           //   child: ListTile(
//           //     title: Text("HI Ahmad"),
//           //     subtitle: Text("How are you doing?"),
//           //
//           //     onTap: (){
//           //      Get.defaultDialog(
//           //
//           //        title: "Ahmad",
//           //        middleText: "delete this line",
//           //        confirm: ElevatedButton(
//           //            onPressed: (){
//           //              Get.back();
//           //              Get.snackbar("Hi", "delete this default text");
//           //            },
//           //            child: Text("Confirm"),
//           //
//           //        ),
//           //
//           //        cancel:ElevatedButton(
//           //          onPressed: (){
//           //            Get.back();
//           //          },
//           //          child: Text("Cancel"),
//           //
//           //        ),
//           //
//           //
//           //      );
//           //     },
//           //   ),
//           // ),
//           // Card(
//           //   child: Column(
//           //     children: [
//           //       ListTile(
//           //         title: Text("Light Mood"),
//           //         subtitle: Text("Light mood on"),
//           //         onTap: (){
//           //         Get.changeTheme(ThemeData.light());
//           //         },
//           //       ),
//           //       SizedBox(height: 20,),
//           //       ListTile(
//           //         title: Text("Dark mood"),
//           //         subtitle: Text("Dark mood on"),
//           //
//           //         onTap: (){
//           //           Get.changeTheme(ThemeData.dark());
//           //         },
//           //       ),
//           //     ],
//           //   ),
//           // ),
//           // Container(
//           //   height: Get.height*0.3,
//           //   width: Get.width*0.1,
//           //   color: Colors.red,
//           // )
//         ],
//       ),
//     );
//   }
// }
