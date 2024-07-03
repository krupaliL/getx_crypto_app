import 'package:get/get.dart';
import 'package:getx_crypto_app/controllers/assets_controller.dart';
import 'package:getx_crypto_app/services/http_service.dart';

Future<void> registerServices() async {
  Get.put(
    HTTPService(),
  );
}

Future<void> registerController() async {
  Get.put(
    AssetsController(),
  );
}