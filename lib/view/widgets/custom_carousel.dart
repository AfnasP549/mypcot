import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:mypcot_infotech/view/widgets/container_one.dart';
import 'package:mypcot_infotech/view/widgets/container_three.dart';

class CustomCarousel extends StatelessWidget {
  final List<Widget> containers = [
    ContainerOne(),
    ContainerOne(),
    ContainerThree()
  ];

  CustomCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0), // outer margin
      child: CarouselSlider(
        options: CarouselOptions(
          height: 260.0,
          autoPlay: false,
          enlargeCenterPage: false,
          enableInfiniteScroll: false,
          viewportFraction: 1.0, // one full container at a time
        ),
        items: containers.map((widget) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0), // spacing between containers
            child: widget,
          );
        }).toList(),
      ),
    );
  }
}
