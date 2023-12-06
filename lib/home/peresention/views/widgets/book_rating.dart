import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../core/utils/styles.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget(
      {Key? key, this.mainAxisAlignment = MainAxisAlignment.start})
      : super(key: key);

  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellowAccent,
          size: 18,
        ),
        SizedBox(
          width: 7,
        ),
        Text('4,6', style: Styles.textStyle16),
        SizedBox(
          width: 5,
        ),
        Text(
          '(6452)',
          style: Styles.textStyle14,
        ),
        SizedBox(
          width: 18,
        )
      ],
    );
  }
}
