import 'package:axis_task/features/list_movies/data/model/list_popular_model.dart';
import 'package:flutter/material.dart';

class MovieDetails extends StatelessWidget {
  final PopularModel popularModel;
  const MovieDetails({
    Key? key,
    required this.popularModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Widget buildAppBar() {
    //   return SliverAppBar(
    //     expandedHeight: 600,
    //     pinned: true,
    //     stretch: true,
    //     backgroundColor: AppColors.greyy,
    //     flexibleSpace: FlexibleSpaceBar(
    //       centerTitle: true,
    //       title: Text(popularModel.results,
    //                   style: TextStyle(color: Colors.white),
    //       ),
    //       background: Hero(
    //         tag: popularModel.results.,
    //         child: Image.network(
    //           popularModel.results,
    //           fit: BoxFit.cover,
    //         ),
    //       ),
    //     ),
    //   );
    // }
    // Widget popularInfo(String title, String value) {
    // return RichText(
    //   maxLines: 1,
    //   overflow: TextOverflow.ellipsis,
    //   text: TextSpan(
    //     children: [
    //       TextSpan(
    //         text: title,
    //         style: TextStyle(
    //           color: Colors.white,
    //           fontWeight: FontWeight.bold,
    //           fontSize: 18,
    //         ),
    //       ),
    //         TextSpan(
    //           text: value,
    //           style: TextStyle(
    //             color: Colors.white,
    //             fontSize: 16,
    //           ),
    //         ),
    //       ],
    //     ),
    //   );

    // }
    // Widget customeDivider(double endIndent) {
    //   return Divider(
    //     height: 30,
    //     endIndent: endIndent,
    //     color: AppColors.darkblue,
    //     thickness: 2,
    //   );
    // }
    // Widget checkIfdetailLoaded(MovieState state) {
    //   if (state is DetailsLoaded) {
    //     return placeholderRandom(state);
    //   } else {
    //     return Center(child: CircularProgressIndicator(color: AppColors.darkblue,));
    //   }

    // }
    //   Widget placeholderRandom(state) {
    //   var quotes = (state).quotes;
    //   if (quotes.length != 0) {
    //     int randomQuoteIndex = Random().nextInt(quotes.length - 1);
    //     return Center(
    //       child: DefaultTextStyle(
    //         textAlign: TextAlign.center,
    //         style: TextStyle(
    //           fontSize: 20,
    //           color: Colors.white,
    //           shadows: [
    //             Shadow(
    //               blurRadius: 7,
    //               color: Colors.white,
    //               offset: Offset(0, 0),
    //             )
    //           ],
    //         ),
    //         child: AnimatedTextKit(
    //           repeatForever: true,
    //           animatedTexts: [
    //             FlickerAnimatedText(quotes[randomQuoteIndex].quote),
    //           ],
    //         ),
    //       ),
    //     );
    //   } else {
    //     return Container();
    //   }
    // }

    return Scaffold(
      body: Column(
        children: [],
      ),
    );
  }
}
