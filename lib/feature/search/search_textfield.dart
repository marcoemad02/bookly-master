import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CusttomTextField extends StatelessWidget {
  const CusttomTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'search',
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.search_circle_fill),
        ),
      ),
    );
  }
}
