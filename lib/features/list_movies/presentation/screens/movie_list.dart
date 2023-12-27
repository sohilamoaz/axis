import 'package:axis_task/constants/app_colors.dart';
import 'package:axis_task/features/list_movies/business_logic/cubit/movie_cubit.dart';
import 'package:axis_task/features/list_movies/data/model/list_popular_model.dart';
import 'package:axis_task/features/list_movies/presentation/widgets/popular_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MovieListScreen extends StatefulWidget {
  const MovieListScreen({super.key});

  @override
  State<MovieListScreen> createState() => _MovieListScreenState();
}

class _MovieListScreenState extends State<MovieListScreen> {
  late PopularModel popularModel;
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    BlocProvider.of<MovieCubit>(context).fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.darkblue,
          title: Text(
            'Popular People',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        body: buildblocwidget());
  }

  Widget buildblocwidget() {
    return BlocBuilder<MovieCubit, MovieState>(
      builder: (BuildContext context, state) {
        if (state is PopularListloaded) {
          popularModel.results = (state).popularrr.cast<Results>();
          return loadedgridview();
        } else {
          return Center(
              child: CircularProgressIndicator(
            color: AppColors.darkblue,
          ));
        }
      },
    );
  }

  Widget loadedgridview() {
    return SingleChildScrollView(
      child: Container(
        color: AppColors.greyy,
        child: Column(
          children: [buildpopularList()],
        ),
      ),
    );
  }

  Widget buildpopularList() {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 3,
            crossAxisSpacing: 1,
            mainAxisSpacing: 1),
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: popularModel.results?.length,
        itemBuilder: (context, index) {
          return PopularWidget(
            results: popularModel.results![index],
          );
        });
  }
}
