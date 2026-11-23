
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeController extends GetxController{


  RxDouble opacity = 0.1.obs;

  setOpacity(double value){

    opacity.value = value;

  }


}