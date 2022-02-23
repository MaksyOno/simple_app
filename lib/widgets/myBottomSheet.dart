// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyBottomSheet extends StatelessWidget {
  const MyBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
      child: Column(children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Icon(Icons.credit_card),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text('Сумма'),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(right: 15),
                child: Text('200 руб.'),
              ),
            ]),
        const SizedBox(
          height: 35,
        ),
        OutlinedButton(
          onPressed: () => Navigator.pop(context),
          child: const Text(
            'Оплатить',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ]),
    );
  }
}