// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyEndDrawer extends StatelessWidget {
  const MyEndDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircleAvatar(
              radius: 60,
              backgroundImage:
                  NetworkImage('https://picsum.photos/id/237/200/300'),
            ),
            SizedBox(height: 10),
            Text('Maksymchyk Maksym'),
          ],
        ),
      ),
    );
  }
}