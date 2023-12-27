import 'package:axis_task/constants/app_colors.dart';
import 'package:axis_task/features/list_movies/data/model/list_popular_model.dart';
import 'package:flutter/material.dart';

class PopularWidget extends StatelessWidget {
  //final PopularModel popularModel;
  final Results results;
  const PopularWidget({super.key, required this.results,});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsetsDirectional.fromSTEB( 8, 8, 8, 8),
      padding: EdgeInsetsDirectional.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8)

      ),
      child: GridTile(
        child: Container(
        color:AppColors.greyy,
        child: results.profilePath!.isNotEmpty?
       FadeInImage.assetNetwork(
         width: double.infinity,
          height: double.infinity,
          placeholder: 'assets/images/giphy.gif',
          fit: BoxFit.cover, image:  results.profilePath.toString(),):Image.asset('assets/images/giphy.gif'),
     
      ),),


    );
  }
}
