import 'dart:html';

import 'package:flutter/material.dart';

class AppMenuDrawer extends StatelessWidget {
  const AppMenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 120,
          child: DrawerHeader(
            decoration:
                const BoxDecoration(color: Color.fromRGBO(255, 241, 89, 1)),
            child: Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    border: Border.all(
                      color: Colors.grey,
                      width: 4,
                    ),
                  ),
                  child: const CircleAvatar(
                    backgroundColor: Color.fromRGBO(255, 241, 89, 1),
                    foregroundColor: Colors.grey,
                    child: Icon(Icons.people),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Ola Karem',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text('Nível avançado'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        ItemMenu(
          icon: Icons.home,
          color: Colors.black,
          text: const Text('Home'),
          bedge: '',
        ),
        ItemMenu(
          icon: Icons.hotel,
          color: Colors.black,
          text: const Text('Página 02'),
          bedge: '',
        ),
        const Divider(
          color: Colors.grey,
        ),
        ItemMenu(
          icon: Icons.label_important,
          color: Colors.black,
          text: const Text('Página 03'),
          bedge: '',
        ),
        ItemMenu(
          icon: Icons.location_searching,
          color: Colors.black,
          text: const Text('Página 04'),
          bedge: '',
        ),
        ItemMenu(
          icon: Icons.abc_outlined,
          color: Colors.black,
          text: const Text('Página 04'),
          bedge: '',
        ),
        ItemMenu(
          icon: Icons.ac_unit_outlined,
          color: Colors.black,
          text: const Text('Página 04'),
          bedge: '>',
        ),
        ItemMenu(
          icon: Icons.access_alarm,
          color: Colors.black,
          text: const Text('Página 04'),
          bedge: '',
        ),
        const Divider(
          color: Colors.grey,
        ),
        ItemMenu(
          icon: Icons.location_searching,
          color: Colors.black,
          text: const Text('Sair'),
          bedge: '',
        ),
      ],
    );
  }
}

class ItemMenu extends StatelessWidget {
  ItemMenu({
    super.key,
    required this.icon,
    required this.color,
    required this.text,
    this.bedge,
  });

  final IconData icon;
  final Color color;
  final Text text;
  String? bedge = '';

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: color,
      ),
      title: text,
      trailing: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(100),
        ),
        child: bedge != ''
            ? const Padding(
                padding: EdgeInsets.fromLTRB(6, 2, 6, 2),
                child: Text(
                  '5',
                  style: TextStyle(
                    backgroundColor: Colors.black,
                    color: Colors.white,
                  ),
                ),
              )
            : const Text(''),
      ),
    );
  }
}
