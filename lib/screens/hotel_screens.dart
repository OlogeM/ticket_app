// ignore_for_file: unused_import, unnecessary_import, implementation_imports, must_be_immutable

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:ticket_app/utils/app_layout.dart';
import 'package:ticket_app/utils/app_styles.dart';

class Hotelscreen extends StatelessWidget {
  Map<String, dynamic> hotel;

  Hotelscreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getsize(context);
    return Container(
      width: size.width * 0.6,
      height: Applayout.getheight(350),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 15),
      decoration: BoxDecoration(
          color: Styles.primarycolor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200, blurRadius: 20, spreadRadius: 5),
          ]),
      child: Column(
        children: [
          Container(
            height: Applayout.getheight(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primarycolor,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/${hotel['image']}")),
            ),
          ),
          const Gap(10),
          Text(hotel['place'],
              style: Styles.headlinestyle2.copyWith(color: Styles.kakicolor)),
          const Gap(5),
          Text(hotel['destination'],
              style: Styles.headlinestyle3.copyWith(color: Colors.white)),
          const Gap(8),
          Text('\$${hotel['price']}/night',
              style: Styles.headlinestyle.copyWith(color: Styles.kakicolor)),
        ],
      ),
    );
  }
}
