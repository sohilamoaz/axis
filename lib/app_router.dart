import 'package:axis_task/features/list_movies/data/api_services/popular_api.dart';
import 'package:axis_task/features/list_movies/data/model/list_popular_model.dart';
import 'package:flutter/material.dart';

import 'package:axis_task/constants/strings.dart';
import 'package:axis_task/features/list_movies/business_logic/cubit/movie_cubit.dart';
import 'package:axis_task/features/list_movies/data/repo/popular_repo.dart';
import 'package:axis_task/features/list_movies/presentation/screens/movie_details.dart';
import 'package:axis_task/features/list_movies/presentation/screens/movie_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  late PopularRepo popularRepo;
  late MovieCubit movieCubit;
  AppRouter() {
    popularRepo = PopularRepo(PopularApi());
    movieCubit = MovieCubit(popularRepo);
  }
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case movieScreenlist:
        return MaterialPageRoute(builder: (_) => BlocProvider(
          create: (context) => movieCubit,
          child: MovieListScreen(),
        ));
      case movieDetailsScreen:
       final popularModel = settings.arguments as PopularModel;
        return MaterialPageRoute(builder: (_) => BlocProvider(create: (context)=>movieCubit,
        child: MovieDetails(popularModel: popularModel,),
        ));
    }
  }
}
