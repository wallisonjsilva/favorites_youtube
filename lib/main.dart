import 'package:favoritos_youtube/blocs/favorites_bloc.dart';
import 'package:flutter/material.dart';

import 'package:bloc_pattern/bloc_pattern.dart';

import 'package:favoritos_youtube/blocs/videos_bloc.dart';
import 'package:favoritos_youtube/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      blocs: [
        Bloc((i) => VideosBloc()),
        Bloc((i) => FavoritesBloc()),
      ],
      child: MaterialApp(
        title: "FlutterTube",
        home: Home(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
