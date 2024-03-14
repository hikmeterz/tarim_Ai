import 'package:get/get.dart';
import 'package:tarim_ai/Controllers/main_controller.dart';
import 'package:tarim_ai/Data/models/soil_analysis.dart';

class FieldController extends GetxController {
  var selectedFieldId = RxnString();
  var selectedFieldName = RxnString();
  var soilData = Rxn<SoilAnalysis>();

  void selectField(String? id, String? name, SoilAnalysis? data) {
    selectedFieldId.value = id;
    selectedFieldName.value = name;
    soilData.value = data;

    if (data != null && data.latitude != null && data.longitude != null) {
      Get.find<MainController>()
          .updateWeatherData(data.latitude!, data.longitude!);
    }
  }

  void clearSelection() {
    selectedFieldId.value = null;
    selectedFieldName.value = null;
    soilData.value = null;
  }
}





/*import 'package:get/get.dart';

class FieldController extends GetxController {
  var selectedFieldId = RxnString();
  var selectedFieldName = RxnString();

  void selectField(String? id, String? name) {
    selectedFieldId.value = id;
    selectedFieldName.value = name;
    update();
  }
} */