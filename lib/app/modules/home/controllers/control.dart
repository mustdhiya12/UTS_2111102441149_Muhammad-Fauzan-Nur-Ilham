import 'package:get/get.dart';

class control extends GetxController {
  var dict = 0.obs;
  var isDark = false.obs;
  var email = "".obs;
  var pass = "".obs;

  void changeTheme() => isDark.value = !isDark.value;
  void increment() => dict++;
  void dencrement() => dict--;
  void login() {
    //Perform authentication logic
    if (email.value == 'fauzan@gmail.com' && pass.value == "Samarinda1210-") {
      Get.toNamed("/page/mainhome");
    } else {
      var errorMessage = ''.obs;
      errorMessage.value = "Email atau Password Salah";
    }
  }
}
