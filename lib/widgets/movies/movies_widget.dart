

import 'package:flutter/material.dart';
import 'package:mvvm_statemanagements/constants/app_constants.dart';
import 'package:mvvm_statemanagements/constants/app_icons.dart';
import 'package:mvvm_statemanagements/widgets/movies/favourite_btn.dart';
import 'package:mvvm_statemanagements/widgets/movies/genres_list_widget.dart';

import '../cached_image.dart';

class MoviesWidget extends StatelessWidget {
  const MoviesWidget({
    super.key,
    // required this.movieModel
  });

  // final MovieModel movieModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(12.0),
        child: InkWell(
          borderRadius: BorderRadius.circular(12.0),
          onTap: () {
            // getIt<NavigationService>().navigate(const MovieDetailsScreen());
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: IntrinsicWidth(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: const CachedImageWidget(
                      imgUrl: AppConstants.movieImage,
                      // "https://image.tmdb.org/t/p/w500/${movieModel.backdropPath}",
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Movie title',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        const Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 20,
                            ),
                            SizedBox(width: 5),
                            Text("0.8/10")
                            //"${movieModel.voteAverage.toStringAsFixed(1)}/10"),
                          ],
                        ),
                        const SizedBox(height: 10),
                       GenresListWidget(
                       
                          ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              AppIcons.watchLaterOutlined,
                              size: 20,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              'movieModel.releaseDate',
                              style: TextStyle(color: Colors.grey),
                            ),
                            const Spacer(),
                            const FavouriteBtn(
                                // movieModel: movieModel,
                                 )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}