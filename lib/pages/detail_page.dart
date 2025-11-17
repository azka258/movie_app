import 'package:flutter/material.dart';
import '../models/movie.dart';

class DetailPage extends StatelessWidget {
  final Movie movie;

  DetailPage({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(movie.title)),
      body: Column(
        children: [
          Image.asset(movie.image),
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(movie.description, style: TextStyle(fontSize: 16)),
          )
        ],
      ),
    );
  }
}
