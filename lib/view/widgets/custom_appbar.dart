import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mypcot_infotech/core/constants/appcolor.dart';
import 'package:mypcot_infotech/view/widgets/circular_icon_container.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    double horizontalPadding;
    double verticalPadding;
    double iconspacing;
    //very small screen
    if (screenWidth < 360) {
      horizontalPadding = 6.0;
      verticalPadding = 6.0;
      iconspacing = 16.0;
    } else if (screenWidth < 600) {
      //very larger phone
      horizontalPadding = 16.0;
      verticalPadding = 16.0;
      iconspacing = 36.0;
    } else if (screenWidth < 900) {
      // Medium screens (tablets, small desktop windows)
      horizontalPadding = 16.0;
      verticalPadding = 16.0;
      iconspacing = 46.0;
    } else {
      // Large screens (desktops, large tablets)
      horizontalPadding = 24.0;
      verticalPadding = 24.0;
      iconspacing = 46.0;
    }

    final double iconsize =
        screenWidth < 600
            ? 36
            : screenWidth < 900
            ? 40
            : 48;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: verticalPadding,
      ),
      child: AppBar(
        automaticallyImplyLeading: false,
        title: CircularIconContainer(
          child: ClipRRect(
            child: SvgPicture.asset(
              'assets/≡ƒôì Leading Icon l Use High Emphasis.svg',
              width: iconsize,
              height: iconsize,
            ),
          ),
        ),

        actions: [
          CircularIconContainer(
            child: ClipRRect(
              child: SvgPicture.asset(
                'assets/Group 916.svg',
                width: iconsize,
                height: iconsize,
              ),
            ),
          ),

          SizedBox(width: iconspacing),
          CircularIconContainer(
            child: Stack(
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  child: SvgPicture.asset(
                    'assets/≡ƒôìTrailing icon 1.svg',
                    width: iconsize,
                    height: iconsize,
                  ),
                ),
                Positioned(
                  top: -.1,
                  right: 0,
                  child: _buildNotificationBadge(),
                )
              ],
            ),
          ),

          SizedBox(width: iconspacing),
          CircularIconContainer(
            child: ClipRRect(
              child: Image.asset(
                'assets/Vector.png',
                width: iconsize,
                height: iconsize,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kTextTabBarHeight + 26);
}

Widget _buildNotificationBadge() {
  return Container(
    padding: const EdgeInsets.all(2.0),
    decoration: BoxDecoration(color: Appcolor.primaryBadge, shape: BoxShape.circle),
    constraints: BoxConstraints(minHeight: 16, minWidth: 16),
    child: Center(
      child: Text(
        '2',
        style: TextStyle(
          color: Appcolor.secondaryFont,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
