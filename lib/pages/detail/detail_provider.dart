
import 'package:getx_internative/library/api_request.dart';
import 'package:getx_internative/models/detail.dart';

class DetailsProvider {
  void getDetailsList({
    Function() beforeSend,
    Function(List<Detail> posts) onSuccess,
    Function(dynamic error) onError,
  }) {
    ApiRequest(url: "https://jsonplaceholder.typicode.com/posts", data: null)
        .get(
            beforeSend: () => {if (beforeSend != null) beforeSend()},
            onSuccess: (data) {
              onSuccess((data as List)
                  .map((detailJson) => Detail.fromJson(detailJson))
                  .toList());
            },
            onError: (error) => {if (onError != null) onError(error)});
  }
}
