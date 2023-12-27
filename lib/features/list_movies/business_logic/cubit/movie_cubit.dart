import 'package:axis_task/features/list_movies/data/model/list_popular_model.dart';
import 'package:axis_task/features/list_movies/data/repo/popular_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'movie_state.dart';

class MovieCubit extends Cubit<MovieState> {
  final PopularRepo popularRepo;
  late List<PopularModel> mypopular;
  MovieCubit(this.popularRepo) : super(MovieInitial());
  List<PopularModel> fetchData() {
    popularRepo.getAllPopular().then((popular) {
      emit(PopularListloaded(popular));
      mypopular = popular;
    });
    return mypopular;
  }

  void getDetails(String name) {
    popularRepo.getDetails(name).then((details) {
      emit(DetailsLoaded(details));
    });
  }
}
