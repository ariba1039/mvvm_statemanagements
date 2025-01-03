import 'package:flutter/material.dart';
import 'package:mvvm_statemanagements/constants/app_icons.dart';
import 'package:mvvm_statemanagements/widgets/movies/movies_widget.dart';


class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite Movies"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              AppIcons.delete,
              color: Colors.red,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const MoviesWidget(); //const MoviesWidget();
        },
      ),
    );
  }
}