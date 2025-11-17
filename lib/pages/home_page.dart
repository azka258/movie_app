import 'package:flutter/material.dart';
import '../models/movie.dart';
import 'detail_page.dart';

class HomePage extends StatelessWidget {
 final List<Movie> movies = [
  Movie(
    title: "Avengers: Endgame",
    image: "https://m.media-amazon.com/images/I/81ExhpBEbHL._AC_UF1000,1000_QL80_.jpg",
    description: "Para Avengers bersatu kembali untuk mengalahkan Thanos.",
  ),
  Movie(
    title: "Interstellar",
    image: "https://m.media-amazon.com/images/I/91kFYg4fX3L._AC_UF1000,1000_QL80_.jpg",
    description: "Petualangan ruang angkasa mencari planet baru untuk kelangsungan hidup manusia.",
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
              leading: Image.network(movies[index].image),
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
