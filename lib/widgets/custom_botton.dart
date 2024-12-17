import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomBotton extends StatelessWidget {
  CustomBotton({Key? key, required this.text}) : super(key: key);

  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      width: double.infinity,
      height: 40,
      child: Center(child: Text(text)),
    );
  }
}
