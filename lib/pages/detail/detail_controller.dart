
import 'package:get/get.dart';
import 'package:getx_internative/models/detail.dart';
import 'package:getx_internative/pages/detail/detail_provider.dart';

class DetailsController extends GetxController {
  List<Detail> detailsList = [];
  bool isLoading = true;
  @override
  void onInit() {
    DetailsProvider().getDetailsList(
      onSuccess: (detail) {
        detailsList.addAll(detail);
        isLoading = false;
        update();
      },
      onError: (error) {
        isLoading = false;
        update();
        print("Error");
      },
    );
    super.onInit();
  }
}