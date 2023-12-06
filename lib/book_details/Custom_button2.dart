import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton2 extends StatelessWidget {
  const CustomButton2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ))),
          child: Text(
            'Free Privew',
            style: Styles.textStyle18.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
          )),
    );
  }
}
