import 'package:axis_task/constants/strings.dart';
import 'package:axis_task/features/list_movies/data/model/list_popular_model.dart';
import 'package:dio/dio.dart';

class PopularApi {
  late Dio dio;
  //late PopularModel popularModel;
  PopularApi() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: Duration(seconds: 20),
      receiveTimeout: Duration(seconds: 20),
      headers: headers,
    );
    dio = Dio(options);
  }
  Future<List<PopularModel>> getAllPopular() async {
    try {
      Response response = await dio.get(
        'person/popular',
      );
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

  Future<List<dynamic>> getDetails(String name) async {
    try {
      Response response =
          await dio.get('person/popular', queryParameters: {'name': name});
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
