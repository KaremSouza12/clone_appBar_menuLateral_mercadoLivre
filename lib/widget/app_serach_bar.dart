import 'package:flutter/material.dart';

class AppsearchBar extends SearchDelegate<String> {
  final products = [
    'TV',
    'Macbook',
    'Geladeira',
    'iPhone',
    'Teclado',
    'iPad',
    'Mouse',
    'Copo'
  ];

  final recentSerachs = [
    'Mackbook',
    'iPhone',
    'iPad',
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
            close(context, query);
          },
          icon: const Icon(
            Icons.cancel,
          ))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          query = "";
          close(context, query);
        },
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text('Resultado da pesquisa: $query');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final results = query.isEmpty ? recentSerachs : products;

    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.youtube_searched_for),
          title: Text(results[index]),
          onTap: () {
            print(results[index]);
          },
        );
      },
    );
  }
}
