// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class appiconwidget extends StatelessWidget {
  final IconData icon;
  final String text;

  const appiconwidget({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: Applayout.getheight(12),
          vertical: Applayout.getwidth(12)),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Applayout.getwidth(10))),
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Icon(
            icon,
            color: Color(0xFFBFC2DF),
          ),
          Gap(Applayout.getwidth(10)),
          Text(
            text,
            style: Styles.textStyle,
          ),
        ],
      ),
    );
  }
}
