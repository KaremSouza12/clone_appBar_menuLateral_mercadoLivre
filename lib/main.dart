import 'package:clone_mercado_livre/widget/app_menu_drawer.dart';
import 'package:flutter/material.dart';

import 'widget/app_serach_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "App ML Clone",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(child: AppMenuDrawer()),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "Mercado Livre",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: const Color.fromRGBO(255, 241, 89, 1),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: AppsearchBar());
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: const Center(
        child: Text('Home mercado Livre'),
      ),
    );
  }
}
