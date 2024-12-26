import 'package:flutter/material.dart';
import 'package:mvvm_statemanagements/constants/app_constants.dart';


class GenresListWidget extends StatefulWidget {
  const GenresListWidget({
    super.key,
    // required this.movieModel
  });

  @override
  State<GenresListWidget> createState() => _GenresListWidgetState();
}

class _GenresListWidgetState extends State<GenresListWidget> {
  // final MovieModel movieModel;
  @override
  Widget build(BuildContext context) {
   
    return Wrap(
    children: List.generate(AppConstants.listGenres.length, (index) {
      return chipWidget(
          genreName: AppConstants.listGenres[index], context: context);
    })
    );
  }

  Widget chipWidget(
      {required String genreName, required BuildContext context}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Theme.of(context).colorScheme.surface.withValues(
     
          ),
          border: Border.all(
            color: Theme.of(context).colorScheme.surface,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          child: Text(
            genreName,
            style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface, fontSize: 14),
          ),
        ),
      ),
    );
  }
}