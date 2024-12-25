import 'package:flutter/material.dart';
import 'package:mvvm_statemanagements/constants/app_icons.dart';

class FavouriteBtn extends StatelessWidget {
  const FavouriteBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        AppIcons.favoriteOutlineRounded,
        color: Colors.red,
        size: 20,
      ),
      onPressed: () {

        // Todo: Implement favourite button
        
      },
    );
  }
}
