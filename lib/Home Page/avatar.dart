import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String image;
  const Avatar({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      child: Image.asset(
          'lib/assets/${image == 'Female' ? 'female' : 'male'}_avatar.png'),
    );
  }
}
