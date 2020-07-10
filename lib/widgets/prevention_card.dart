import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant.dart';

class PreventionCard extends StatelessWidget {
  final String title;
  final String imageSrc;
  const PreventionCard({
    Key key,
    this.title,
    this.imageSrc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imageSrc),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodyText2
              .copyWith(color: kPrimaryColor),
        )
      ],
    );
  }
}
