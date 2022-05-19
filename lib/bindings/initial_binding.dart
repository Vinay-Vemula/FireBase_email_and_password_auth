import 'package:email_and_password_auth_using_firebase/controllers/appcontroller.dart';
import 'package:get/instance_manager.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<AppController>(
      AppController(),
      permanent: true,
    );
  }
}
