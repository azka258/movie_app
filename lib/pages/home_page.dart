import 'package:flutter/material.dart';
import '../models/movie.dart';
import 'detail_page.dart';

class HomePage extends StatelessWidget {
  final List<Movie> movies = [
    Movie(
      title: "Avengers: Endgame",
      image: "assets/images/film1.jpg",
      description: "Para Avengers bersatu kembali untuk mengalahkan Thanos.",
    ),
    Movie(
      title: "Interstellar",
      image: "assets/images/film2.jpg",
      description:
          "Petualangan ruang angkasa mencari planet baru untuk kelangsungan hidup manusia.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Movie Catalog")),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Image.asset(
                movies[index].image,
                width: 60,
                height: 80,
                fit: BoxFit.cover,
              ),
              title: Text(movies[index].title),
              subtitle: Text(movies[index].description),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(movie: movies[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
