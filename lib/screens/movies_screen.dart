import 'package:flutter/material.dart';
import 'package:mvvm_statemanagements/constants/app_icons.dart';
import 'package:mvvm_statemanagements/widgets/movies/movies_widget.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popular Movies'),
        actions: [
          IconButton(
            icon: const Icon(AppIcons.favoriteRounded, color: Colors.red),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon( AppIcons.darkMode, ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
        return 
      MoviesWidget();
      }),
      
    );
  }
}