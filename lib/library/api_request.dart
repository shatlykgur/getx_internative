import 'package:dio/dio.dart';

class ApiRequest {
  final String url;
  final Map data;

  ApiRequest({this.url, this.data});

  Dio _dio() {
    return Dio(BaseOptions(headers: {
      "Authorization": "B ....",
    }));
  }

  void get({
    Function() beforeSend,
    Function(dynamic data) onSuccess,
    Function(dynamic error) onError,
  }) {
    _dio().get(this.url, queryParameters: this.data).then((value) {
      if (onSuccess != null) onSuccess(value.data);
    }).catchError((error) {
      if (onError != null) onError(error);
    });
  }
}
