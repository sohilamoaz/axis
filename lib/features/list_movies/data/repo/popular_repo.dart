import 'package:axis_task/features/list_movies/data/model/list_popular_model.dart';

import '../api_services/popular_api.dart';

class PopularRepo {
  final PopularApi popularApi;

  PopularRepo(this.popularApi);
  Future<List<PopularModel>> getAllPopular() async {
    final popular = await popularApi.getAllPopular();
    return popular.map((popularr) => PopularModel.fromJson(popularr as Map<String, dynamic>)).toList();
  }

  Future<List<PopularModel>> getDetails(String name) async {
    final details = await popularApi.getDetails(name);
    return details.map((detailss) => PopularModel.fromJson(detailss)).toList();
  }
}
