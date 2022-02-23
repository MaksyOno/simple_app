// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Column(
              children: const [
                DrawerHeader(
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                        'https://picsum.photos/200/300?grayscale'),
                  ),
                ),
                ListTile(
                  title: Text('Home'),
                  leading: Icon(Icons.home),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  title: Text('Profile'),
                  leading: Icon(Icons.portrait),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  title: Text('Image'),
                  leading: Icon(Icons.image),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      'Выход',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      'Регистрация',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}