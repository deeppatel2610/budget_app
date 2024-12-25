import 'package:adv_flutter_ch_3/api%20app/controller/api%20helper/api_helper.dart';
import 'package:get/get.dart';

import '../../model/placeholder_model.dart';

class HomeController extends GetxController {
  RxList<PlaceholderModel> apiList = <PlaceholderModel>[].obs;

  Future<RxList<PlaceholderModel>> apiCalling() async {
    List data = await ApiHelper.apiHelper.apiFetch();
    apiList.value = data
        .map(
          (e) => PlaceholderModel.fromModel(e),
        )
        .toList();
    return apiList;
  }
}
