part of 'movie_cubit.dart';

abstract class MovieState extends Equatable {
  const MovieState();

  @override
  List<Object> get props => [];
}

class MovieInitial extends MovieState {}

class PopularListloaded extends MovieState {
  final List<PopularModel> popularrr;

  PopularListloaded(this.popularrr);
}

class DetailsLoaded extends MovieState {
  final List<PopularModel> details;

  DetailsLoaded(this.details);
}
