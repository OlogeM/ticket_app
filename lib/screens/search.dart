// ignore_for_file: camel_case_types, prefer_const_constructors, unused_import, unnecessary_import, sort_child_properties_last, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:ticket_app/utils/app_layout.dart';
import 'package:ticket_app/utils/app_styles.dart';
import 'package:ticket_app/widgets/icon_text_widget.dart';

class searchscreen extends StatelessWidget {
  const searchscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getsize(context);
    return Scaffold(
      backgroundColor: Styles.bgcolor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: Applayout.getwidth(20),
            vertical: Applayout.getheight(20)),
        children: [
          Gap(Applayout.getheight(40)),
          Text(
            'What are\nYou Looking For?',
            style: Styles.headlinestyle.copyWith(fontSize: 35),
          ),
          Gap(Applayout.getheight(20)),
          FittedBox(
            child: Container(
              padding: EdgeInsets.all(3.5),
              child: Row(
                children: [
                  Container(
                    width: size.width * 0.44,
                    padding:
                        EdgeInsets.symmetric(vertical: Applayout.getheight(7)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(Applayout.getheight(50))),
                        color: Colors.white),
                    child: Center(child: Text('Airline Tickets')),
                  ),
                  Container(
                    width: size.width * 0.44,
                    padding:
                        EdgeInsets.symmetric(vertical: Applayout.getheight(7)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                            right: Radius.circular(Applayout.getheight(50))),
                        color: Colors.transparent),
                    child: Center(child: Text('Hotels')),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    Applayout.getheight(50),
                  ),
                  color: Color(0xFFF4F6FD)),
            ),
          ),
          Gap(Applayout.getheight(25)),
          appiconwidget(icon: Icons.flight_takeoff_rounded, text: 'Depature'),
          Gap(Applayout.getheight(25)),
          appiconwidget(icon: Icons.flight_land_rounded, text: 'Arrival'),
          Gap(Applayout.getheight(25)),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: Applayout.getheight(18),
                vertical: Applayout.getwidth(18)),
            decoration: BoxDecoration(
                color: Colors.blue.shade600,
                borderRadius: BorderRadius.circular(Applayout.getwidth(10))),
            child: Center(
              child: Text(
                'Find Ticket',
                style: Styles.textStyle.copyWith(color: Colors.white),
              ),
            ),
          ),
          Gap(Applayout.getheight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Upcoming Flights',
                style: Styles.headlinestyle2,
              ),
              InkWell(
                onTap: () {},
                child: Text('View all',
                    style:
                        Styles.textStyle.copyWith(color: Styles.primarycolor)),
              )
            ],
          ),
          Gap(Applayout.getheight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: Applayout.getheight(400),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(
                    horizontal: Applayout.getheight(12),
                    vertical: Applayout.getwidth(12)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Applayout.getheight(20)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: Applayout.getheight(190),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Applayout.getheight(12)),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/sit.jpg')),
                      ),
                    ),
                    Gap(Applayout.getheight(28)),
                    Text(
                      '20% on all early bookings for this flight. Dont miss out',
                      style: Styles.headlinestyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: Applayout.getheight(194),
                        decoration: BoxDecoration(
                          color: Color(0xFF3AB8B8),
                          borderRadius:
                              BorderRadius.circular(Applayout.getheight(18)),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: Applayout.getheight(15),
                            vertical: Applayout.getwidth(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount\nfor survey',
                              style: Styles.headlinestyle2.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Gap(Applayout.getheight(10)),
                            Text(
                              'Take the survey about our services and get a discount',
                              style: Styles.headlinestyle3.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(Applayout.getheight(30)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 18, color: Color(0xFF189999)),
                              color: Colors.transparent),
                        ),
                      )
                    ],
                  ),
                  Gap(Applayout.getheight(10)),
                  Container(
                    width: size.width * 0.44,
                    height: Applayout.getheight(194),
                    decoration: BoxDecoration(
                      color: Color(0xFFF37B67),
                      borderRadius:
                          BorderRadius.circular(Applayout.getheight(18)),
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal: Applayout.getheight(15),
                        vertical: Applayout.getwidth(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            'Take Love ',
                            style: Styles.headlinestyle2.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Gap(Applayout.getheight(5)),
                        RichText(
                          text: TextSpan(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              TextSpan(
                                text: '😉',
                                style: TextStyle(fontSize: 35),
                              ),
                              TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 47),
                              ),
                              TextSpan(
                                text: '😏',
                                style: TextStyle(fontSize: 35),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
