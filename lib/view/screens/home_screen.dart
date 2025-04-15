import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mypcot_infotech/view/widgets/calender_body.dart';
import 'package:mypcot_infotech/view/widgets/circular_icon_container.dart';
import 'package:mypcot_infotech/view/widgets/custom_appbar.dart';
import 'package:mypcot_infotech/view/widgets/custom_carousel.dart';
import 'package:mypcot_infotech/view/widgets/calender_header.dart';
import 'package:mypcot_infotech/view/widgets/new_order_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppbar(),
            const SizedBox(height: 20),
            _welcome(context),
            const SizedBox(height: 40),
            CustomCarousel(),
            const SizedBox(height: 20),
            CalenderHeader(),
            const SizedBox(height: 20),
            CalenderBody(),
            const SizedBox(height: 20),
            NewOrderContainer(),
          ],
        ),
      ),
    );
  }
}

Widget _welcome(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        children: [
          Text(
            'Welcome, Mypcot !!',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            'here is your dashboard.....',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
      CircularIconContainer(
        size: 44,
        child: Center(
          child: SvgPicture.asset(
            'assets/Group 918.svg',
            height: 24,
            width: 24,
          ),
        ),
      ),
    ],
  );
}
