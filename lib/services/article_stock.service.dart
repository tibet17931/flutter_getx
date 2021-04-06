import 'package:mobdohome/models/article_stock.model.dart';
import 'package:dio/dio.dart';
import 'package:get/route_manager.dart';

class ApiStock {
  Dio dio;

  BaseOptions options = new BaseOptions(
    baseUrl: "https://api-article-stock-uat.dohome.technology",
    // connectTimeout: 5000,
    // receiveTimeout: 3000,
  );

  ApiStock() {
    dio = new Dio(options);
    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (RequestOptions options) async {
      return options;
    }, onResponse: (Response response) async {
      if (response.statusCode == 200) {
        // Get.defaultDialog(
        //     title: 'warning', middleText: 'warning warning warning');
        Get.snackbar('Home Title', 'warning warning warning');
      }
      // Do something with response data
      return response; // continue
    }, onError: (DioError e) async {
      // Do something with response error
      return e; //continue
    }));
  }

  Future<List<BufferStockModel>> callApi() async {
    print(this.dio.options.baseUrl);
    Response response = await this.dio.get('/v1/buffer-stock');
    final List<dynamic> body = response.data;
    List<BufferStockModel> data = List<BufferStockModel>.from(
        body.map((model) => BufferStockModel.fromJson(model)));
    return data;
  }
}
