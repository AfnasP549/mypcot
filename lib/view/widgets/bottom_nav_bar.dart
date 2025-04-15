import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mypcot_infotech/core/constants/appcolor.dart';
import 'package:mypcot_infotech/view/screens/home_screen.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  final int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Appcolor.primaryFloating,
        // elevation: 8,
        shape: CircleBorder(),
        child: const Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        notchMargin: 5,
        shape: const CircularNotchedRectangle(),
        color: Appcolor.primaryNav,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Left side
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: SizedBox(
                    height: 60,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/Group 910.svg', height: 24),
                        const SizedBox(height: 2),
                        const Text('Home', style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 24),
                SizedBox(
                  height: 60,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/Group 912.svg', height: 24),
                      const SizedBox(height: 2),
                      const Text('CUstomers', style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ),
              ],
            ),

            // Right side
            Row(
              children: [
                SizedBox(
                  height: 60,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/Group 913.svg', height: 24),
                      const SizedBox(height: 2),
                      const Text('Khata', style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ),
                const SizedBox(width: 24),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: SizedBox(
                    height: 60,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/Group 914.svg', height: 24),
                        const SizedBox(height: 2),
                        const Text('Orders', style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
